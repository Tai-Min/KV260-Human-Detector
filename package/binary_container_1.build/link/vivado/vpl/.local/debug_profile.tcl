package require math::bignum

namespace eval debug_profile {

  ########################################
  # Static variables
  ########################################
  
  # Monitors in some HW platforms: base addresses, properties, & names
  variable xdma_monitor_base 0x00270000
  variable p2p_monitor_base  0x00280000
  variable kdma_monitor_base 0x00290000
  variable xdma_monitor_base_samsung 0x00240000
  variable p2p_monitor_base_samsung  0x00250000
  # NOTE: properties = (64b << 3) + (host << 2) + (counters << 1) + trace
  variable shell_monitor_prop 14
  variable xdma_monitor_name "shell/Host to Device"
  variable p2p_monitor_name "shell/Peer to Peer"
  variable kdma_monitor_name "shell/Memory to Memory"


  # Source other files
  # NOTE: when running SDx/Scout, local_dir is set in ipirun.tcl
  variable source_dir ""
  if {[info exists local_dir]} {
    set source_dir [file normalize $local_dir]
    source -notrace "$local_dir/debug_profile_util.tcl"
    source -notrace "$local_dir/debug_hw.tcl"
    source -notrace "$local_dir/profile.tcl"
  }

  ##############################################################
  # The functions in this file are the main entry points into 
  #  debug/profile functionality.  These should be called
  #  from ocl_util.tcl and init_dr_bd.
  ##############################################################
 
  ##############################################################
  # add_debug_profile_support
  #   Description:
  #     Write script to insert all requested debug/profiling circuitry 
  #     into dynamic BD
  #
  #     NOTE: ILA insertion is currently not included in Tcl script.
  #     It is inserted when add_debug_hw is called (as requested).
  #
  #   Arguments:
  #     hw_platform_info    HW platform dict
  #     config_info         Configuration dict
  #     debug_profile_info  Debug/profile dict
  #   Return value:
  #     Name of Tcl script to run to insert debug/profiling
  ##############################################################
  proc add_debug_profile_support {hw_platform_info config_info debug_profile_info} {
    variable ::debug_profile::is_hw_emu
    set is_hw_emu         [dict_get_default $config_info is_hw_emu false]
    set hw_platform_vbnv  [dict_get_default $hw_platform_info hw_platform_vbnv ""]
    set output_dir        [dict_get_default $config_info output_dir "."]
    set vivado_output_dir [dict_get_default $config_info vivado_output_dir "."]
    set vpl_output_dir    [dict_get_default $config_info vpl_output_dir "."]
    set is_debug_enabled  [dict_get_default $config_info is_debug_enabled "false"]
    if {$is_hw_emu} {
      set hw_emu_profiling   [dict get $config_info hw_emu_profiling]
      if {$hw_emu_profiling=="false"} {   
        return
      }
    }

    # Insert ILAs (HW only)
    if {!$is_hw_emu} {
      add_debug_hw    $hw_platform_info $config_info $debug_profile_info
    } 

    # Collect global information used by both HW and HW Emu flows
    if {[fill_global_information $hw_platform_info $config_info $debug_profile_info]} {
      # Do we continue? Check for AIE trace streams to error or not
      set aieStreams [get_bd_intf_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_AIE_TRACE == true}]
      #puts "aieStreams = $aieStreams"
      if {$aieStreams == {}} {
        ocl_util::error2file $output_dir "Instantiation of debug/profiling did not work. Please talk to your platform developer and request decoration or metadata be added."  
        return ""
      }
    }

    # For Emulation enable all IP insertion
    if {$is_hw_emu} {
      set hw_emu_profile_mode user
      set hw_emu_user_profile [dict get $debug_profile_info profile ]
      set emu_profile_info [ emulation_default_profile_info $hw_emu_user_profile $is_debug_enabled ]
      dict set debug_profile_info profile $emu_profile_info
    }
    
    set filename "${vivado_output_dir}/insert_debug_profiling.tcl"
    set fp [open $filename w]
   
    #puts "$debug_profile_info"

    # Insert all debug/profile monitors
    add_debug_profile $fp $hw_platform_info $config_info $debug_profile_info
    
    # Assign addresses and write debug_ip_layout
    puts $fp "\n# Write debug_ip_layout"
    #puts $fp "assign_bd_address"
    puts $fp "debug_profile::write_debug_ip_layout $is_hw_emu \"$hw_platform_vbnv\" \"$vpl_output_dir\""
    close $fp
    return $filename
  }; # end add_debug_profile_support

  ##############################################################
  # has_kdma_monitor
  #   Description:
  #     Check if this HW platform has a KDMA monitor in the shell
  #   Arguments:
  #     is_hw_emu         If HW emulation: true; if not: false
  #     hw_platform_vbnv  Name of HW platform (in VBNV format, separated by ':')
  ##############################################################
  proc has_kdma_monitor { is_hw_emu hw_platform_vbnv } {
    if {$is_hw_emu} {return false}
    
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.2"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.3"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:vcu1525:xdma:201830.2"]} {return true}
    return false
  }; # end has_kdma_monitor
  
  ##############################################################
  # has_xdma_monitor
  #   Description:
  #     Check if this HW platform has an XDMA monitor in the shell
  #   Arguments:
  #     is_hw_emu         If HW emulation: true; if not: false
  #     hw_platform_vbnv  Name of HW platform (in VBNV format, separated by ':')
  ##############################################################
  proc has_xdma_monitor { is_hw_emu hw_platform_vbnv } {
    if {$is_hw_emu} {return false}
    
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.2"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.3"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:u250:xdma:201830.2"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:vcu1525:xdma:201830.2"]} {return true}
    if {[string first "u280:xdma:201920" $hw_platform_vbnv] >= 0} {return true}
    if {[string first "samsung" $hw_platform_vbnv] >= 0} {return true}
    return false
  }; # end has_xdma_monitor
  
  ##############################################################
  # has_p2p_monitor
  #   Description:
  #     Check if this HW platform has a peer-to-peer monitor in the shell
  #   Arguments:
  #     is_hw_emu          If HW emulation: true; if not: false
  #     hw_platform_vbnv   Name of HW platform (in VBNV format, separated by ':')
  ##############################################################
  proc has_p2p_monitor { is_hw_emu hw_platform_vbnv } {
    if {$is_hw_emu} {return false}
    
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.2"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:u200:xdma:201830.3"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:u250:xdma:201830.2"]} {return true}
    if {[string equal $hw_platform_vbnv "xilinx:vcu1525:xdma:201830.2"]} {return true}
    if {[string first "u280:xdma:201920" $hw_platform_vbnv] >= 0} {return true}
    if {[string first "samsung" $hw_platform_vbnv] >= 0} {return true}
    return false
  }; # end has_p2p_monitor

  ##############################################################
  # get_debug_ip_type
  #   Description:
  #     Get debug IP type from BD cell
  #   Arguments:
  #     bd_cell        Name of BD cell
  ##############################################################
  proc get_debug_ip_type { bd_cell } {
    set vlnv [get_property -quiet VLNV $bd_cell]
    set vlnv [string tolower $vlnv]
    
    if {[string first "axi_protocol_checker" $vlnv] >= 0} {
      return "LAPC"
    } elseif {[string first "axis_protocol_checker" $vlnv] >= 0} {
      return "AXI_STREAM_PROTOCOL_CHECKER"
    } elseif {[string first "ila" $vlnv] >= 0} {
      return "ILA"
    } elseif {([string first "axi_master" $vlnv] >= 0)
              || ([string first "axi_interface" $vlnv] >= 0)
              || ([string first "axi_perf" $vlnv] >= 0)
              || ([string first "sim_aximm_perf" $vlnv] >= 0)} {
      return "AXI_MM_MONITOR"
    } elseif {([string first "stream" $vlnv] >= 0)
               || ([string first "sim_axis_perf" $vlnv] >= 0)} {
      return "AXI_STREAM_MONITOR"
    } elseif {[string first "accel" $vlnv] >= 0} {
      return "ACCEL_MONITOR"
    } elseif {([string first "trace_integrator" $vlnv] >= 0)
              || ([string first "trace_hub" $vlnv] >= 0)
              || ([string first "emulation_profiler" $vlnv] >= 0)} {
      return "AXI_TRACE_FUNNEL"
    } elseif {[string first "axi_fifo_mm_s" $vlnv] >= 0} {
      return "AXI_MONITOR_FIFO_FULL"
    } elseif {([string first "trace_dma" $vlnv] >= 0)
              || ([string first "trace_s2mm" $vlnv] >= 0)} {
      return "TRACE_S2MM"
    } elseif {[string first "axi_dma" $vlnv] >= 0} {
      return "AXI_DMA"
    } elseif {[string first "axi_noc" $vlnv] >= 0} {
      return "AXI_NOC"
    }

    return "NA"
  }; # end get_debug_ip_type

  ################################################################################
  # get_version
  #   Description:
  #     Returns list of [major minor] versions of a given cell
  #   Arguments:
  #     cellName      name of cell
  #     major         major version
  #     minor         minor version
  ################################################################################ 
  proc get_version { cellName } {
    set cellObj [get_bd_cells -quiet $cellName]
    if {$cellObj == {}} {
      set cellObj [get_bd_cells -hier -quiet $cellName]
      if {$cellObj == {}} {
        return [list 1 0]
      }
    }
    
    set vlnv [split [get_property VLNV $cellObj] ":"]
    return [split [lindex $vlnv 3] "."]
  }; # end get_version
  
  ################################################################################
  # write_debug_ip_entry
  #   Description:
  #     Write entry to debug IP layout file
  #   Arguments:
  #     instance      name of monitor instance
  #     fp            file pointer to write to
  #     type          type of monitor IP
  #     index         index of IP
  #     properties    core-specific properties (default is 0)
  #     base_address  base address of IP
  #     name          name string used in metadata
  #     last          true: this is the last entry; false: this is not last
  ################################################################################
  proc write_debug_ip_entry { instance fp type index properties base_address name last } {
    set version [get_version $instance]
    
    puts $fp "      \{"
    puts $fp "        \"m_type\": \"$type\","
    puts $fp "        \"m_index\": \"$index\","
    puts $fp "        \"m_major\": \"[lindex $version 0]\","
    puts $fp "        \"m_minor\": \"[lindex $version 1]\","
    puts $fp "        \"m_properties\": \"$properties\","
    puts $fp "        \"m_base_address\": \"$base_address\","
    puts $fp "        \"m_name\": \"$name\""
    if { $last } {
      puts $fp "      \}"
    } else {
      puts $fp "      \},"
    }
  }; # end write_debug_ip_entry

  ##############################################################
  # write_debug_ip_layout
  #   Description:
  #     Write out debug_ip_layout.rtd file
  #   Arguments:
  #     is_hw_emu        true: target is HW emulation; false: not HW emulation
  #     config_info      configuration dict
  #     output_dir       output directory
  ##############################################################
  proc write_debug_ip_layout { {is_hw_emu false} {hw_platform_vbnv "none"} {vpl_output_dir "."} } {
    # Note: there is already an open bd design
    
    variable xdma_monitor_base
    variable p2p_monitor_base
    variable kdma_monitor_base
    variable xdma_monitor_base_samsung
    variable p2p_monitor_base_samsung
    variable shell_monitor_prop
    variable xdma_monitor_name
    variable p2p_monitor_name
    variable kdma_monitor_name
  
    set DUMMY_ADDRESS 0xdeadbeef

    # Get list of tagged IP
    set debug_ip_list [get_bd_cells -quiet -hier -filter {HDL_ATTRIBUTE.DPA_IP == true}]
    set num_entries [llength $debug_ip_list]
    
    # Add additional entries for special cases
    foreach debug_ip $debug_ip_list {
      set type [get_debug_ip_type $debug_ip]
      if {$type == "AXI_MONITOR_FIFO_FULL"} {
        incr num_entries
      }

      #Add two additional enteries for emulation 
      if {($type == "AXI_TRACE_FUNNEL") && $is_hw_emu} {
        incr num_entries
        incr num_entries
      }
      
      if {($type == "TRACE_S2MM") && ([string first "aie" $debug_ip] >= 0)} {
        incr num_entries
      }
    }

    # Identify NoC slaves so we can capture counters 
    set nocs [get_bd_cells -quiet -filter {VLNV=~"*axi_noc*"}]
    set nocPins [get_bd_intf_pins -quiet -of_objects $nocs -filter {(MODE == Slave) && (CONFIG.PROTOCOL == AXI4)}]
    incr num_entries [llength $nocPins]

    # Include monitors in certain platforms
    set has_kdma  [has_kdma_monitor $is_hw_emu $hw_platform_vbnv]
    set has_xdma  [has_xdma_monitor $is_hw_emu $hw_platform_vbnv]
    set has_p2p   [has_p2p_monitor  $is_hw_emu $hw_platform_vbnv]
    
    set shell_ip 0
    if {$has_kdma} {incr shell_ip}
    if {$has_xdma} {incr shell_ip}
    if {$has_p2p}  {incr shell_ip}
    set total_ip [expr $num_entries + $shell_ip]
    
    # No file written if no debug IP to report
    if {$total_ip == 0} {
      return
    }
    
    set major_version 1
    set minor_version 0
    set patch 0
    
    set outfile "${vpl_output_dir}/debug_ip_layout.rtd"
    puts "INFO: Writing $outfile..."
    set fp [open $outfile w]

    # write header
    puts $fp "\{"
    puts $fp "  \"schema_version\": \{"
    puts $fp "    \"major\": \"${major_version}\","
    puts $fp "    \"minor\": \"${minor_version}\","
    puts $fp "    \"patch\": \"${patch}\""
    puts $fp "  \},"
    puts $fp "  \"debug_ip_layout\": \{"
    puts $fp "    \"m_count\": \"${total_ip}\","
    puts $fp "    \"m_debug_ip_data\": \["

    set i 1
    set addr_segs [get_bd_addr_segs -hier]
    
    if {$num_entries > 0} {
      foreach debug_ip $debug_ip_list {
        # Get properties
        set type [get_debug_ip_type $debug_ip]
        set properties [get_property -quiet HDL_ATTRIBUTE.DPA_IP_PROPERTIES $debug_ip]
        set name [string trimleft [get_property -quiet HDL_ATTRIBUTE.DPA_IP_FULLNAME $debug_ip] "/"]
        
        # Get trace ID (default to index, hopefully only for HW emulation)
        if {$type == "AXI_MM_MONITOR"} {
          set trace_id [get_property -quiet CONFIG.TRACE_READ_ID $debug_ip]
        } elseif {($type == "AXI_STREAM_MONITOR") || ($type == "ACCEL_MONITOR")} {
          set trace_id [get_property -quiet CONFIG.TRACE_ID $debug_ip]
        } else {
          set trace_id 0
        }
        if {$trace_id == ""} {
          set trace_id [expr $i - 1]
        }
        
        set debug_ip_name $debug_ip
        set name_index [string last "/" $debug_ip_name] 
        if {$name_index >= 0} {
          set debug_ip_name [string range $debug_ip_name [expr $name_index+1] [string length $debug_ip_name]]
        }
        
        # Special handling for AXI_TRACE_FUNNEL
        if {$is_hw_emu && ($type == "AXI_TRACE_FUNNEL")} {
          #TRACE FUNNEL has all FIFO and need to handle differently
          set amax 3
          set addr_match ""
          set ip_match "dpa_hub"
          for { set a 0 } {$a < $amax } { incr a } {
            if {$a == 0} {
              set type "AXI_MONITOR_FIFO_FULL"
              set addr_match "S_AXIMM"
            } elseif {$a == 1} {
              set type "AXI_MONITOR_FIFO_LITE"
              set addr_match "S_AXIFIFO"
            } else {
              set type "AXI_TRACE_FUNNEL"
              set addr_match "S_AXIHUB"
            }

            # Search all address segs for match
            set base_address $DUMMY_ADDRESS
            foreach addr_seg $addr_segs {   
              set offset [get_property -quiet OFFSET $addr_seg]
              if {$offset == ""} {
                continue
              }
            
              #set range [format 0x%X [get_property RANGE $addr_seg]]                 
              set slave [get_bd_addr_segs -of_object $addr_seg]

              # Catch compatible trace addresses
              set foundIP [string first ${ip_match} $slave]
              if {$foundIP < 0} {
                continue
              }
              set foundFull [string first ${addr_match} $slave]

              if {$foundFull < 0} {
                continue
              }

              if { ![regexp {([^/]+)/([^/]+)/([^/]+)$} $slave match slaveRef slaveMemoryMap slaveSegment] } {
                #puts "--- DPA: slave doesn't match regular expression (slave: $slave)"
                continue
              }
              
              #puts "slave = $slave, name = $debug_ip_name, slaveRef = $slaveRef, offset = $offset"
              if {[string equal -nocase $slaveRef $debug_ip_name] == 1} {
                set base_address $offset
                break
              }
            }

            # Don't report an invalid address
            # NOTE: We need to include dummy addresses for 2018.3 HW emu platforms
            if {$base_address == $DUMMY_ADDRESS} {
              puts "CRITICAL WARNING: Unable to find address for IP $debug_ip"
              #continue
            }
          
            # Write this IP to file
            set last [expr {(($i == $num_entries) && ($shell_ip == 0)) ? true : false}]
            #puts "--- DEBUG IP: inst = ${debug_ip}, type = ${type}, addr = ${base_address}, name = ${name}"
            write_debug_ip_entry $debug_ip $fp $type $trace_id $properties $base_address $name $last
            incr i
          }
          continue
        }

        # Report DDR address and range (for AIE trace only)
        if {($type == "TRACE_S2MM") && ([string first "aie" $debug_ip] >= 0)} {
          set offloadSeg   [get_bd_addr_segs -quiet -of [get_bd_intf_pins "${debug_ip}/m_axi_gmem"] -filter {NAME =~ "*DDR*"}]
          if {$offloadSeg == {}} {
            set offloadSeg [get_bd_addr_segs -quiet -of [get_bd_intf_pins "${debug_ip}/m_axi_gmem"]]
          }
          
          set traceAddress [get_property -quiet OFFSET $offloadSeg]
          if {$traceAddress == {}} {set traceAddress 0x0}
          set traceDepth   [get_property -quiet RANGE  $offloadSeg]
          if {$traceDepth == {}} {set traceDepth 0x40000000}

          # List full address
          # In case of multiple segments, only grab first one
          set traceAddress [lindex $traceAddress 0]
          set traceDepth   [lindex $traceDepth   0]

          #puts "--- DEBUG IP: trace address = $traceAddress, depth = $traceDepth"
          write_debug_ip_entry $debug_ip $fp "TRACE_S2MM_FULL" 0 $properties $traceAddress $traceDepth false
          incr i
        }
        
        # Iterate twice for FIFO
        set amax [expr { ($type == "AXI_MONITOR_FIFO_FULL") ? 2 : 1 } ]
        for { set a 0 } { $a < $amax } { incr a } {
          set type [expr { (($a == 1) && ($type == "AXI_MONITOR_FIFO_FULL")) ?  "AXI_MONITOR_FIFO_LITE" : $type } ]
          
          # Search all address segs for match
          set base_address $DUMMY_ADDRESS
          foreach addr_seg $addr_segs {   
            set offset [get_property -quiet OFFSET $addr_seg]
            if {$offset == ""} {
              continue
            }
            
            #set range [format 0x%X [get_property RANGE $addr_seg]]                 
            set slave [get_bd_addr_segs -of_object $addr_seg]

            # Catch incompatible trace FIFO addresses
            set foundFull [string first FULL $slave]
            if {($type == "AXI_MONITOR_FIFO_LITE" && $foundFull >= 0)
                 || ($type == "AXI_MONITOR_FIFO_FULL" && $foundFull < 0)} {
              continue 
            }
            
            if { ![regexp {([^/]+)/([^/]+)/([^/]+)$} $slave match slaveRef slaveMemoryMap slaveSegment] } {
              #puts "--- DPA: slave doesn't match regular expression (slave: $slave)"
              continue
            }
              
            #puts "slave = $slave, name = $debug_ip_name, slaveRef = $slaveRef, offset = $offset"
            if {[string equal -nocase $slaveRef $debug_ip_name] == 1} {
              set base_address $offset
              break
            }
          }
        
          # Don't report an invalid address
          # NOTE: We need to include dummy addresses for 2018.3 HW emu platforms
          if {$base_address == $DUMMY_ADDRESS} {
            puts "CRITICAL WARNING: Unable to find address for IP $debug_ip"
            #if {!$is_hw_emu} {continue}
          }
          
          # Write this IP to file
          set last [expr {(($i == $num_entries) && ($shell_ip == 0)) ? true : false}]
          #puts "--- DEBUG IP: inst = ${debug_ip}, type = ${type}, addr = ${base_address}, name = ${name}"
          write_debug_ip_entry $debug_ip $fp $type $trace_id $properties $base_address $name $last
          incr i
        }

      }
    }
    
    # Add NOC cells to enable tapping into performance counters at runtime
    set nocs [get_bd_cells -quiet -filter {VLNV=~"*axi_noc*"}]
    foreach noc $nocs {
      set nocPins [get_bd_intf_pins -quiet -of_objects $noc -filter {(MODE == Slave) && (CONFIG.PROTOCOL == AXI4)}]
      #puts "--- DPA: noc = $noc, nocPins = $nocPins"
      set type [get_debug_ip_type $noc]

      foreach nocPin $nocPins {
        # Get traffic class properties
        set readClass 0
        set readClassStr [get_property CONFIG.R_TRAFFIC_CLASS $nocPin]
        if {$readClassStr == "ISOCHRONOUS"} {set readClass 1}
        if {$readClassStr == "LOW_LATENCY"} {set readClass 2}
        set writeClass 0
        set writeClassStr [get_property CONFIG.W_TRAFFIC_CLASS $nocPin]
        if {$writeClassStr == "ISOCHRONOUS"} {set writeClass 1}
        set properties [expr ($readClass << 2) + $writeClass]

        # Get requested QoS
        set readQos 0
        set writeQos 0
        set connections [get_property CONFIG.CONNECTIONS $nocPin]
        foreach {connection qosDict} $connections {
          if { [dict exists $qosDict read_bw] } {
            incr readQos [dict get $qosDict read_bw]
          }
          if { [dict exists $qosDict write_bw] } {
            incr writeQos [dict get $qosDict write_bw]
          }
        } 

        # NOTE: This will be replaced by the actual address found in a post-route script
        set base_address $DUMMY_ADDRESS

        # Get NoC/NPI clock frequency
        set cips [get_bd_cells -quiet -filter {VLNV=~"*versal_cips*"}]
        set npiClockProp [get_property -quiet CONFIG.PMC_CRP_NPI_REF_CTRL_ACT_FREQMHZ $cips]
        set npiClockFreqMhz [expr {($npiClockProp != "") ? $npiClockProp : 299.997009}]

        # Use format: <master>-<NMU cell>-<read QoS>-<write QoS>-<NPI freq>
        set fullName [find_bd_objs -quiet -relation connected_to -thru_hier $nocPin]
        set fullName [string trim $fullName "/"]
        append fullName "-"
        append fullName [string trim $nocPin "/"]
        append fullName "-"
        append fullName $readQos
        append fullName "-"
        append fullName $writeQos

        # Add clock frequency, but make sure it fits
        # NOTE: current length limit of m_name in debug_ip_layout is 128
        set freqName "-"
        append freqName $npiClockFreqMhz
        if {[expr [string length $fullName] + [string length $freqName]] <= 128} {
          append fullName $freqName
        }
        
        # Write this IP to file
        set last [expr {(($i == $num_entries) && ($shell_ip == 0)) ? true : false}]

        write_debug_ip_entry $noc $fp $type 0 $properties $base_address $fullName $last
        incr i
      }
    }

    # Add KDMA/XDMA/P2P monitors in shells of specific HW platforms
    # NOTE: the name strings must match those in RTUtil::monitorTypeToString() in XDP
    # NOTE 2: the name strings are reported in xbutil status --spm as two columns separated by '/'
    set shell_ip 0
    if {$has_kdma} {
      set last [expr {($has_xdma || $has_p2p) ? false : true}]
      write_debug_ip_entry "dummy" $fp AXI_MM_MONITOR $shell_ip $shell_monitor_prop $kdma_monitor_base $kdma_monitor_name $last
      incr shell_ip
    }
    if {$has_xdma} {
      # Set base address based on device type
      # NOTE: to keep the value as a hex string, avoid using expr
      if {[string first "samsung" $hw_platform_vbnv] >= 0} {
        set xdma_base $xdma_monitor_base_samsung
      } else {
        set xdma_base $xdma_monitor_base
      }
      set last [expr {($has_p2p) ? false : true}]
      write_debug_ip_entry "dummy" $fp AXI_MM_MONITOR $shell_ip $shell_monitor_prop $xdma_base $xdma_monitor_name $last
      incr shell_ip
    }
    if {$has_p2p} {
      # Set base address based on device type
      # NOTE: to keep the value as a hex string, avoid using expr
      if {[string first "samsung" $hw_platform_vbnv] >= 0} {
        set p2p_base $p2p_monitor_base_samsung
      } else {
        set p2p_base $p2p_monitor_base
      }
      write_debug_ip_entry "dummy" $fp AXI_MM_MONITOR $shell_ip $shell_monitor_prop $p2p_base $p2p_monitor_name true
      incr shell_ip
    }
    
    # write footer
    puts $fp "    \]"
    puts $fp "  \}"
    puts $fp "\}"
    close $fp

    # Add this file to the run summary
    if { [ocl_util::is_drcv] } {
      vitis_log::report $outfile -file_type JSON -report_type DEBUG_IP_LAYOUT
    }
  }; # end write_debug_ip_layout
  
}; # end namespace


