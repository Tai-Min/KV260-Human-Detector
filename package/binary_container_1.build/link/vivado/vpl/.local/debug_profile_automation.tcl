################################################################################
# This file instantiates and stitches together debug/profiling IP.  All IP are
# prefixed with "dpa_" and are grouped under the hierarchy "System_DPA".
# This is called from the BD automation of the debug/profile subsystem.
#
# The commands to call this looks like this:
#   set_param bd.enable_dpa 1 
# apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts dpa_opts -dict dpa_dict
################################################################################

# Dependencies
#   This code relies on the following APIs from IP Integrator:
#     bd::clkrst::get_sink_clk [get_bd_intf_pins <intf_pin>]
#     bd::clkrst::get_sink_rst [get_bd_pins <clk-pin>]
#     apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config config_dict <pin>

# List of debug/profile IP:
#   AXI-MM monitor interfaces
#     AIM = AXI Interface Monitor
#     LAPC = Lightweight AXI Protocol Checker
#   AXI Stream monitor interfaces
#     ASM = AXI Stream Monitor
#     ASPC = AXI Stream Protocol Checker
#   Accelerator monitor interfaces
#     AM = Accelerator Monitor
#   Trace
#     Trace Hub
#     AXI Stream FIFO (option #1)
#     Trace S2MM (option #2) 

###########################################################
# apply_rule
#  Description:
#    This is the top-level procedure run .
#  Arguments:
#    dpa_opts    Dictionary containing options for automation
#    dpa_dict    Dictionary containing key/dict pairs
#  Return Value:
#    None
###########################################################
proc apply_rule { {dpa_opts {}} {dpa_dict {}}} {
  namespace import dpa::insert_dpa_ip
  namespace import dpa::get_monitor_clocks
  namespace import dpa::get_trace_clock
  
  # Before we start, ensure we know all monitor clocks and the trace clock
  set dpa_dict [get_monitor_clocks   $dpa_dict]
  set dpa_opts [get_trace_clock      $dpa_dict $dpa_opts]
  
  insert_dpa_ip ${dpa_opts} ${dpa_dict}
}; # end apply_rule


namespace eval dpa {

  namespace export \
  insert_dpa_ip \
  get_monitor_clocks \
  get_trace_clock

  # NOTE: Uncommenting the next 5 lines gives errors in Vitis flows
  #namespace import ::bd::clkrst::get_sink_clk
  #namespace import ::bd::clkrst::get_sink_rst
  #namespace import ::bd::clkrst::get_src_rst
  #namespace import ::bd::clkrst::Get_associated_clk
  #namespace import ::bd::clkrst::Get_associated_rst

  ###########################
  # Global variables 
  ###########################
  
  # Names of monitor IP cores
  set lapc_name          "xilinx.com:ip:axi_protocol_checker"
  set aspc_name          "xilinx.com:ip:axis_protocol_checker"
  # HW cores (for synthesis)
  set aim_name           "xilinx.com:ip:axi_interface_monitor"
  set asm_name           "xilinx.com:ip:axi_stream_monitor"
  set am_name            "xilinx.com:ip:accelerator_monitor"
  set trace_hub_name     "xilinx.com:ip:trace_hub"
  set trace_s2mm_name    "xilinx.com:ip:trace_s2mm"
  set aie_trace_s2mm_name "xilinx.com:ip:trace_s2mm"
  # Emulation cores (for simulation)
  set emu_aim_name       "xilinx.com:ip:sim_aximm_perf_mon"
  set emu_asm_name       "xilinx.com:ip:sim_axis_perf_mon"
  set emu_am_name        "xilinx.com:ip:sim_accel_monitor"
  set emu_trace_hub_name "xilinx.com:ip:emulation_profiler_core"
  
  # Debug messaging during operation
  variable debug false
  
  # AI engine flow
  variable aiengine_flow false
  
  # NoC max bandwidth multiplication factor to take into account response bandwidth
  variable noc_mult_factor 0.8

  # Guidance thresholds
  # Max monitors: as a general rule, timing convergence becomes difficult above this limit
  variable max_monitors 32
  # Large no. of trace monitors: too many trace monitors can potentially lead to dropped packets 
  variable large_num_trace_monitors 10

  # Maximum supported clock frequency in AIE trace offload
  variable max_clk_freq_hz 300000000

  # Use 64-bit counters for AMs and AIMs
  # NOTE: ASMs always use 64-bit counters
  variable use_64_bits_am  1
  variable use_64_bits_aim 1

  # Separator between CU port and memory resource (must match xclperf.h in XRT)
  variable port_mem_sep "-"

  # Host designator used in debug_ip_layout (must match xclperf.h in XRT)
  variable ip_layout_host_name "HOST"
  variable ip_layout_pipe_name "PIPE"
  
  # Trace IDs for profiling IPs
  # These are defined in xclperf.h for XRT
  variable trace_id_aim    0
  variable trace_id_am    64
  variable trace_id_asm  576
  
  # Trace FIFO Properties Dict
  variable trace_fifo_size_properties [ dict create \
    1024 1 \
    2048 2 \
    4096 3 \
    8192 0 \
    16384 4 \
    32768 5 \
    65536 6 \
    131072 7 \
  ];
  
  # Keeping track of pins for trace and AXI-Lite control
  variable trace_pin_list {}
  variable axilite_pin_list {}
  
  ###########################################################
  # insert_dpa_ip
  #  Description:
  #    Insert all debug/profile IP requested, targeting hardware
  #    (eventually HW emulation). Debug/profile IP currently 
  #    supported is listed above. Trace is also inserted.
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #    dpa_dict    Dictionary containing key/dict pairs
  #  Return Value:
  #    None
  ###########################################################
  proc insert_dpa_ip { {dpa_opts {}} {dpa_dict {}} } {
    variable ::dpa::debug
    variable ::dpa::aiengine_flow
 
    set settingDict [dict_get_default $dpa_opts    SETTINGS {}]
    set debug       [dict_get_default $settingDict DEBUG    false]
    
    # Step 1 - Add debug/profile monitors
    puts "--- DPA: Step 1 - Add debug/profile monitors..."
    set dpa_dict [add_debug_profile_ip $dpa_dict $dpa_opts]
  
    # Step 2 - Add trace infrastructure (if needed)
    if {[dict exists $dpa_opts TRACE_OFFLOAD]} {
      puts "--- DPA: Step 2 - Add trace infrastructure..."
      add_trace_infrastructure $dpa_opts
    } else {
      puts "--- DPA: Step 2 - No trace added"
    }

    # Step 3 - Add AI engine support (if needed)
    puts "--- DPA: Step 3 - Add AI engine support..."
    add_aie_trace_infrastructure $dpa_opts
    
    # Step 4 - Add AXI-Lite control
    puts "--- DPA: Step 4 - Add AXI-Lite control..."
    add_control_infrastructure $dpa_opts
    
    # Step 5 - Group IP and save the BD
    puts "--- DPA: Step 5 - Group IP into System_DPA..."
    set addedIP [get_bd_cells -quiet dpa_*]

    if {$addedIP != {}} {
      group_bd_cells "System_DPA" $addedIP
      save_bd_design
    }

    # Step 6 - Write metadata (AIE flows only)
    #if {$aiengine_flow} {
    #  puts "--- DPA: Step 6 - Write out metadata..."
    #  write_metadata $dpa_opts
    #}
  }; # end insert_dpa_ip

  #################################################################################################
  ######                                       Helpers                                        #####
  #################################################################################################
  
  ###########################################################
  # putd
  #  Description:
  #    Write out debug string (if turned on)
  #  Arguments:
  #    str  String to write       
  #  Return Value:
  #    None
  ###########################################################
  proc putd {str} {
    variable ::dpa::debug
    if {$debug} {puts $str}
  }; # end putd
  
  ###########################################################
  # dict_get_default
  #  Description:
  #    Get value from dict; return default if doesn't exist
  #  Arguments:
  #    adict    Dictionary
  #    key      Key
  #    default  Default value to use if key does not exist        
  #  Return Value:
  #    Value tied to key
  ###########################################################
  proc dict_get_default {adict key default} {
    if { [dict exists $adict $key] } {
      return [dict get $adict $key]
    }
    return $default
  }
  
  ###########################################################
  # is_profiling_ip
  #  Description:
  #    Given a BD cell, determine if it's a profile monitor
  #  Arguments:
  #    bd_cell  Name of BD cell    
  #  Return Value:
  #    true: cell is profile IP; false: cell is not profile IP
  ###########################################################
  proc is_profiling_ip {bd_cell} {
    set vlnv [get_property -quiet VLNV [get_bd_cells -quiet $bd_cell]]
    set vlnv [string tolower $vlnv]
    
    if {([string first "axi_master" $vlnv] >= 0)
         || ([string first "axi_interface" $vlnv] >= 0)
         || ([string first "axi_perf" $vlnv] >= 0)
         || ([string first "sim_aximm_perf" $vlnv] >= 0)} {
      return true
    } elseif {([string first "stream" $vlnv] >= 0)
               || ([string first "sim_axis_perf" $vlnv] >= 0)} {
      return true
    } elseif {[string first "accel" $vlnv] >= 0} {
      return true
    }
    return false
  }; # end is_profiling_ip

  ###########################################################
  # is_stream
  #  Description:
  #    Given an interface pin, check if stream
  #  Arguments:
  #    intf_pin  Name of bd_intf_pin        
  #  Return Value:
  #    true: pin is AXI-Stream; false: pin is not AXI Stream
  ###########################################################
  proc is_stream {intf_pin} {
    set pin [get_bd_intf_pins -quiet $intf_pin]
    if { [string first axis [get_property -quiet VLNV $pin] ] >= 0 } {
      return true
    }
    return false
  }; # end is_stream
  
  #####################################################################
  # is_stream_connected_to_pipe
  #  Description:
  #    Checks if the specified interface pin is connected to a pipe 
  #  Arguments:
  #    intfPin
  #  Return Value:
  #    1 if this is connected to a pipe, 0 otherwise
  #####################################################################
  proc is_stream_connected_to_pipe { intfPin } {
    set pinObj [get_bd_intf_pins -quiet $intfPin]
    
    # Catch if not an AXI stream (or pin doesn't exist)
    if {[string first "axis" [get_property -quiet VLNV $pinObj]] < 0} {
      return 0
    }

    set connectedCells [get_bd_cells -quiet -of_objects [find_bd_objs -relation connected_to $pinObj]]
    foreach cell $connectedCells {
      set vlnv [get_property -quiet VLNV $cell]
      if {[string first "axis_data_fifo" $vlnv] >= 0} {
        return 1
      }
    }
    
    return 0
  }; # end is_stream_connected_to_pipe
  
  #####################################################################
  # is_soc_shell
  #  Description:
  #    Quieres the BD and determines if this is an SoC or embedded
  #    specific shell.
  #  Arguments:
  #    None
  #  Return Value:
  #    1 if this is an SoC (embedded) Shell, 0 otherwise
  #####################################################################
  proc is_soc_shell { } {
    # Test 1 - Do we have a PS7 IP?
    set ps7 [get_bd_cells -quiet -filter {VLNV =~ "xilinx.com:ip:processing_system7*"}]
    if { $ps7 != {} } { return 1 }
    # Test 2 - Do we have a Zynq IP?
    set zync [get_bd_cells -quiet -filter {VLNV =~ "xilinx.com:ip:zynq*"}]
    if { $zync != {} } { return 1 } 

    return 0
  }; # end is_soc_shell
  
   #####################################################################
  # is_versal_shell
  #  Description:
  #    Quieres the BD and determines if this is a Versal specific shell.
  #  Arguments:
  #    None
  #  Return Value:
  #    1 if this is a Versal Shell, 0 otherwise
  #####################################################################
  proc is_versal_shell { } {
    set versal [get_bd_cells -quiet -filter {VLNV =~ "*axi_noc*"}]
    if { $versal != {} } { return 1 }
    return 0
  }; # end is_versal_shell

  #####################################################################
  # is_drcv
  #  Description:
  #    Do we have a connection to the DRC server?
  #  Arguments:
  #    None
  #  Return Value:
  #    true if connected, false otherwise
  #####################################################################
  proc is_drcv {} {
    if {![info exists ocl_util::drcv_connected]} {return false}
    if {$ocl_util::drcv_connected} {return true}
    return false
  }; # end is_drcv

  ###########################################################
  # remove_all_slaves
  #  Description:
  #    Delete all slaves (i.e., a NULL register) connected to a master
  #  Arguments:
  #    port         The master pin/port
  #  Return Value:
  #    None
  ###########################################################
  proc remove_all_slaves {port} {
    # Find all slaves
    set slavePort [find_bd_objs -quiet -thru_hier -stop_at_interconnect -relation connected_to [get_bd_intf_ports -quiet $port]]
    if { $slavePort == {} } {
      set slavePort [find_bd_objs -quiet -thru_hier -stop_at_interconnect -relation connected_to [get_bd_intf_pins -quiet $port]]
    }

    set nullObjects [get_bd_cells -quiet -of_objects $slavePort]
    if {$nullObjects != {}} {
      putd "--- DPA: Removing slaves on $port: $nullObjects"
      delete_bd_objs $nullObjects
    }
  }; # end remove_all_slaves
 
  ###########################################################
  # add_master_to_interconnect
  #  Description:
  #    For a given interconnect object, create a new master AXI port.
  #  Arguments:
  #    interconnect  The interconnect object to add a new master to
  #    masterClock   The clock to connect
  #    masterReset   The reset to connect
  #  Return Value:
  #    The newly added master AXI port
  ###########################################################
  proc add_master_to_interconnect { interconnect masterClock masterReset } {
    # Make sure it's really a cell
    set interconnectCell [get_bd_cells -quiet $interconnect]
    if {$interconnectCell == {}} {
      return {}
    }

    set numMasterPorts [get_property CONFIG.NUM_MI $interconnectCell]
    set newNumMasterPorts [expr {$numMasterPorts + 1}]
 
    # TODO: catch if > max masters
    set_property CONFIG.NUM_MI $newNumMasterPorts $interconnectCell

    set masterPrefix [expr { ($numMasterPorts > 9) ? "M${numMasterPorts}" : "M0${numMasterPorts}" } ]

    # Connect new master clock & reset and add regslices (not applicable to SmartConnect)
    set vlnv [get_property VLNV $interconnect]
    if {[string first "axi_interconnect" $vlnv] >= 0} {
      connect_bd_net $masterClock [get_bd_pins $interconnect/${masterPrefix}_ACLK]
      connect_bd_net $masterReset [get_bd_pins $interconnect/${masterPrefix}_ARESETN]

      set_property CONFIG.${masterPrefix}_HAS_REGSLICE 1 $interconnectCell
    }

    set newMaster [get_bd_intf_pins $interconnect/${masterPrefix}_AXI]
    return $newMaster
  }; # end add_master_to_interconnect
  
  ###########################################################
  # add_axilite_smartconnect
  #  Description:
  #    Add a SmartConnect for already used AXI-Lite master 
  #  Arguments:
  #    axiliteMaster   AXI Lite master interface pin
  #  Return Value:
  #    A master interface pin to connect to
  ###########################################################
  proc add_axilite_smartconnect { axiliteMaster } {
    set axiliteNet   [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins $axiliteMaster]]
    set axiliteSlave [get_bd_intf_pins -quiet -of_objects $axiliteNet -filter {MODE == Slave}]
    if {$axiliteNet == {}} {
      return $axiliteMaster
    }
    
    set axiliteClock [bd::clkrst::get_sink_clk $axiliteMaster]
    set axiliteReset [bd::clkrst::get_sink_rst $axiliteClock]
    
    # If specified master is connected to interconnect, then use that
    set axiliteIntercon [get_bd_cells -quiet -of_objects $axiliteSlave -filter {VLNV =~ *connect*}]
    if {$axiliteIntercon != {}} { 
      set newMaster [add_master_to_interconnect $axiliteIntercon $axiliteClock $axiliteReset]
      return $newMaster
    }
    
    #puts "--- DPA: Adding interconnect to AXI-Lite master $axiliteMaster (clock: $axiliteClock, reset: $axiliteReset)"
    
    # Remove the net, and replace it with interconnect
    delete_bd_objs -quiet $axiliteNet
    
    set interconnectName "xdpa_ctrl_interconnect2"
    set interconnectObject [create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect $interconnectName]
    set_property CONFIG.NUM_SI   1 $interconnectObject
    set_property CONFIG.NUM_MI   2 $interconnectObject
    set_property CONFIG.NUM_CLKS 1 $interconnectObject

    # Connect the clock and reset of the interconnect
    connect_bd_net [get_bd_pins $axiliteClock] [get_bd_pins $interconnectName/aclk]
    
    if {$axiliteReset != {}} {
      set_property CONFIG.HAS_ARESETN 1 $interconnectObject 
      connect_bd_net [get_bd_pins $interconnectName/aresetn] $axiliteReset
    } else {
      set_property CONFIG.HAS_ARESETN 0 $interconnectObject
    }
    
    # Connect original AXI-Lite master with slave on interconnect
    connect_bd_intf_net [get_bd_intf_pins $axiliteMaster] [get_bd_intf_pins $interconnectName/S00_AXI]

    # Connect first interconnect master to original slave port
    connect_bd_intf_net [get_bd_intf_pins $interconnectName/M00_AXI] $axiliteSlave

    # Return second master
    return [get_bd_intf_pins $interconnectName/M01_AXI]
  }; # end add_axilite_smartconnect

  ###########################################################
  # get_unique_clocks
  #  Description:
  #    Get a list of unique clocks given a list of intf_pins 
  #  Arguments:
  #    pinList   Input list of intf_pins
  #  Return Value:
  #    List of unique clocks
  ###########################################################
  proc get_unique_clocks { pinList } {
    set clks {}
    foreach pin $pinList {
      set pinObj   [get_bd_intf_pins $pin]
      set pinClock [bd::clkrst::get_sink_clk $pinObj]
      set srcClock [find_bd_objs -quiet -relation connected_to -thru_hier $pinClock]
      #puts "CLOCKS: pinObj = $pinObj, pinClock = $pinClock, srcClock = $srcClock, clks = $clks"
        
      set position [lsearch $clks $srcClock]
      if {($srcClock != {}) && ($position < 0)} {
        lappend clks $srcClock
      }
    }

    return $clks
  }; # end get_unique_clocks

  ###########################################################
  # get_clock
  #  Description:
  #    Find the clock based on input dictionary or master 
  #  Arguments:
  #    inputDict   An input dictionary of values
  #    masterPin   The master intf_pin
  #  Return Value:
  #    The bd_pin object (or {} if not found)
  ###########################################################
  proc get_clock { inputDict masterPin } {
    set clock   [get_bd_pins -quiet [dict_get_default $inputDict  CLK_SRC ""]]
    if {$clock == {}} {
      set clock [bd::clkrst::get_sink_clk $masterPin]
    }
    return $clock
  }; # end get_clock

  ###########################################################
  # get_reset
  #  Description:
  #    Find the reset based on input dictionary or clock pin 
  #  Arguments:
  #    inputDict   An input dictionary of values
  #    clockPin    The associated clock pin
  #  Return Value:
  #    The bd_pin object (or {} if not found)
  ###########################################################
  proc get_reset { inputDict clockPin } {
    # First try the dictionary
    set reset      [get_bd_pins -quiet [dict_get_default $inputDict RST_SRC ""]]
    if {$reset != {}} {
      return $reset
    }

    set reset      [bd::clkrst::get_src_rst $clockPin]
    if {$reset != {}} {
      return $reset
    }

    set sinkReset  [bd::clkrst::get_sink_rst $clockPin]
    set reset      [find_bd_objs -quiet -relation connected_to -thru_hier $sinkReset]
    return $reset
  }; # end get_reset
  
  ###########################################################
  # get_master_from_object
  #  Description:
  #    Given an AXI-Lite or trace master, return the pin,
  #    clock and reset
  #  Arguments:
  #    inputDict    Dictionary for settings
  #    masterObj    The original master object (cell or pin)
  #                 labeled by the platform
  #  Return Value:
  #    A list of: intf_pin, clock, and reset
  ###########################################################
  proc get_master_from_object { inputDict masterObj } {
    if {$masterObj == {}} {
      return {}
    }

    set masterPin {}
    set masterClock {}
    set masterReset {}

    set masterPinObj  [get_bd_intf_pins -quiet $masterObj] 
    set masterCellObj [get_bd_cells -quiet $masterObj] 

    # Catch if master object is already an intf_pin
    if {$masterPinObj != {}} {
      set masterPin      $masterPinObj
      set masterClock    [get_clock $inputDict $masterPin]
      set masterReset    [get_reset $inputDict $masterClock]
    } else {
      # Assume it's an interconnect
    
      # Find the master we're suppose to use
      set foundMaster false
      set masterPins [get_bd_intf_pins -quiet -of_objects $masterCellObj -filter {Mode=="Master"}]
      foreach master $masterPins {
        set slavePins [find_bd_objs -quiet -relation connected_to -thru_hier $master]
        
        # Catch unconnected master and use it
        if {$slavePins == {}} {
          set foundMaster true
        } else {
          # Check if master is connected to a cell called "*null*" 
          foreach slavePin $slavePins {
            set slaveCell [get_bd_cells -of $slavePin]
            set slaveName [get_property Name $slaveCell]
            if {[string first "null" $slaveName] >= 0} {
              remove_all_slaves $master
              set foundMaster true
              break
            }
          }
        }
        
        if {$foundMaster} {
          set masterPin      $master
          set masterClock    [get_clock $inputDict $master]
          set masterReset    [get_reset $inputDict $masterClock]
          break
        }
      }
      
      # Last resort, add a master to existing interconnect
      if {!$foundMaster} {
        # TODO: Is this the right clock?
        set masterClock    [lindex [get_bd_pins -quiet -of $masterCellObj -filter {TYPE == clk}] 0]
        set masterReset    [lindex [get_bd_pins -quiet -of $masterCellObj -filter {TYPE == rst}] 0]
        set masterPin      [add_master_to_interconnect $masterCellObj $masterClock $masterReset]
      }
    }

    #puts "--- DPA: get_master_from_object: pin: $masterPin, clock = $masterClock, reset = $masterReset"
    return [list $masterPin $masterClock $masterReset]
  }; # end get_master_from_object

  #####################################################################
  # get_dpa_axilite_master
  #  Description:
  #    Quieres the BD to find the AXI-Lite master
  #  Arguments:
  #    axiliteDict  Dictionary for AXI-Lite settings
  #  Return Value:
  #    A list of: intf_pin, clock, and reset
  #####################################################################
  proc get_dpa_axilite_master { axiliteDict } {
    # Search for master with following order:
    #   1. Take from AXILITE input dictionary
    #   2. Pin tagged with HDL_ATTRIBUTE.DPA_AXILITE_MASTER
    #   3. Cell tagged with HDL_ATTRIBUTE.DPA_AXILITE_MASTER
    #   4. GP0 on CIPS (add if not already present)
    set masterObj     [dict_get_default $axiliteDict MASTER ""]
    if {$masterObj == ""} {
      set masterObj   [get_bd_intf_pins -quiet -hier -filter \
          {(HDL_ATTRIBUTE.DPA_AXILITE_MASTER == primary) || (HDL_ATTRIBUTE.DPA_AXILITE_MASTER == true)}]

      if {$masterObj == ""} {
        set masterObj [get_bd_cells -quiet -hier -filter \
            {(HDL_ATTRIBUTE.DPA_AXILITE_MASTER == primary) || (HDL_ATTRIBUTE.DPA_AXILITE_MASTER == true)}]
      }
    }
    
    set axiliteList [get_master_from_object $axiliteDict $masterObj]
    
    if {$axiliteList != {}} {
      return $axiliteList
    }
    
    # Versal specific for AI Engines
    # NOTE: Find the CIPS and find a GP master (add if needed)
    set cips [get_bd_cells -quiet -filter {VLNV=~"*versal_cips*"}]
    if {$cips == {}} {
      return {}
    }
     
    # Look for M_AXI_FPD or M_AXI_LPD on CIPS 2.0
    set axiliteMaster {}
    set masterPins [get_bd_intf_pins -quiet -of_objects $cips -filter {NAME=~"M_AXI_*" && CONFIG.PROTOCOL == AXI4 && MODE == Master}]
    if {$masterPins != ""} {
      # Add SmartConnect to first GP port
      set axiliteMaster [add_axilite_smartconnect [lindex $masterPins 0]]
    } else {
      send_msg_id "DPA-1" "WARNING" "Adding M_AXI_FPD master to $cips. Clock must be connected manually."
      set_property CONFIG.PS_USE_M_AXI_GP0 1 $cips
      set axiliteMaster [get_bd_intf_pins $cips/M_AXI_FPD]
    }

    set axiliteClock [get_clock $axiliteDict $axiliteMaster]
    set axiliteReset [get_reset $axiliteDict $axiliteClock]
    #puts "--- DPA: get_dpa_axilite_master: pin: $axiliteMaster, clock = $axiliteClock, reset = $axiliteReset"
    return [list $axiliteMaster $axiliteClock $axiliteReset]
  }; # end get_dpa_axilite_master

  #####################################################################
  # get_trace_offload_slave
  #  Description:
  #    Quieres the BD to find the trace offload slave
  #  Arguments:
  #    offloadDict  Dictionary for trace offload settings
  #  Return Value:
  #    Trace offload slave name
  #####################################################################
  proc get_trace_offload_slave { offloadDict } {
    # Search for slave with following order:
    #   1. Take from TRACE_OFFLOAD input dictionary
    #   2. Cell tagged with HDL_ATTRIBUTE.DPA_TRACE_SLAVE
    #   3. Pin taged with HDL_ATTRIBUTE.DPA_TRACE_SLAVE
    #   4. NoC with PFM.AXI_PORT defined w/ sptag=DDR
    #   5. NoC already connected with slave
    set traceOffloadSlave      [dict_get_default $offloadDict SLAVE ""]
    if {$traceOffloadSlave == ""} {
      set traceOffloadSlave    [get_bd_cells -quiet -hier -filter {HDL_ATTRIBUTE.DPA_TRACE_SLAVE == true}]
        
      if {$traceOffloadSlave == ""} {
        set traceOffloadSlave  [get_bd_intf_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_TRACE_SLAVE == true}]
      }
    }
    
    if {$traceOffloadSlave != ""} {
      putd "--- DPA: Trace Offload: slave = $traceOffloadSlave"
      return $traceOffloadSlave
    }
      
    # Versal specific (NoC only)
    set nocs [get_bd_cells -quiet -filter {VLNV=~"*axi_noc*"}]

    # Find the NoC with PFM.AXI_PORT defined w/ sptag=DDR
    foreach noc $nocs {
      set pfmAttr [get_property -quiet PFM.AXI_PORT $noc]
      foreach {axiPort portDict} $pfmAttr {
        set sptag [dict_get_default $portDict sptag ""]
        if {$sptag == "DDR"} {
          putd "--- DPA: Found NoC with PFM.AXI_PORT and sptag=DDR. Trace Offload: slave = $noc"
          return $noc
        }
      }
    }

    # Find the first NoC that already has an AXI slave
    foreach noc $nocs {
      set slavePins [get_bd_intf_pins -quiet -of_objects $noc -filter {CONFIG.PROTOCOL == AXI4 && MODE == Slave}]
      if {$slavePins != {}} {
        putd "--- DPA: Found NoC with slave. Trace Offload: slave = $noc"
        return $noc
      }
    }
    
    return $traceOffloadSlave
  }; # end get_trace_offload_slave
 
  #####################################################################
  # connect_trace_offload_slave
  #  Description:
  #    Connects to the trace offload slave
  #  Arguments:
  #    traceOffloadSlave  Trace offload slave name
  #    traceMemoryType    Memory type
  #    traceMemory        Memory segment
  #    masterPinName      Name of master interface pin to connect to
  #    traceClock         bd_pins of the clock used for trace
  #    traceReset         bd_pins of the reset used for trace
  #    traceBandwidth     Estimated bandwidth (in MB/s) [optional]
  #    traceIndex         Index of data mover to determine MC to use [optional]
  #  Return Value:
  #    None
  #####################################################################
  proc connect_trace_offload_slave { traceOffloadSlave traceMemoryType traceMemory masterPinName \
                                     traceClock traceReset {traceBandwidth 10} {traceIndex 0} } {
    putd "--- DPA: connect_trace_offload_slave $traceOffloadSlave $traceMemoryType $traceMemory $masterPinName"
    if {$traceOffloadSlave == {}} {
      send_msg_id "DPA-23" "CRITICAL WARNING" "Unable to connect to trace offload slave. It was undefined."
    }
    
    # Connect to trace offload slave. Check in this order:
    #   1. Memory subsystem: add a slave to it
    #   2. NoC or interconnect: add a slave to it
    #   3. Interface pin: connect to it
    if {[get_bd_cells -quiet $traceOffloadSlave] != {}} {
      set slaveCell [get_bd_cells $traceOffloadSlave]
      set vlnv [get_property VLNV $slaveCell]
      putd "--- DPA: Connecting to trace slave $slaveCell (vlnv: $vlnv)"
      
      # 1. Memory subsystem (HBM or DDR/PLRAM)
      if {[string first "memory_subsystem" $vlnv] >= 0} {
        putd "--- DPA: Connecting $masterPinName to memory subsystem $slaveCell using address space $traceMemory"
        if {$traceMemoryType == "HBM"} {
          hbm_memory_subsystem::map_memory_resource \
              [get_bd_intf_pins -auto_enable $masterPinName] \
               $slaveCell [list $traceMemory]
        } else {
          sdx_memory_subsystem::map_memory_resource \
              [get_bd_intf_pins -auto_enable $masterPinName] \
               $slaveCell [list $traceMemory]
        }
      } else {
        # 2. NoC or interconnect
        set numSlaves [get_property CONFIG.NUM_SI $slaveCell]
        set newNumSlaves [expr $numSlaves + 1]
        set_property CONFIG.NUM_SI $newNumSlaves $slaveCell
    
        set traceSlavePinName [expr { ($numSlaves > 9) ? "${traceOffloadSlave}/S${numSlaves}_AXI" : "${traceOffloadSlave}/S0${numSlaves}_AXI" } ]
        connect_bd_intf_net [get_bd_intf_pins $masterPinName] [get_bd_intf_pins $traceSlavePinName]
          
        if {[string first "axi_noc" $vlnv] >= 0} {
          # Figure out masters to request connections to
          # NOTE: If no memory controller on this NoC, then find downstream DDR and connect to that
          #       If memory controller found, then trade off which port to use 
          set numMC [get_property CONFIG.NUM_MCP $slaveCell]
          if {$numMC == 0} {
            set masterPins [get_bd_intf_pins -quiet -of_objects $slaveCell -filter {MODE == Master}]
            
            # Only connect to masters that lead to DDR
            set masters {}
            foreach masterPin $masterPins {
              set allObjs [find_bd_objs -quiet -thru_hier -relation connected_to $masterPin]
              set nocObjs [get_bd_cells -quiet -of_objects $allObjs -filter {VLNV =~ *axi_noc*}]
              
              # Find a cascaded NoC that connects to a DDR MC
              foreach nocObj $nocObjs {
                set currNumMC [get_property -quiet CONFIG.NUM_MCP $nocObj]
                if {$currNumMC > 0} {
                  lappend masters [string range $masterPin [expr [string last "/" $masterPin] + 1] end]
                  break
                }
              }
            }

            # If no DDR found, make sure we connect to something
            # NOTE: only connect to one master to avoid placer error (CR-1087778)
            if {$masters == {}} {
              set masterPin [lindex $masterPins 0]
              lappend masters [string range $masterPin [expr [string last "/" $masterPin] + 1] end]
            }
          } else {
            # Trade off which MC to connect to
            set mcIndex [expr $traceIndex % $numMC]
            set masters "MC_${mcIndex}"
          }
          
          # Add connections and set QoS to estimated bandwidth
          # TODO: allocate all bandwidth to the DDR master
          set numMasters [llength $masters]
          set perMasterBandwidth [expr max(int(floor(double($traceBandwidth) / $numMasters)), 10)]
          set connections {}
          set bwValues "read_bw {0} write_bw {$perMasterBandwidth}"
          send_msg_id "DPA-2" "INFO" "Connecting trace offload to $masters with QoS of $traceBandwidth MB/s"

          foreach master $masters {
            lappend connections $master $bwValues
          }
  
          puts "--- DPA: Setting CONFIG.CONNECTIONS for pin $traceSlavePinName to: $connections"
          set_property CONFIG.CONNECTIONS $connections [get_bd_intf_pins $traceSlavePinName]
          
          # Make sure master clock is connected to NoC; if not, connect it
          # TODO: use source clocks if they exist
          set masterClock [bd::clkrst::get_sink_clk [get_bd_intf_pins $masterPinName]]
          if {$masterClock != {}} {
            set slaveClocks [get_bd_pins -quiet -of $slaveCell -filter {TYPE == clk}]
            #set srcClocks [find_bd_objs -quiet -relation connected_to -thru_hier $slaveClocks]
            
            if {[lsearch $slaveClocks $masterClock] < 0} {
              putd "--- DPA: Connecting clock $masterClock to NoC $slaveCell"

              # Adjust for NoC feature where adding the first slave also automatically
              # opens up a clock pin (i.e., aclk0). If this happens, then simply use
              # that clock. No need to add another one. 
              if {$numSlaves == 0} {
                connect_bd_net $masterClock [get_bd_pins "${slaveCell}/aclk0"]
              } else {
                set numClocks [get_property CONFIG.NUM_CLKS $slaveCell]
                set_property CONFIG.NUM_CLKS [expr $numClocks + 1] $slaveCell
                connect_bd_net $masterClock [get_bd_pins "${slaveCell}/aclk${numClocks}"]
              }
            }
          } else {
            send_msg_id "DPA-22" "WARNING" "No clock found for $masterPinName. NoC clocks may need to be connected manually."
          }
        } else {
          # Connect clock and reset
          set traceClockPinName [expr { ($numSlaves > 9) ? "${traceOffloadSlave}/S${numSlaves}_ACLK" : "${traceOffloadSlave}/S0${numSlaves}_ACLK" } ]
          set traceResetPinName [expr { ($numSlaves > 9) ? "${traceOffloadSlave}/S${numSlaves}_ARESETN" : "${traceOffloadSlave}/S0${numSlaves}_ARESETN" } ]
          connect_bd_net [get_bd_pins $traceClockPinName] $traceClock
          connect_bd_net [get_bd_pins $traceResetPinName] $traceReset
        }
      }
    } elseif {[get_bd_intf_pins -quiet $traceOffloadSlave] != {}} {
      # 3. Interface pin
      connect_bd_intf_net [get_bd_intf_pins $masterPinName] [get_bd_intf_pins $traceOffloadSlave]
    } else {
      # Don't recognize it
      send_msg_id "DPA-3" "WARNING" "$traceOffloadSlave was not a recognized trace offload slave. Please specify a memory subsystem, NoC, interconnect, or interface pin."
    }
  }; # end connect_trace_offload_slave
   
  ###########################################################
  # add_nondedicated_interconnect
  #  Description:
  #    On platforms that do not have a dedicated port for
  #    our trace infrastructure, tap onto the same AXI-full port that
  #    is used for host traffic and create the interconnect infrastructure
  #    that we can tap onto.
  #  Arguments:
  #    hostMaster    Host master AXI interface pin
  #  Return Value:
  #    A master interface pin to connect to
  ###########################################################
  proc add_nondedicated_interconnect { hostMaster } {
    if {$hostMaster == {}} {
      return ""
    }
    
    set hostClock [bd::clkrst::get_sink_clk $hostMaster]
    set hostReset [bd::clkrst::get_sink_rst $hostClock]
    #puts "Adding interconnect to non-dedicated host master $hostMaster (clock: $hostClock, reset: $hostReset)"
    
    set hostNet   [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins $hostMaster]]
    set hostSlave [get_bd_intf_pins -quiet -of_objects $hostNet -filter {MODE == Slave}]
    
    # If nothing connected, then simply use the original master
    if {$hostSlave == {}} {
      return $hostMaster
    }

    # If specified master is connected to interconnect, then let's use that
    set hostIntercon [get_bd_cells -quiet -of_objects $hostSlave -filter {VLNV =~ *connect*}]
    if {$hostIntercon != {}} {
      set newMaster [add_master_to_interconnect $hostIntercon $hostClock $hostReset]
      return $newMaster
    }
    
    # Remove the net, and replace it with an interconnect
    delete_bd_objs -quiet $hostNet 

    set interconnectName "added_host_interconnect"
    set interconnectObject [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect $interconnectName]
    set_property CONFIG.NUM_SI 1 $interconnectObject
    set_property CONFIG.NUM_MI 2 $interconnectObject

    # Connect the clock and reset of the interconnect
    connect_bd_net [get_bd_pins $hostClock] [get_bd_pins $interconnectName/aclk]
    connect_bd_net [get_bd_pins $hostReset] [get_bd_pins $interconnectName/aresetn]

    # Connect the original AXI-Full master with the slave on the interconnect
    connect_bd_intf_net [get_bd_intf_pins $hostMaster] [get_bd_intf_pins $interconnectName/S00_AXI]
    connect_bd_net [get_bd_pins $hostClock] [get_bd_pins $interconnectName/S00_ACLK]
    connect_bd_net [get_bd_pins $hostReset] [get_bd_pins $interconnectName/S00_ARESETN]

    # Instantiate the register slice to go between the interconnect
    # and the original slave port to maintain the data and address widths
    set hostDataWidth [get_property -quiet CONFIG.DATA_WIDTH [get_bd_intf_pins $hostMaster]]
    if { $hostDataWidth == {} } {
      # Default
      set hostDataWidth 512
    }
    set hostAddrWidth [get_property -quiet CONFIG.ADDR_WIDTH [get_bd_intf_pins $hostMaster]]
    if { $hostAddrWidth == {} } {
      # Default
      set hostAddrWidth 32
    }
    
    set regSliceName "added_host_regslice"
    set regSliceObject [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice $regSliceName]
    set_property CONFIG.DATA_WIDTH.VALUE_SRC USER           $regSliceObject
    set_property CONFIG.DATA_WIDTH           $hostDataWidth $regSliceObject
    set_property CONFIG.ADDR_WIDTH.VALUE_SRC USER           $regSliceObject
    set_property CONFIG.ADDR_WIDTH           $hostAddrWidth $regSliceObject
    set_property CONFIG.REG_AW               0              $regSliceObject
    set_property CONFIG.REG_AR               0              $regSliceObject
    set_property CONFIG.REG_W                0              $regSliceObject
    set_property CONFIG.REG_R                0              $regSliceObject
    set_property CONFIG.REG_B                0              $regSliceObject

    connect_bd_net [get_bd_pins $hostClock] [get_bd_pins $regSliceName/aclk]
    connect_bd_net [get_bd_pins $hostReset] [get_bd_pins $regSliceName/aresetn]

    # Connect the interconnect master to the regslice
    connect_bd_intf_net [get_bd_intf_pins $interconnectName/M00_AXI] [get_bd_intf_pins $regSliceName/S_AXI]
    connect_bd_net [get_bd_pins $hostClock] [get_bd_pins $interconnectName/M00_ACLK]
    connect_bd_net [get_bd_pins $hostReset] [get_bd_pins $interconnectName/M00_ARESETN]

    # Connect the regslice to the original slave port
    connect_bd_intf_net [get_bd_intf_pins $regSliceName/M_AXI] $hostSlave

    # TODO: is this needed? It was in original implementation
    #set_property CONFIG.DATA_WIDTH 64 $interconnectName/M01_AXI

    return $interconnectName/M01_AXI
  }; # end add_nondedicated_interconnect
  
  #####################################################################
  # get_max_bandwidth
  #  Description:
  #    Get the maximum channel bandwidth of the current device
  #  Arguments:
  #    None
  #  Return Value:
  #    Maximum bandwidth of device (in MB/s)
  #####################################################################
  proc get_max_bandwidth { } {
    variable ::dpa::noc_mult_factor

    # The mult factor is due to consideration of response bandwidth
    return [expr $noc_mult_factor * [get_property MAX_CHANNEL_BW [get_noc_model]]]
  }; # end get_max_bandwidth

  #####################################################################
  # get_total_requested_qos
  #  Description:
  #    Traverses the current IPI diagram and calculates the total
  #    NOC QoS already requested across the design
  #  Arguments:
  #    isRead    true: read QoS; false: write QoS
  #  Return Value:
  #    total value of requested QoS
  #####################################################################
  proc get_total_requested_qos { isRead } {
    set totalQos 0
  
    set nocs [get_bd_cells -quiet -filter {VLNV=~"*axi_noc*"}]
    foreach noc $nocs {
      set nocPins [get_bd_intf_pins -quiet -of_objects $noc -filter {(MODE == Slave) && (CONFIG.PROTOCOL == AXI4)}]
      #puts "--- DPA: noc = $noc, nocPins = $nocPins"

      # Traverse all pins on this NOC
      foreach nocPin $nocPins {
        set connections [get_property CONFIG.CONNECTIONS $nocPin]
        foreach {connection qosDict} $connections {
          if { $isRead && [dict exists $qosDict read_bw] } {
            incr totalQos [dict get $qosDict read_bw]
          } elseif { !$isRead && [dict exists $qosDict write_bw] } {
            incr totalQos [dict get $qosDict write_bw]
          }
        }
      }
    }
  
    return $totalQos
  }; # get_total_requested_qos

  #####################################################################
  # get_monitor_clocks
  #  Description:
  #    Traverses the dpa_dict dict and ensures all monitor points have
  #    valid clock/reset
  #  Arguments:
  #    dpa_dict    Dictionary containing key/dict pairs
  #  Return Value:
  #    dpa_dict dict appended with any corrected monitor clocks/resets
  #####################################################################
  proc get_monitor_clocks {dpa_dict} {
    if {$dpa_dict == {}} {
      return
    }
    
    # Traverse all monitor points and make sure all have clock/reset defined
    foreach { obj adict } $dpa_dict {
      set temp [dict get $adict CONFIG]
      
      #
      # Clock
      #
      set mon_clk [get_bd_pins -quiet [dict_get_default $temp CLK_SRC ""]]
      
      if {($mon_clk == "Auto") || ($mon_clk == "")} {
        set mon_clk ""
        set cu [get_bd_cells -quiet $obj]
        
        # Check if key object refers to an accelerator
        if {$cu != {}} {
          # First, try to find the AXI-Lite clock
          set axilitePin [get_bd_intf_pins -quiet -of $cu -filter {CONFIG.PROTOCOL == AXI4LITE && MODE == Slave}]
          if {$axilitePin != ""} {
            set mon_clk [bd::clkrst::get_sink_clk $axilitePin]
          }
          
          # Second, find all clocks and just use the first one
          if {$mon_clk == ""} {
            set mon_clk [lindex [get_bd_pins -quiet -of $cu -filter {TYPE == clk}] 0]
          }
        } else {
          # Assume the key object is an interface pin
          set pin [get_bd_intf_pins -quiet $obj]
          if {$pin != ""} {
            set mon_clk [bd::clkrst::Get_associated_clk $pin 2]
            if {$mon_clk == ""} {
              set mon_clk [bd::clkrst::get_sink_clk $pin]
              
              # If still not found, then traverse connections to this object
              if {$mon_clk == ""} {
                set connectedObjs [find_bd_objs -quiet -relation connected_to -thru_hier $pin]
                foreach connectedObj $connectedObjs {
                  set mon_clk [bd::clkrst::get_sink_clk $connectedObj]
                  if {$mon_clk != ""} {
                    break
                  }
                }
              }
            }
          }
        }
      
        # If no clock found, then remove this monitor point from the dict
        if {$mon_clk == ""} {
          send_msg_id "DPA-4" "WARNING" "Unable to find clock for monitor point $obj. No monitor will be inserted."
          set dpa_dict [dict remove $dpa_dict $obj]
          continue 
        }
        
        putd "--- DPA: Found monitor clock for $obj: $mon_clk" 
        dict set temp CLK_SRC $mon_clk
        dict set adict CONFIG $temp
        dict set dpa_dict $obj $adict 
      }
      
      #
      # Reset
      #
      set mon_rst [get_bd_pins -quiet [dict_get_default $temp RST_SRC ""]]
      
      if {($mon_rst == "Auto") || ($mon_rst == "")} {
        set mon_rst [bd::clkrst::get_sink_rst $mon_clk]
        
        # Make more attempts at finding a reset
        if {$mon_rst == ""} {
          if {[get_property -quiet DIR $mon_clk] == "O"} {
            set clkDriver $mon_clk
          } else {
            set clkDriver [find_bd_objs -quiet -relation connected_to -thru_hier $mon_clk]
          }
          set clkSinks    [find_bd_objs -quiet -relation connected_to -thru_hier $clkDriver]
          
          # Get SLR assignment of this CU 
          set cu    [get_bd_cells -quiet $obj]
          if {$cu == {}} {
            set pin [get_bd_intf_pins -quiet $obj]
            set cu  [get_bd_cells -quiet -of_objects $pin]
          }
          set slrAssignment [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cu]

          # Check specific reset cells
          # NOTE: only valid on some platforms
          set resetCells [get_bd_cells -quiet -of $clkSinks -filter {VLNV=~"*proc_sys_reset*"}]
          set resetPins  [get_bd_pins -quiet -hier -of $resetCells -filter {CONFIG.TYPE == PERIPHERAL && CONFIG.POLARITY == ACTIVE_LOW}]
          
          # Must choose SLR-specific reset pin
          if {$slrAssignment != {}} {
            foreach resetPin $resetPins {
              set resetCell [get_bd_cells -quiet -of_objects $resetPin]
              set slrAssignmentReset [get_property -quiet CONFIG.SLR_ASSIGNMENTS $resetCell]
              if {$slrAssignmentReset == $slrAssignment} {
                set mon_rst $resetPin
                send_msg_id "DPA-51" "INFO" "Found SLR assignment of $slrAssignment for $obj. Using reset $mon_rst for monitor."
                break
              }
            }
          } else {
            set mon_rst [lindex $resetPins 0]
            send_msg_id "DPA-52" "WARNING" "No SLR assigned for $obj. Using reset $mon_rst for monitor."
          }

          # Traverse all clock sinks and find first that has associated reset
          # NOTE: should be valid on all platforms
          if {$mon_rst == ""} {
            foreach clkSink $clkSinks {
              set currReset [bd::clkrst::get_sink_rst $clkSink]
              if {$currReset != {}} {
                # Grab driver of this reset and make sure it's a pin
                set mon_rst [get_bd_pins -quiet [find_bd_objs -quiet -relation connected_to -thru_hier $currReset]]
                if {$mon_rst != {}} {
                  send_msg_id "DPA-53" "WARNING" "Selecting $mon_rst from connected sinks as reset to monitor $obj."
                  break
                }
              }
            }
          }
        }
    
        # Assume we can survive without a reset
        if {$mon_rst == ""} {
          send_msg_id "DPA-5" "WARNING" "Unable to find reset for monitor point $obj."
        } else {
          putd "--- DPA: Found monitor reset for $obj: $mon_rst"   
          dict set temp RST_SRC $mon_rst
          dict set adict CONFIG $temp
          dict set dpa_dict $obj $adict
        }
      }
    }

    #putd "New dpa_dict:\n$dpa_dict\n"
    return $dpa_dict
  }; # end get_monitor_clocks
  
  #####################################################################
  # get_trace_clock
  #  Description:
  #    Traverses the monitor clocks, identifies the one with the highest
  #    frequency, and adds it to the dpa_opts dict with TRACE key.
  #  Arguments:
  #    dpa_dict    Dictionary containing key/dict pairs
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    dpa_opts dict appended with trace clock/reset
  #####################################################################
  proc get_trace_clock {dpa_dict dpa_opts} {
    if {$dpa_dict == {}} {
      return $dpa_opts
    }
    
    set traceDict {}
    set trace_clk ""
    set trace_rst ""
    set max_clk_freq 0
    
    # Traverse all monitor points
    foreach { obj adict } $dpa_dict {
      set temp [dict get $adict CONFIG]
      
      # Grab the monitor clock
      # NOTE: Since the design might not be validated yet, the freq is not guaranteed
      # to be defined on the sink clock. Therefore, if the clock is connected and the
      # driver is defined, then let's use that.
      set mon_clk [get_bd_pins -quiet [dict_get_default $temp CLK_SRC ""]]
      set mon_clk_to_check [find_bd_objs -quiet -relation connected_to -thru_hier $mon_clk]
      if {$mon_clk_to_check == {}} {
        set mon_clk_to_check $mon_clk
      }
      
      # Find highest frequency clock
      set clk_freq [get_property -quiet CONFIG.FREQ_HZ $mon_clk_to_check]
      if {$clk_freq == ""} {
        set clk_freq [get_property -quiet CONFIG.FREQ_HZ $mon_clk]
      }
      putd "--- DPA CLOCKS: $mon_clk is at $clk_freq Hz"
      if {$clk_freq > $max_clk_freq} {
        set max_clk_freq $clk_freq
        set trace_clk    $mon_clk
        set trace_rst    [get_bd_pins -quiet [dict_get_default $temp RST_SRC ""]]
      }
    }
    
    putd "--- DPA TRACE: clk = $trace_clk, rst = $trace_rst"
    dict set traceDict CLK_SRC $trace_clk
    dict set traceDict RST_SRC $trace_rst
    dict set dpa_opts  TRACE   $traceDict
      
    #putd "New dpa_opts:\n$dpa_opts\n"
    return $dpa_opts
  }; # end get_trace_clock
  
  #################################################################################################
  ######                                  Step 1: Adding IP                                   #####
  #################################################################################################
  
  ###########################################################
  # add_debug_profile_ip
  #  Description:
  #    Insert and partially connect all requested debug/profile IP
  #  Arguments:
  #    dpa_dict    Dictionary containing key/dict pairs
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    dpa_dict dict with potential excess monitors removed
  ###########################################################
  proc add_debug_profile_ip {dpa_dict dpa_opts} {
    if {($dpa_dict == {}) || ($dpa_opts == {})} {
      return
    }
    
    # Ensure number of requested monitors is less than max supported
    variable ::dpa::max_monitors
    set num_monitors [dict size $dpa_dict]

    if {$num_monitors > $max_monitors} {
      send_msg_id "DPA-44" "CRITICAL WARNING" "Unable to support $num_monitors monitors. Limiting to $max_monitors."
      if {[is_drcv]} {
        ::drcv::create_violation PROFILING-02 -d $num_monitors -d $max_monitors
      }

      set count 0
      foreach { obj value } $dpa_dict {
        incr count
        if {$count > $max_monitors} {
          set dpa_dict [dict remove $dpa_dict $obj]
        }
      }
    }

    # Report if large number of trace monitors requested
    # NOTE: consider the special case where AIMs are inserted one per memory type
    variable ::dpa::large_num_trace_monitors
    set num_trace_monitors 0
    foreach { obj value } $dpa_dict {
      set temp [dict get $value CONFIG]
      set detail [dict_get_default $temp DETAIL "counters"]
      set memory [dict_get_default $temp MEMORY "dummy"]
      if {$detail == "all"} {incr num_trace_monitors [llength $memory]}
    }
    if {$num_trace_monitors > $large_num_trace_monitors} {
      send_msg_id "DPA-45" "WARNING" "You requested $num_trace_monitors trace monitors, which can potentially lead to dropped packets."
      if {[is_drcv]} {
        ::drcv::create_violation PROFILING-03 -d $num_trace_monitors
      }
    }

    # Currently, only 32 bit counters in AMs supported on Versal
    variable ::dpa::use_64_bits_am
    if {[is_versal_shell]} {
      set use_64_bits_am 0
    }

    # Specify trace clock for monitor IP
    # NOTE: Use same clocking stragey regardless of isDedicated
    set trace_dict [dict_get_default $dpa_opts   TRACE   {}]
    set trace_clk  [dict_get_default $trace_dict CLK_SRC ""]
    set trace_rst  [dict_get_default $trace_dict RST_SRC ""]

    # Traverse all requested objects to monitor
    set count 0
    foreach { obj value } $dpa_dict {
      set temp [dict get $value CONFIG]
      set typelist [dict_get_default $temp TYPE [list]]
      
      # Which IP to add depends on type and what we're monitoring
      if {[get_bd_cells -quiet $obj] != {}} {
        # Add accelerator monitor (AM)
        set monName "dpa_mon${count}"
        add_accel_monitor $obj $temp $trace_clk $trace_rst $monName $dpa_opts
        incr count
      } elseif {[get_bd_intf_pins -quiet $obj] != {}} {
        foreach type $typelist {
          set monName "dpa_mon${count}"
          if {$type == "data"} {
            if {[is_stream $obj]} {
              # Add AXI stream monitor (ASM)
              add_axi_stream_monitor $obj $temp $trace_clk $trace_rst $monName $dpa_opts
            } else {
              # Add AXI interface monitor (AIM)
              add_axi_interface_monitor $obj $temp $trace_clk $trace_rst $monName $dpa_opts
            }
          } elseif {$type == "protocol"} {
            if {[is_stream $obj]} {
              # Add AXI Stream Protocol Checker (ASPC)
              add_axi_stream_protocol_checker $obj $temp $trace_clk $trace_rst $monName $dpa_opts
            } else {
              # Add Lightweight AXI Protocol Checker (LAPC)
                add_axi_protocol_checker $obj $temp $trace_clk $trace_rst $monName $dpa_opts
            }
          } else {
            send_msg_id "DPA-6" "WARNING" "Did not recognize monitor type $type on object $obj."
          }
          incr count
        }
      }
    }

    return $dpa_dict
  }; # end add_debug_profile_ip
  
  ###########################################################
  # add_accel_monitor
  #  Description:
  #    Insert and partially connect an accelerator monitor
  #  Arguments:
  #    cu          CU to monitor
  #    adict       Dictionary of settinags
  #    trace_clk   Trace clock (BD pin)
  #    trace_rst   Trace reset (BD pin)
  #    monName     Monitor name
  #    dpa_opts    DPA Options dict
  #  Return Value:
  #    None
  ###########################################################
  proc add_accel_monitor { cu adict trace_clk trace_rst monName dpa_opts } {
    variable ::dpa::am_name
    variable ::dpa::emu_am_name
    variable ::dpa::use_64_bits_am
    variable ::dpa::trace_id_am
    variable ::dpa::trace_pin_list
    variable ::dpa::axilite_pin_list
    
    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]
    
    set cuObj   [get_bd_cells -quiet $cu]
    set type    [dict_get_default $adict TYPE "exec"]
    set detail  [dict_get_default $adict DETAIL "counters"]
    set mon_clk [get_bd_pins -quiet [dict_get_default $adict CLK_SRC ""]]
    set mon_rst [get_bd_pins -quiet [dict_get_default $adict RST_SRC ""]]
    set mon_fln [dict_get_default $adict FULLNAME ""]

    if {$cuObj == ""} {
      send_msg_id "DPA-7" "WARNING" "Unable to connect monitor to $cu. No object found."
      return
    }

    # Make sure we have something to attach to. There are three choices:
    #   1. Start/done signals (Fast adapter only; in 2021.1, only exist if BETA_EN property is set)
    #   2. AXI Lite slave
    #   3. HLS ap_ctrl handshake interface
    set_property -quiet CONFIG.BETA_EN true $cuObj

    set startPin [get_bd_pins -quiet "$cu/fa_start"]
    set donePin [get_bd_pins -quiet "$cu/fa_done"]
    set ctrlInterface [get_bd_intf_pins -quiet -of_objects $cuObj -filter {CONFIG.PROTOCOL == AXI4LITE && MODE == Slave}]
    set handshake [get_bd_intf_pins -quiet -of_objects $cuObj -filter {VLNV == "xilinx.com:interface:acc_handshake_rtl:1.0"}]
    
    if {(($startPin == {}) || ($donePin == {})) && ($ctrlInterface == {}) && ($handshake == {})} {
      send_msg_id "DPA-7" "WARNING" "Unable to connect monitor to $cu. No AXI-Lite slave, handshake interface, or start/done signals found."
      return
    }

    # Clock is necesssary
    if {$mon_clk == ""} {
      send_msg_id "DPA-7" "WARNING" "Unable to connect monitor to accelerator $cu. No clock found."
      return
    }
    
    # Add accelerator monitor
    set am_ip [expr {$is_hw_emu ? $emu_am_name : $am_name}]
    set monObject [create_bd_cell -type ip -vlnv $am_ip $monName]
      
    #
    # Properties
    #
    #set_property DONT_PARTITION TRUE $monObject
    set_property CONFIG.MONITOR_MODE 1 $monObject
    set_property CONFIG.EN_AXI_LITE  1 $monObject
    set enableTrace [expr {($detail == "all") ? 1 : 0}]
    set_property CONFIG.ENABLE_TRACE $enableTrace $monObject
    # Only enable stall monitoring if:
    #   1. Not HW emulation;
    #   2. Stall monitoring was requested; and
    #   3. The CU was compiled with stalls
    set stallMon 0
    if {!$is_hw_emu} {
      set stallMon [expr {(($type == "stall") && ([get_bd_pins -quiet $cu/stall_start_ext] != {})) ? 1 : 0}]
      set_property CONFIG.STALL_MON $stallMon $monObject  
    }
    
    if {$use_64_bits_am} {
      set_property CONFIG.COUNT_WIDTH 64 $monObject
    }
    
    if {$enableTrace} {
      set_property CONFIG.TRACE_ID $trace_id_am $monObject
      incr trace_id_am 16
      
      connect_bd_net [get_bd_pins $trace_clk] [get_bd_pins $monName/trace_clk]
      if {$trace_rst != ""} {
        connect_bd_net [get_bd_pins $trace_rst] [get_bd_pins $monName/trace_rst]
      }
      
      # For now, just add trace pin to list 
      lappend trace_pin_list $monName/TRACE_OUT
    }
    
    set currSLR [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cuObj]
    if {$currSLR != ""} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $currSLR $monObject
    }
    
    #
    # Connections
    #
    if {$stallMon} {
      connect_bd_net [get_bd_pins $cu/stall_start_ext] [get_bd_pins $monName/stall_start_ext]
      connect_bd_net [get_bd_pins $cu/stall_done_ext] [get_bd_pins $monName/stall_done_ext]
      connect_bd_net [get_bd_pins $cu/stall_start_str] [get_bd_pins $monName/stall_start_str]
      connect_bd_net [get_bd_pins $cu/stall_done_str] [get_bd_pins $monName/stall_done_str]
      connect_bd_net [get_bd_pins $cu/stall_start_int] [get_bd_pins $monName/stall_start_int]
      connect_bd_net [get_bd_pins $cu/stall_done_int] [get_bd_pins $monName/stall_done_int]
    }

    # Connect to IP to determine start/done of core
    # NOTE: To support FA kernels, we need to first check for raw start/done signals
    #       since the AXI-Lite slave also exists but doesn't have a start/done
    #       register like HLS kernels do.
    if {($startPin != {}) && ($donePin != {})} {
      # Connect to exposed start/done signals
      set_property CONFIG.MONITOR_MODE 2 $monObject
      connect_bd_net [get_bd_pins $monName/event_start] $startPin
      connect_bd_net [get_bd_pins $monName/event_done] $donePin
    } elseif { $ctrlInterface != {} } {
      # Connect to AXI-Lite slave
      set_property CONFIG.MONITOR_MODE 1 $monObject
      connect_bd_intf_net [get_bd_intf_pins $monName/s_axi_mon] $ctrlInterface
    } else {
      # Connect to HLS ap_ctrl interface 
      set_property CONFIG.MONITOR_MODE 3 $monObject
      connect_bd_intf_net [get_bd_intf_pins $monName/mon_ap_ctrl] $handshake
    }
      
    connect_bd_net $mon_clk [get_bd_pins $monName/mon_clk]
    if {$mon_rst != ""} {
      connect_bd_net $mon_rst [get_bd_pins $monName/mon_resetn]  
    } else {
      # TODO: set property to remove reset pin
    }
    
    set insMode [dict_get_default $adict INS_MODE "user"]
    if {!$is_hw_emu || ($insMode == "user")} {
      # For now, just add AXI-Lite pin to list  
      lappend axilite_pin_list $monName/s_axi

      # Properties used by debug_ip_layout
      set_property HDL_ATTRIBUTE.DPA_IP true $monObject
    
      set properties [expr ($use_64_bits_am << 3) + ($stallMon << 2) + 2 + $enableTrace]
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $properties $monObject
      
      # Use fullname from dict if found
      if {$mon_fln != {}} {
        set cu $mon_fln
      }
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME $cu $monObject

    }
  }; # end add_accel_monitor
  
  ###########################################################
  # add_axi_stream_monitor
  #  Description:
  #    Insert and partially connect an AXI stream monitor (ASM)
  #  Arguments:
  #    intf_pin    CU interface pin to monitor
  #    adict       Dictionary of settings
  #    trace_clk   Trace clock (BD pin)
  #    trace_rst   Trace reset (BD pin)
  #    monName     Monitor name
  #    dpa_opts    DPA Options dict
  #  Return Value:
  #    None
  ###########################################################
  proc add_axi_stream_monitor {intf_pin adict trace_clk trace_rst monName dpa_opts} {
    variable ::dpa::asm_name
    variable ::dpa::emu_asm_name
    variable ::dpa::trace_id_asm
    variable ::dpa::port_mem_sep
    variable ::dpa::ip_layout_pipe_name
    variable ::dpa::ip_layout_host_name
    variable ::dpa::trace_pin_list
    variable ::dpa::axilite_pin_list
      
    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]
    
    set type    [dict_get_default $adict TYPE "exec"]
    set detail  [dict_get_default $adict DETAIL "counters"]
    set mon_clk [get_bd_pins -quiet [dict_get_default $adict CLK_SRC ""]]
    set mon_rst [get_bd_pins -quiet [dict_get_default $adict RST_SRC ""]]
    set mon_fln [dict_get_default $adict FULLNAME ""]
    
    # Clock is necesssary
    if {$mon_clk == ""} {
      send_msg_id "DPA-8" "WARNING" "Unable to connect monitor to stream pin $intf_pin. No clock found."
      return
    }
    
    set pinObj [get_bd_intf_pins -quiet $intf_pin]
    if {$pinObj == ""} {
      return
    }
    set cuObj [get_bd_cells -quiet -of $pinObj]
    set pinMode [get_property MODE $pinObj]
    
    # Return if monitor is already connected (k2k Streams)
    set monitors [find_bd_objs -quiet -thru_hier -relation connected_to -end_type monitor $pinObj]
    set numMons [llength [get_bd_cells -quiet -of_objects $monitors -filter {VLNV =~ *onitor*}]]
    if {$numMons >= 1} { return {} }
    
    # Add AXI stream monitor (ASM)
    set asm_ip [expr {$is_hw_emu ? $emu_asm_name : $asm_name}]
    set monObject [create_bd_cell -type ip -vlnv $asm_ip $monName]
      
    #
    # Properties
    #
    # NOTE: counters in SSPM are always 64-bit
    #set_property DONT_PARTITION TRUE $monObject
    set_property CONFIG.EN_AXI_LITE  1 $monObject
    
    set enableTrace 0
    if {$detail == "all"} {
      # Only add trace if TLAST exists
      if {[get_property -quiet CONFIG.HAS_TLAST $pinObj] == 1} {
        set enableTrace 1
      } else {
        send_msg_id "DPA-9" "WARNING" "Unable to add trace to monitor $intf_pin because no TLAST was found."
      }
    }
    set_property CONFIG.ENABLE_TRACE $enableTrace $monObject
    
    set currSLR [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cuObj]
    if {$currSLR != ""} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $currSLR $monObject
    }
    
    # Fullname is of format: "Master-Slave"
    # Three types of connections are possible here
    # (1) Pipe (2) Stream connection to Host (3) Kernel to Kernel stream
    
    # Find endpoint of the port
    set pinEnd  [find_bd_objs -thru_hier -relation connected_to $pinObj]
    set cellEnd [get_bd_cells -quiet -of_objects $pinEnd]
    if {[is_stream_connected_to_pipe $pinObj]} {
      # Pipe
      set pinEnd $ip_layout_pipe_name
    } elseif {[get_property -quiet HDL_ATTRIBUTE.DPA_AIE_TRACE $pinObj] != {}} {
      # Check if AIE trace
      set pinEnd "Trace"
    } elseif {[get_property -quiet SDX_KERNEL $cellEnd] == {}} {
      # If connected object is not a "Kernel", then this stream connection is to a Host
      set pinEnd $ip_layout_host_name
    }
    
    if { $pinMode == "Slave" } {
      set masterName [string trim $pinEnd "/"]
      set slaveName  [string trim $pinObj "/"]
    } else {
      set masterName [string trim $pinObj "/"]
      set slaveName  [string trim $pinEnd "/"]
    }
    
    set    fullName $masterName
    append fullName $port_mem_sep
    append fullName $slaveName

    # Use fullname from dict if found
    if {$mon_fln != {} } {
      set fullName $mon_fln
    }
    set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME $fullName $monObject

    # This property is used by RPC calls in HW Emulation
    if {$is_hw_emu} {
      set monId [string trimleft $fullName "/"]
      set monId [string map {"/" ":"} $monId]
      set_property CONFIG.MONITOR_ID $monId $monObject
    }

    #
    # Connections
    #
    connect_bd_intf_net $pinObj [get_bd_intf_pins "${monName}/MON_AXIS"]
    connect_bd_net $mon_clk [get_bd_pins "${monName}/mon_clk"]
    if {$mon_rst != ""} {
      connect_bd_net $mon_rst [get_bd_pins "${monName}/mon_resetn"]  
    } else {
      # TODO: set property to remove reset pin
    }
    
    # Always connect Trace ports for emulation, used for other purposes also
    # Emlation IP will not generate trace if it is disabled
    if {$enableTrace || $is_hw_emu} {
      set_property CONFIG.DETAILED_TRACE 1 $monObject
      set_property CONFIG.TRACE_ID $trace_id_asm $monObject
      incr trace_id_asm
      
      connect_bd_net [get_bd_pins $trace_clk] [get_bd_pins $monName/trace_clk]
      if {$trace_rst != ""} {
        connect_bd_net [get_bd_pins $trace_rst] [get_bd_pins $monName/trace_rst]
      }
        
      # For now, just add trace pin to list 
      lappend trace_pin_list $monName/TRACE_OUT
    }
    
    set insMode [dict_get_default $adict INS_MODE "user"]
    if {!$is_hw_emu || ($insMode == "user")} {
      # For now, just add AXI-Lite pin to list
      lappend axilite_pin_list $monName/s_axi

      # Properties used by debug_ip_layout
      set_property HDL_ATTRIBUTE.DPA_IP true $monObject
    
      # ASM properties: (slave << 1) + trace
      set properties $enableTrace
      if { $pinMode == "Slave" } { set properties [expr $properties + 2] }
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $properties $monObject
    }
  }; # end add_axi_stream_monitor
  
  ###########################################################
  # add_axi_interface_monitor
  #  Description:
  #    Insert and partially connect an AXI interface monitor (AIM)
  #  Arguments:
  #    intf_pin     CU interface pin to monitor (BD intf pin)
  #    adict        Dictionary of settings
  #    trace_clk    Trace clock (BD pin)
  #    trace_rst    Trace reset (BD pin)
  #    baseMonName  Base monitor name
  #    dpa_opts     DPA options dict
  #  Return Value:
  #    None
  ###########################################################
  proc add_axi_interface_monitor {intf_pin adict trace_clk trace_rst baseMonName dpa_opts} {
    variable ::dpa::aim_name
    variable ::dpa::emu_aim_name
    variable ::dpa::use_64_bits_aim
    variable ::dpa::trace_id_aim
    variable ::dpa::port_mem_sep
    variable ::dpa::ip_layout_pipe_name
    variable ::dpa::ip_layout_host_name
    variable ::dpa::trace_pin_list
    variable ::dpa::axilite_pin_list
      
    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]
    
    set type       [dict_get_default $adict TYPE "exec"]
    set detail     [dict_get_default $adict DETAIL "counters"]
    set mon_clk    [get_bd_pins -quiet [dict_get_default $adict CLK_SRC ""]]
    set mon_rst    [get_bd_pins -quiet [dict_get_default $adict RST_SRC ""]]
    set memoryName [dict_get_default $adict MEMORY ""]
    set minAddress [dict_get_default $adict MIN_ADDRESS ""]
    set maxAddress [dict_get_default $adict MAX_ADDRESS ""]
    set mon_fln    [dict_get_default $adict FULLNAME ""]
    
    # Clock is necesssary
    if {$mon_clk == ""} {
      send_msg_id "DPA-10" "WARNING" "Unable to connect monitor to pin $intf_pin. No clock found."
      return
    }
    
    set pinObj [get_bd_intf_pins $intf_pin]
    set cuObj [get_bd_cells -of $pinObj]
    #putd "pinObj = $pinObj, cuObj = $cuObj"
    
    # For a given interface pin object, we insert one AIM per memory resource.
    # The memory name is a list with a length equal to the number of resources. 
    # Min/max addresses are similar but are only defined if > 1 resource.
    set numMons [llength $memoryName]
    
    for { set i 0 } { $i < $numMons } { incr i } {  
      set monName $baseMonName
      if {$numMons > 1} {
        append monName "_${i}"
      }
      
      # Add AXI interface monitor (AIM)
      set aim_ip [expr {$is_hw_emu ? $emu_aim_name : $aim_name}]
      set monObject [create_bd_cell -type ip -vlnv $aim_ip $monName]
    
      #
      # Properties
      #
      # General configuration
      #set_property DONT_PARTITION TRUE $monObject
      set_property CONFIG.ENABLE_COUNTERS 1 $monObject
      set_property CONFIG.CAPTURE_BURSTS  0 $monObject
      set_property CONFIG.ENABLE_DEBUG    1 $monObject
      set_property CONFIG.EN_AXI_LITE     1 $monObject
      set_property CONFIG.MODE_SDACCEL    1 $monObject
    
      if {$use_64_bits_aim} { 
        set_property CONFIG.COUNT_WIDTH 64 $monObject
      }
    
      set enableTrace [expr {($detail == "all") ? 1 : 0}]
      set_property CONFIG.ENABLE_TRACE $enableTrace $monObject
    
      set currSLR [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cuObj]
      if {$currSLR != ""} {
        set_property -quiet CONFIG.SLR_ASSIGNMENTS $currSLR $monObject
      }
    
      # Address filtering (if needed)
      if {($minAddress != "") && ($maxAddress != "")} {
        set_property CONFIG.ENABLE_ADDR_FILTER 1 $monObject
        set_property CONFIG.ADDR_MIN [lindex $minAddress $i] $monObject
        set_property CONFIG.ADDR_MAX [lindex $maxAddress $i] $monObject
      }
        
      set fullName $intf_pin
      if {$memoryName != ""} {
        append fullName $port_mem_sep
          append fullName [lindex $memoryName $i]
      }

      # Use fullname from dict if found
      if {$mon_fln != {} } {
        set fullName $mon_fln
      }

      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME $fullName $monObject

      # This property is used by RPC calls in HW Emulation
      if {$is_hw_emu} {
        set monId [string trimleft $fullName "/"]
        set monId [string map {"/" ":"} $monId]
        set_property CONFIG.MONITOR_ID $monId $monObject
      }

      #
      # Connections
      #
      connect_bd_intf_net $pinObj [get_bd_intf_pins "${monName}/MON_M_AXI"]
      connect_bd_net $mon_clk [get_bd_pins "${monName}/mon_clk"]
      if {$mon_rst != ""} {
        connect_bd_net $mon_rst [get_bd_pins "${monName}/mon_resetn"]  
      } else {
        # TODO: set property to remove reset pin
      }
      
      if {$enableTrace} {
        connect_bd_net [get_bd_pins $trace_clk] [get_bd_pins "${monName}/trace_clk"]
        if {$trace_rst != ""} {
          connect_bd_net [get_bd_pins $trace_rst] [get_bd_pins "${monName}/trace_rst"]
        }
        
        set_property CONFIG.TRACE_READ_ID  $trace_id_aim $monObject
        set_property CONFIG.TRACE_WRITE_ID [expr $trace_id_aim + 1] $monObject
        incr trace_id_aim 2
        
        # TODO: Add support for ap_ctrl_none
        set cuAxiLiteSlave [get_bd_intf_pins -of_objects $cuObj -filter {CONFIG.PROTOCOL == AXI4LITE && MODE == Slave}]
        connect_bd_intf_net -quiet [get_bd_intf_pins "${monName}/MON_S_AXI"] $cuAxiLiteSlave
        
        # For now, just add trace pins to list 
        lappend trace_pin_list $monName/TRACE_OUT_0
        lappend trace_pin_list $monName/TRACE_OUT_1
      }
        
      set insMode [dict_get_default $adict INS_MODE "user"]
      if {!$is_hw_emu || ($insMode == "user")} {
        # For now, just add AXI-Lite pin to list
        lappend axilite_pin_list $monName/s_axi

        # Properties used by debug_ip_layout
        set_property HDL_ATTRIBUTE.DPA_IP true $monObject
      
        # AIM properties: (64bits << 3) + (non-kernel << 2) + (counters << 1) + trace
        set properties [expr ($use_64_bits_aim << 3) + 2 + $enableTrace]
        set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $properties $monObject
      }
    }; # for numMons
  }; # end add_axi_interface_monitor
  
  ###########################################################
  # add_axi_stream_protocol_checker
  #  Description:
  #    Insert and partially connect an AXI stream Protocol Checker (ASPC)
  #  Arguments:
  #    intf_pin    CU interface pin to monitor
  #    adict       Dictionary of settings
  #    trace_clk   Trace clock (BD pin)
  #    trace_rst   Trace reset (BD pin)
  #    monName     Monitor name
  #    dpa_opts    Dictionary of options 
  #  Return Value:
  #    None
  ###########################################################
  proc add_axi_stream_protocol_checker {intf_pin adict trace_clk trace_rst monName dpa_opts} {
    variable ::dpa::aspc_name
    variable ::dpa::axilite_pin_list
      
    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]

    set monClock [get_bd_pins -quiet [dict_get_default $adict CLK_SRC ""]]
    set monReset [get_bd_pins -quiet [dict_get_default $adict RST_SRC ""]]
    
    # Clock is necesssary
    if {$monClock == ""} {
      putd "--- DPA: Unable to connect ASPC to pin $intf_pin without clock"
      return
    }
    
    set pinObj [get_bd_intf_pins $intf_pin]
    set cuObj [get_bd_cells -of $pinObj]
    #putd "pinObj = $pinObj, cuObj = $cuObj"
    
    # Add AXI stream Protocol Checker (ASPC)
    set monObject [create_bd_cell -type ip -vlnv $aspc_name $monName]
    
    #
    # Properties
    #
    set_property CONFIG.ENABLE_CONTROL 1 $monObject 
    
    set currSLR [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cuObj]
    if {$currSLR != ""} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $currSLR $monObject
    }
      
    #
    # Connections
    #
    connect_bd_intf_net [get_bd_intf_pins $monName/PC_AXIS] $pinObj
    
    connect_bd_net $monClock [get_bd_pins $monName/aclk]
    connect_bd_net $monReset [get_bd_pins $monName/aresetn]
    
    set insMode [dict_get_default $adict INS_MODE "user"]
    if {!$is_hw_emu || ($insMode == "user")} {
      # For now, just add AXI-Lite pin to list
      lappend axilite_pin_list $monName/S_AXI
      
      # Properties used by debug_ip_layout
      set_property HDL_ATTRIBUTE.DPA_IP            true      $monObject
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0         $monObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $intf_pin $monObject
    }
  }; # end add_axi_stream_protocol_checker
  
  ###########################################################
  # add_axi_protocol_checker
  #  Description:
  #    Insert and partially connect a Lightweight AXI Protocol Checker (LAPC)
  #  Arguments:
  #    intf_pin     CU interface pin to monitor (BD intf pin)
  #    adict        Dictionary of settings
  #    trace_clk    Trace clock (BD pin)
  #    trace_rst    Trace reset (BD pin)
  #    monName      Monitor name
  #    dpa_opts    Dictionary of options 
  #  Return Value:
  #    None
  ###########################################################
  proc add_axi_protocol_checker {intf_pin adict trace_clk trace_rst monName dpa_opts} {
    variable ::dpa::lapc_name
    variable ::dpa::axilite_pin_list

    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]
      
    set monClock [get_bd_pins -quiet [dict_get_default $adict CLK_SRC ""]]
    set monReset [get_bd_pins -quiet [dict_get_default $adict RST_SRC ""]]
    
    # Clock is necesssary
    if {$monClock == ""} {
      send_msg_id "DPA-11" "WARNING" "Unable to connect LAPC to pin $intf_pin. No clock found."
      return
    }
    
    set pinObj [get_bd_intf_pins $intf_pin]
    set cuObj [get_bd_cells -of $pinObj]
    #putd "pinObj = $pinObj, cuObj = $cuObj"
    
    # Add Lightweight AXI Protocol Checker (LAPC)
    set monObject [create_bd_cell -type ip -vlnv $lapc_name $monName]
    
    #
    # Properties
    #
    set_property -dict [list CONFIG.LIGHT_WEIGHT {1}]                               $monObject 
    set_property -dict [list CONFIG.ENABLE_CONTROL {1}]                             $monObject
    set_property -dict [list CONFIG.MAX_RD_BURSTS {64} CONFIG.MAX_WR_BURSTS {64}]   $monObject
    set_property -dict [list CONFIG.MAX_AW_WAITS {1024} CONFIG.MAX_AR_WAITS {1024}] $monObject
    set_property -dict [list CONFIG.MAX_W_WAITS {1024} CONFIG.MAX_R_WAITS {1024}]   $monObject
    set_property -dict [list CONFIG.MAX_B_WAITS {1024}]                             $monObject
    set_property -dict [list CONFIG.MAX_CONTINUOUS_WTRANSFERS_WAITS {65536}]        $monObject
    set_property -dict [list CONFIG.MAX_WLAST_TO_AWVALID_WAITS {65536}]             $monObject
    set_property -dict [list CONFIG.MAX_WRITE_TO_BVALID_WAITS {65536}]              $monObject
    set_property -dict [list CONFIG.MAX_CONTINUOUS_RTRANSFERS_WAITS {65536}]        $monObject
    
    set currSLR [get_property -quiet CONFIG.SLR_ASSIGNMENTS $cuObj]
    if {$currSLR != ""} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $currSLR $monObject
    }
    
    #
    # Connections
    #
    connect_bd_intf_net [get_bd_intf_pins $monName/PC_AXI] $pinObj
    
    connect_bd_net $monClock [get_bd_pins $monName/aclk]
    connect_bd_net $monReset [get_bd_pins $monName/aresetn]
    
    set insMode [dict_get_default $adict INS_MODE "user"]
    if {!$is_hw_emu || ($insMode == "user")} {
      # For now, just add AXI-Lite pin to list
      lappend axilite_pin_list $monName/s_axi

      # Properties used by debug_ip_layout
      set_property HDL_ATTRIBUTE.DPA_IP            true      $monObject
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0         $monObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $intf_pin $monObject
    }
  }; # end add_axi_protocol_checker
  
  #################################################################################################
  ######                          Step 2 - Add Trace Infrastructure                           #####
  #################################################################################################

  ###########################################################
  # add_trace_infrastructure
  #  Description:
  #    Add and connect the trace infrastructure 
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    None
  ###########################################################
  proc add_trace_infrastructure {dpa_opts} {
    variable ::dpa::trace_hub_name
    variable ::dpa::trace_s2mm_name
    variable ::dpa::trace_pin_list
    variable ::dpa::axilite_pin_list
    variable ::dpa::trace_fifo_size_properties
    
    if {($dpa_opts == {}) || ($trace_pin_list == {})} {
      return
    }
    
    # Trace storage/offload
    set offloadDict [dict_get_default $dpa_opts TRACE_OFFLOAD {}]
    if {$offloadDict == {}} {
      return
    }
    
    # Catch emulation and insert different IP structure
    set settingDict  [dict_get_default $dpa_opts  SETTINGS {}]
    set is_hw_emu  [dict_get_default $settingDict HW_EMU false]
    if {$is_hw_emu} {
      add_emu_trace_infrastructure $dpa_opts
      return
    }

    set is_embedded [dict_get_default $settingDict IS_EMBEDDED false]

    # Verify support for number of trace ports
    set numPorts [llength $trace_pin_list]
    if {$numPorts > 63} {
      send_msg_id "DPA-12" "CRITICAL WARNING" "Trace hub does not support $numPorts trace buses. Limiting to 63."
      set numPorts 63
    }
    
    # Important trace storage/offload settings
    set slrAssignment            [dict_get_default $offloadDict  SLR           ""]
    set traceMemory              [dict_get_default $offloadDict  MEM_SPACE     "FIFO"]
    set traceMemoryIndex         [dict_get_default $offloadDict  MEM_INDEX     0]
    set traceMemoryType          [dict_get_default $offloadDict  MEM_TYPE      "DDR"]
    set traceDepth               [dict_get_default $offloadDict  DEPTH         8192]
    set isDedicated              [dict_get_default $offloadDict  DEDICATED     1]
    set useHierarchy             [dict_get_default $offloadDict  USE_HIERARCHY true]

    # Trace offload master/clock/reset are only used for FIFO storage
    if {$traceMemory == "FIFO"} {
      set offloadMasterName      [dict_get_default $offloadDict  MASTER        ""]
      set offloadMasterCell      [get_bd_cells -quiet $offloadMasterName]
      set traceOffloadClock      [get_bd_pins -quiet [dict_get_default $offloadDict  CLK_SRC ""]]
      set traceOffloadReset      [get_bd_pins -quiet [dict_get_default $offloadDict  RST_SRC ""]]

      # Catch different types of trace offload masters
      #   1. BD cell - assume it's an interconnect
      #   2. BD interface pin - use it directly
      if {$offloadMasterCell != {}} {
        # Get clock
        if {$traceOffloadClock == {}} {
          set traceOffloadClock  [lindex [get_bd_pins -quiet -of $offloadMasterCell -filter {TYPE == clk}] 0]
        }

        # Get reset
        if {$traceOffloadReset == {}} {
          set traceOffloadReset  [lindex [get_bd_pins -quiet -of $offloadMasterCell -filter {TYPE == rst}] 0]
        }

        # Open up master on interconnect and use it
        set traceOffloadMaster   [add_master_to_interconnect $offloadMasterCell $traceOffloadClock $traceOffloadReset]  
      } else {
        set traceOffloadMaster   [get_bd_intf_pins -quiet $offloadMasterName]

        if {$traceOffloadMaster == {}} {
          set traceOffloadMaster [get_bd_intf_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_TRACE_MASTER == true}]
        }

        # If not dedicated, add 1x2 interconnect; if dedicated, remove slaves
        if {!$isDedicated} {
          set traceOffloadMaster [add_nondedicated_interconnect $traceOffloadMaster]
        } else {
          remove_all_slaves $traceOffloadMaster
        }
      }

      # Keep trying to get a trace offload clock
      if {$traceOffloadClock == {}} {
        set traceOffloadClock    [bd::clkrst::Get_associated_clk $traceOffloadMaster 2]
        if {$traceOffloadClock == {}} {
          set traceOffloadClock  [bd::clkrst::get_sink_clk $traceOffloadMaster]
        }
      }
      
      # Keep trying to get a trace offload reset
      if {$traceOffloadReset == {}} {
        set traceOffloadReset    [bd::clkrst::get_sink_rst $traceOffloadClock]

        if {$traceOffloadReset == {}} {
          if {[get_property -quiet DIR $traceOffloadClock] == "O"} {
            set clkDriver $traceOffloadClock
          } else {
            set clkDriver [find_bd_objs -quiet -relation connected_to -thru_hier $traceOffloadClock]
          }
          set clkSinks    [find_bd_objs -quiet -relation connected_to -thru_hier $clkDriver]
           
          # Traverse all clock sinks and find first that has associated reset
          foreach clkSink $clkSinks {
            set currReset [bd::clkrst::get_sink_rst $clkSink]
            if {$currReset != {}} {
              # Grab driver of this reset and make sure it's a pin
              set traceOffloadReset [get_bd_pins -quiet [find_bd_objs -quiet -relation connected_to -thru_hier $currReset]]
              if {$traceOffloadReset != {}} {break}
            }
          }
        }
      }

      putd "--- DPA: Trace Offload: master = $traceOffloadMaster, clock = $traceOffloadClock, reset = $traceOffloadReset"
    } else {
      set traceOffloadSlave      [get_trace_offload_slave $offloadDict]
    }
    
    set traceDict                [dict_get_default $dpa_opts      TRACE {}]
    set traceClock               [get_bd_pins -quiet [dict_get_default $traceDict    CLK_SRC ""]]
    set traceReset               [get_bd_pins -quiet [dict_get_default $traceDict    RST_SRC ""]]
    putd "--- DPA: Trace: clock = $traceClock, reset = $traceReset"
    
    # Instantiate the trace integrator/hub
    set hubName "dpa_hub"
    set hubObject [create_bd_cell -type ip -vlnv $trace_hub_name $hubName]
    set_property HDL_ATTRIBUTE.DPA_IP            true     $hubObject
    set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0        $hubObject
    set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $hubName $hubObject

    # Use same clocking stragey regardless of isDedicated
    connect_bd_net $traceClock [get_bd_pins "${hubName}/trace_clk"]
    connect_bd_net $traceClock [get_bd_pins "${hubName}/mon_clk"]
    if {$traceReset != ""} {
      connect_bd_net $traceReset [get_bd_pins "${hubName}/trace_resetn"]
      connect_bd_net $traceReset [get_bd_pins "${hubName}/mon_resetn"]
    }
  
    #putd "Configuring trace hub for $numPorts ports"
    set_property CONFIG.NUM_TRACE_PORTS $numPorts $hubObject
    if {[get_param ips.enableSLRParameter] > 0} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $slrAssignment $hubObject
    }

    # For now, just add the control pin to the list
    # NOTE: we add it to the beginning of the list to ensure it's connected
    #lappend axilite_pin_list [get_bd_intf_pins "${hubName}/S_AXI"]
    set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${hubName}/S_AXI"]]
    
    # Connect all trace ports to trace hub
    for { set p 0 } { $p < $numPorts } { incr p } {
      putd "--- DPA: Connecting port $p"
      connect_bd_intf_net [get_bd_intf_pins [lindex $trace_pin_list $p]] [get_bd_intf_pins "${hubName}/TRACE_${p}"]
    }
  
    # Add CDC and AXI Stream FIFO (if requested)
    if {$traceMemory == "FIFO"} {
      # Instantiate the AXI4-Stream Clock Converter
      set cdcName "dpa_cdc"
      set cdcObject [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter $cdcName]
      
      connect_bd_net $traceClock [get_bd_pins "${cdcName}/s_axis_aclk"]
      if {$traceReset != ""} {
        connect_bd_net $traceReset [get_bd_pins "${cdcName}/s_axis_aresetn"]
      }
      
      connect_bd_net $traceOffloadClock   [get_bd_pins "${cdcName}/m_axis_aclk"]
      if {$traceOffloadReset != ""} {
        connect_bd_net $traceOffloadReset   [get_bd_pins "${cdcName}/m_axis_aresetn"]
      }
      
      # Instantiate the FIFO
      set fifoName "dpa_fifo"
      set fifoObject [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s $fifoName]
      set_property CONFIG.C_DATA_INTERFACE_TYPE  1              $fifoObject
      if { [is_soc_shell] || $is_embedded == "true" } {
        set_property CONFIG.C_S_AXI4_DATA_WIDTH  32             $fifoObject
      } else {
        set_property CONFIG.C_S_AXI4_DATA_WIDTH  64             $fifoObject
      }

      set_property CONFIG.C_RX_FIFO_DEPTH        $traceDepth    $fifoObject
      set_property CONFIG.C_USE_RX_CUT_THROUGH   true           $fifoObject
      set_property CONFIG.C_USE_TX_DATA          0              $fifoObject
      # Set cascade height on larger FIFO depths so it passes timing
      #if { $traceDepth > 32768 } {
        set_property CONFIG.C_RX_CASCADE_HEIGHT  1              $fifoObject
      #}
      if {[get_param ips.enableSLRParameter] > 0} {
        set_property -quiet CONFIG.SLR_ASSIGNMENTS $slrAssignment $fifoObject
      }
      
      set fifoProp [dict get $trace_fifo_size_properties $traceDepth]
      set_property HDL_ATTRIBUTE.DPA_IP            true      $fifoObject
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $fifoProp $fifoObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $fifoName $fifoObject

      connect_bd_net $traceOffloadClock [get_bd_pins "${fifoName}/s_axi_aclk"]
      if {$traceOffloadReset != ""} {
        connect_bd_net $traceOffloadReset [get_bd_pins "${fifoName}/s_axi_aresetn"]
      }
      
      # For now, just add the control pin to the list
      # NOTE: we add it to the beginning of the list to ensure it's connected
      #lappend axilite_pin_list [get_bd_intf_pins "${fifoName}/S_AXI"]
      set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${fifoName}/S_AXI"]]
      
      #set traceOffloadBitWidth [get_property -quiet CONFIG.DATA_WIDTH $traceOffloadMaster]
      #putd "--- DPA: traceOffloadBitWidth = $traceOffloadBitWidth"
      
      # Add bit width converter to trace offload master (if needed)
      if { [is_soc_shell] || $is_embedded == "true" } {
        # Create an AXI-4 Stream Data Width Converter to go between
        #  the trace events coming from the trace integrator and the
        #  cross clock converter. This is necessary because XRT/PetaLinux 
        #  currently only supports 32 bit accesses. 
        # 
        # As a consequence, the FIFO only holds half the entries because 
        #  it takes two entries to hold one 64-bit trace word.
        set converterName "dpa_converter"
        set converterObj [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter $converterName]
      
        # Make the entry side 64-bits and the exit side 32-bits
        set_property CONFIG.S_TDATA_NUM_BYTES 8 $converterObj
        set_property CONFIG.M_TDATA_NUM_BYTES 4 $converterObj
      
        # Connect the clocks and resets of the data width converter
        connect_bd_net $traceClock [get_bd_pins "${converterName}/aclk"]
        if {$traceReset != ""} {
          connect_bd_net $traceReset [get_bd_pins "${converterName}/aresetn"]
        }
      
        # Put the converter in the middle
        connect_bd_intf_net [get_bd_intf_pins "${converterName}/S_AXIS"] [get_bd_intf_pins "${hubName}/M_AXIS"]
        connect_bd_intf_net [get_bd_intf_pins "${converterName}/M_AXIS"] [get_bd_intf_pins "${cdcName}/S_AXIS"]

        # Make sure interconnect slave ports have a register slice or else timing is poor
        # NOTE: This issue came up on the zcu104 (CR 1079744)
        set traceOffloadCell [get_bd_cells -quiet -of_object $traceOffloadMaster -filter {VLNV =~ "*axi_interconnect*"}]
        if {$traceOffloadCell != {}} {
          set numSlaves [get_property -quiet CONFIG.NUM_SI $traceOffloadCell]
          for { set s 0 } { $s < $numSlaves } { incr s } {
            set slaveProperty [expr { ($s > 9) ? "CONFIG.S${s}_HAS_REGSLICE" : "CONFIG.S0${s}_HAS_REGSLICE" } ]
            set hasRegslice [get_property -quiet $slaveProperty $traceOffloadCell]
            if {$hasRegslice == 0} {
              set_property $slaveProperty 1 $traceOffloadCell
            }
          }
        }
      } else {
        # Connect the trace integrator into the clock converter
        connect_bd_intf_net [get_bd_intf_pins "${hubName}/M_AXIS"] [get_bd_intf_pins "${cdcName}/S_AXIS"]
      }

      # Connect the clock converter into the FIFO
      connect_bd_intf_net [get_bd_intf_pins "${fifoName}/AXI_STR_RXD"] [get_bd_intf_pins "${cdcName}/M_AXIS"]

      # Connect the AXI-Full master to the trace FIFO
      # NOTE: for better timing, we also insert a register slice
      set regSliceName    "dpa_reg_slice"
      set regSliceObject  [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice $regSliceName]
      set regSlice2Name   "dpa_reg_slice2"
      set regSlice2Object [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice $regSlice2Name]
      
      connect_bd_net $traceOffloadClock [get_bd_pins "${regSliceName}/aclk"]
      connect_bd_net $traceOffloadClock [get_bd_pins "${regSlice2Name}/aclk"]
      if {$traceOffloadReset != {}} {
        connect_bd_net $traceOffloadReset [get_bd_pins "${regSliceName}/aresetn"]
        connect_bd_net $traceOffloadReset [get_bd_pins "${regSlice2Name}/aresetn"]
      }
      
      connect_bd_intf_net $traceOffloadMaster [get_bd_intf_pins "${regSliceName}/S_AXI"]
      connect_bd_intf_net [get_bd_intf_pins "${regSliceName}/M_AXI"] [get_bd_intf_pins "${regSlice2Name}/S_AXI"]
      connect_bd_intf_net [get_bd_intf_pins "${regSlice2Name}/M_AXI"] [get_bd_intf_pins "${fifoName}/S_AXI_FULL"]
      
      # Assign address to AXI Full segment
      # NOTE: Ensure FIFO is highest address amongst all slaves connected to the master. This is required
      # because the FIFO only supports 32-bit addressing. (CR-1027849)
      set addressingMaster     [find_bd_objs -quiet -thru_hier -relation addressing_master $traceOffloadMaster]
      set addressableSlaves    [find_bd_objs -quiet -relation addressable_slave -thru_hier $addressingMaster]
      set addressableSlaveSegs [get_bd_addr_segs -quiet -of_objects $addressableSlaves]
      set allSlaveSegs         [get_bd_addr_segs -quiet -of_objects $addressableSlaveSegs]
      putd "--- DPA: addressingMaster = $addressingMaster, allSlaveSegs = $allSlaveSegs"

      set maxOffset 0
      foreach seg $allSlaveSegs {    
        set offset [get_property -quiet OFFSET $seg]
        if {$offset != ""} {
          set range [get_property -quiet RANGE $seg]
          if {($offset >= $maxOffset) && ($range != "")} {
            set maxOffset [expr $offset + $range]
          }
        }
      }
        
      # First, auto-assign an address to make slave segment available
      set fifoSeg [get_bd_addr_segs -quiet -of_objects [get_bd_intf_pins "${fifoName}/S_AXI_FULL"]]
      assign_bd_address -quiet $fifoSeg
      set fifoSlaveSeg [get_bd_addr_segs -quiet -of_objects $fifoSeg]

      # Next, if possible, move the base address to the highest address amongst all similarly connected slaves
      if {$maxOffset > 0} {
        puts "--- DPA: Setting address to [format 0x%X $maxOffset] for ${fifoName}/S_AXI_FULL"
        set_property -quiet OFFSET $maxOffset $fifoSlaveSeg
      }

      # Update configurations on AXI FULL in AXI FIFO IP
      # NOTE: For all current scenarios, the offset address is 64-bit aligned.
      # Also, DPA FIFO has 8K address range. While calculating end address, 
      # wrap-around at 32-bit boundaries is not considered.
      set fifoOffset     [lindex [get_property -quiet OFFSET $fifoSlaveSeg] 0]
      set fifoRange      [lindex [get_property -quiet RANGE  $fifoSlaveSeg] 0]
      set startAddr32bit [expr $fifoOffset   & 0x0ffffffff]
      set endAddr32bit   [expr $fifoOffset + $fifoRange - 1]
      set endAddr32bit   [expr $endAddr32bit & 0x0ffffffff]
      
      # Avoid potential errors due to AXI4_HIGHADDR not being far enough from AXI4_BASEADDR
      set_property CONFIG.C_AXI4_BASEADDR 0x0 $fifoObject

      set_property CONFIG.C_AXI4_HIGHADDR [format 0x%X $endAddr32bit] $fifoObject
      set_property CONFIG.C_AXI4_BASEADDR [format 0x%X $startAddr32bit] $fifoObject
      puts "--- DPA: FIFO C_AXI4_BASEADDR = [get_property CONFIG.C_AXI4_BASEADDR $fifoObject]"
      puts "--- DPA: FIFO C_AXI4_HIGHADDR = [get_property CONFIG.C_AXI4_HIGHADDR $fifoObject]"
    } else {
      # Instantiate trace S2MM HLS kernel
      # NOTE: useHierarchy = false for certain u280 platforms to circumvent a bug
      set dmaName [expr { $useHierarchy ? "dpa_trace_s2mm" : "xdpa_trace_s2mm" } ]
      set dmaObject [create_bd_cell -type ip -vlnv $trace_s2mm_name $dmaName]
        
      connect_bd_net $traceClock [get_bd_pins -auto_enable "${dmaName}/ap_clk"]
      connect_bd_net $traceReset [get_bd_pins -auto_enable "${dmaName}/ap_rst_n"]
        
      set dmaStreamName "s_axis"
      set dmaSlaveName "s_axi_control"
      set dmaMasterName "m_axi_gmem"
      
      connect_bd_intf_net [get_bd_intf_pins "${hubName}/M_AXIS"] [get_bd_intf_pins "${dmaName}/$dmaStreamName"]
      
      # For now, just add the control pin to the list
      # NOTE: we add it to the beginning of the list to ensure it's connected
      #lappend axilite_pin_list [get_bd_intf_pins "${dmaName}/$dmaSlaveName"]
      set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${dmaName}/$dmaSlaveName"]]
      
      set_property HDL_ATTRIBUTE.DPA_IP            true           $dmaObject
      # bit 0 is set for AIE DMA
      set dmaProperties [expr { ($traceMemoryIndex == {}) ? 0 : ($traceMemoryIndex << 1) } ]
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $dmaProperties $dmaObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $dmaName       $dmaObject
      
      # Connect to trace offload slave
      connect_trace_offload_slave $traceOffloadSlave $traceMemoryType $traceMemory ${dmaName}/${dmaMasterName} $traceClock $traceReset
    }
  }; # end add_trace_infrastructure

  ###########################################################
  # add_emu_trace_infrastructure
  #  Description:
  #    Add and connect the trace infrastructure 
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    None
  ###########################################################
  proc add_emu_trace_infrastructure {dpa_opts} {
    variable ::dpa::emu_trace_hub_name
    variable ::dpa::trace_s2mm_name
    variable ::dpa::trace_pin_list
    variable ::dpa::axilite_pin_list
    variable ::dpa::trace_fifo_size_properties
    
    set offloadDict            [dict_get_default $dpa_opts      TRACE_OFFLOAD {}]
    set isDedicated            [dict_get_default $offloadDict   DEDICATED      1]
    set offloadMasterName      [dict_get_default $offloadDict   MASTER        ""]
    set offloadMasterCell      [get_bd_cells -quiet $offloadMasterName]
    set traceOffloadClock      [get_bd_pins -quiet [dict_get_default $offloadDict  CLK_SRC ""]]
    set traceOffloadReset      [get_bd_pins -quiet [dict_get_default $offloadDict  RST_SRC ""]]

    # Determine inclusion of trace IP in debug_ip_layout
    # NOTE: We need to ensure there's at least one profiling IP. If none were enabled for 
    # trace, then we wouldn't have gotten this far (trace_pin_list would be empty).
    set addToDebugIpLayout false
    set debugIpList [get_bd_cells -quiet -hier -filter {HDL_ATTRIBUTE.DPA_IP == true}]
    foreach debugIp $debugIpList {
      if {[is_profiling_ip $debugIp]} {
        set addToDebugIpLayout true
        break
      }
    }
    
    # Catch different types of trace offload masters
    #   1. BD cell - assume it's an interconnect
    #   2. BD interface pin - use it directly
    if {$offloadMasterCell != {}} {
      # Get clock
      if {$traceOffloadClock == {}} {
        set traceOffloadClock  [lindex [get_bd_pins -quiet -of $offloadMasterCell -filter {TYPE == clk}] 0]
      }

      # Get reset
      if {$traceOffloadReset == {}} {
        set traceOffloadReset  [lindex [get_bd_pins -quiet -of $offloadMasterCell -filter {TYPE == rst}] 0]
      }

      # Open up master on interconnect and use it
      set traceOffloadMaster   [add_master_to_interconnect $offloadMasterCell $traceOffloadClock $traceOffloadReset]
    } else {
      set traceOffloadMaster   [get_bd_intf_pins -quiet $offloadMasterName]

      if {$traceOffloadMaster == {}} {
        set traceOffloadMaster [get_bd_intf_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_TRACE_MASTER == true}]
      }

      # If not dedicated, add 1x2 interconnect; if dedicated, remove slaves
      if {!$isDedicated} {
        set traceOffloadMaster [add_nondedicated_interconnect $traceOffloadMaster]
      } else {
        remove_all_slaves $traceOffloadMaster
      }
    }
    
    set traceOffloadSlave      [get_trace_offload_slave $offloadDict]
    set slrAssignment          [dict_get_default $offloadDict   SLR       ""]
    set traceMemory            [dict_get_default $offloadDict   MEM_SPACE "FIFO"]
    set traceMemoryIndex       [dict_get_default $offloadDict   MEM_INDEX ""]
    set traceMemoryType        [dict_get_default $offloadDict   MEM_TYPE  "DDR"]
    set traceDepth             [dict_get_default $offloadDict   DEPTH     8192]
    
    set traceDict              [dict_get_default $dpa_opts      TRACE {}]
    set traceClock             [get_bd_pins -quiet [dict_get_default $traceDict    CLK_SRC ""]]
    set traceReset             [get_bd_pins -quiet [dict_get_default $traceDict    RST_SRC ""]]
    putd "--- DPA: traceClock = $traceClock, traceOffloadClock = $traceOffloadClock"
    set settingDict            [dict_get_default $dpa_opts  SETTINGS {}]
    set is_embedded            [dict_get_default $settingDict IS_EMBEDDED false]
    
    # Instantiate the trace integrator/hub
    set hubName "dpa_hub"
   
    set hubObject [create_bd_cell -type ip -vlnv $emu_trace_hub_name $hubName]
    if { [is_soc_shell] || $is_embedded == "true" } {
       set_property CONFIG.S_AXIMM_DATA_WIDTH  32             $hubObject
       set_property CONFIG.S_AXIMM_ADDR_RANGE  16777216       $hubObject
    } else {
       set_property CONFIG.S_AXIMM_DATA_WIDTH  64             $hubObject
    }

    if {$addToDebugIpLayout} {
      set_property HDL_ATTRIBUTE.DPA_IP            true     $hubObject
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0        $hubObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $hubName $hubObject
    }

    # Use same clocking stragey regardless of isDedicated
    connect_bd_net $traceClock [get_bd_pins "${hubName}/trace_clk"]
    connect_bd_net $traceClock [get_bd_pins "${hubName}/axilite_clk"]
    if {$traceReset != ""} {
      connect_bd_net $traceReset [get_bd_pins "${hubName}/trace_aresetn"]
      connect_bd_net $traceReset [get_bd_pins "${hubName}/axilite_aresetn"]
    }
  
    set numPorts [llength $trace_pin_list]
    if {$numPorts > 63} {
      send_msg_id "DPA-12" "CRITICAL WARNING" "Trace hub does not support $numPorts trace buses. Limiting to 63."
      set numPorts 63
    }
    
    #putd "Configuring trace hub for $numPorts ports"
    set_property CONFIG.NUM_TRACE_PORTS $numPorts $hubObject
    if {[get_param ips.enableSLRParameter] > 0} {
      set_property -quiet CONFIG.SLR_ASSIGNMENTS $slrAssignment $hubObject
    }

    # For now, just add the control pin to the list
    # NOTE: we add it to the beginning of the list to ensure it's connected
    #lappend axilite_pin_list [get_bd_intf_pins "${hubName}/S_AXIHUB"]
    set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${hubName}/S_AXIHUB"]]
    
    # Connect all trace ports to trace hub
    for { set p 0 } { $p < $numPorts } { incr p } {
      #putd "Connecting port $p"
      connect_bd_intf_net [get_bd_intf_pins [lindex $trace_pin_list $p]] [get_bd_intf_pins "${hubName}/TRACE_IN_${p}"]
    }
  
    # Emulation trace hub includes FIFO support
    if {$traceMemory == "FIFO"} {
      connect_bd_net $traceOffloadClock [get_bd_pins "${hubName}/s_aximm_clk"]
      if {$traceOffloadReset != ""} {
        connect_bd_net $traceOffloadReset [get_bd_pins "${hubName}/s_aximm_aresetn"]
      }

      # For now, just add the control pin to the list
      # NOTE: we add it to the beginning of the list to ensure it's connected
      #lappend axilite_pin_list [get_bd_intf_pins "${hubName}/S_AXIFIFO"]
      set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${hubName}/S_AXIFIFO"]]
      
      connect_bd_intf_net $traceOffloadMaster [get_bd_intf_pins "${hubName}/S_AXIMM"]
      #get trace master and assign the same address seg if it is xtlm_simple_interconnect
      set traceMaster [get_bd_cells -quiet -of_object $traceOffloadMaster]
      set traceMasterVLNV [get_property VLNV $traceMaster]
      set traceMasterVLNV [lindex [split $traceMasterVLNV :] 2]
      #Workaround fallback feature for older platforms
      set isSimpleInterconnect 0
      if {$traceMasterVLNV == "xtlm_simple_interconnect"} {
        set isSimpleInterconnect 1
      }
      if {$isSimpleInterconnect == 1} {
        set addr_seg [get_bd_addr_segs -of_objects [get_bd_intf_pins "${hubName}/S_AXIMM"]]
        assign_bd_address $addr_seg
        set seg [get_bd_addr_segs -of_objects $addr_seg]
        set OFFSET [lindex [get_property OFFSET $seg] 0]
        set RANGE  [lindex [get_property RANGE  $seg] 0]
        set n_mi [expr [get_property CONFIG.C_NUM_MI $traceMaster] - 1]
        if {$n_mi <= 10} {
          set n_mi "0${n_mi}"
        }
        set_property -quiet -dict [list CONFIG.C_M${n_mi}_A00_BASE_ADDRESS ${OFFSET} CONFIG.C_M${n_mi}_A00_ADDR_RANGE ${RANGE}] $traceMaster 
      } else  {
        set addr_seg [get_bd_addr_segs -of_objects [get_bd_intf_pins "${hubName}/S_AXIMM"]]
        assign_bd_address $addr_seg
        set seg [get_bd_addr_segs -of_objects $addr_seg]
      }
    } else {
      # Instantiate trace S2MM HLS kernel
      set dmaName "dpa_trace_s2mm"
      set dmaObject [create_bd_cell -type ip -vlnv $trace_s2mm_name $dmaName]
        
      connect_bd_net $traceClock [get_bd_pins "${dmaName}/ap_clk"]
      connect_bd_net $traceReset [get_bd_pins "${dmaName}/ap_rst_n"]
        
      set dmaStreamName "s_axis"
      set dmaSlaveName "s_axi_control"
      set dmaMasterName "m_axi_gmem"
      
      connect_bd_intf_net [get_bd_intf_pins "${hubName}/M_AXIS"] [get_bd_intf_pins "${dmaName}/$dmaStreamName"]
      
      # For now, just add the control pin to the list
      # NOTE: we add it to the beginning of the list to ensure it's connected
      #lappend axilite_pin_list [get_bd_intf_pins "${dmaName}/$dmaSlaveName"]
      set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${dmaName}/$dmaSlaveName"]]
      
      if {$addToDebugIpLayout} {
        set_property HDL_ATTRIBUTE.DPA_IP            true     $dmaObject
        set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0        $dmaObject
        set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $dmaName $dmaObject
      }

      # Connect to trace slave
      connect_trace_offload_slave $traceOffloadSlave $traceMemoryType $traceMemory ${dmaName}/${dmaMasterName} $traceClock $traceReset
    }
  }; # end add_emu_trace_infrastructure

  #################################################################################################
  ######                             Step 3 - AI Engine Support                               #####
  #################################################################################################
  
  ###########################################################
  # verify_aie_trace_gmio
  #  Description:
  #    Verify the QoS settings for any AIE GMIO trace connections
  #  Arguments:
  #    None
  #  Return Value:
  #    None
  ###########################################################
  proc verify_aie_trace_gmio {} {
    set newQos 1000
    set aieCells      [get_bd_cells -quiet -filter {VLNV=~"*ai_engine*"}]
    set aieMasterPins [get_bd_intf_pins -quiet -of_objects $aieCells -filter {(MODE == Master) && (CONFIG.PROTOCOL == AXI4)}]

    if {$aieMasterPins == {}} {
      return
    }

    # Count the number of QoS values we're going to modify
    set count 0
    foreach masterPin $aieMasterPins {
      set annotation [get_property -quiet HDL_ATTRIBUTE.ME_ANNOTATION $masterPin]
      if {[string first "event_trace" $annotation] >= 0} {
        set slavePins [find_bd_objs -quiet -thru_hier -relation connected_to $masterPin]
        incr count [llength $slavePins]
      }
    }

    if {$count == 0} {
      return
    }

    # Make sure bandwidth is less than max supported on this device
    variable ::dpa::noc_mult_factor
    set maxBandwidth [get_max_bandwidth]
    set totalBandwidth [expr [get_total_requested_qos true] + [get_total_requested_qos false]]
    set residualBandwidth [expr max($maxBandwidth - $totalBandwidth, 100)]
    set requiredBandwidth [expr $newQos * $count]
    puts "--- DPA: AIE GMIO Trace: max BW = $maxBandwidth, total BW = $totalBandwidth, residual BW = $residualBandwidth"

    if {$requiredBandwidth > $residualBandwidth} {
      set newQos [expr int(double($residualBandwidth) / $count)]
    }

    # Request same BW for each GMIO
    set bwValues "read_bw {0} write_bw {$newQos}"

    # Traverse all AXI4 masters on AIE block and find only trace connections 
    foreach masterPin $aieMasterPins {
      set annotation [get_property -quiet HDL_ATTRIBUTE.ME_ANNOTATION $masterPin]
      if {[string first "event_trace" $annotation] >= 0} {
        set slavePins [find_bd_objs -quiet -thru_hier -relation connected_to $masterPin]
        
        foreach slavePin $slavePins {
          set newConnections {}
          set currConnections [get_property -quiet CONFIG.CONNECTIONS $slavePin]
          foreach {connection qosDict} $currConnections {
            lappend newConnections $connection $bwValues
          }

          puts "--- DPA: Re-configuring CONFIG.CONNECTIONS for pin $slavePin to: $newConnections"
          set_property CONFIG.CONNECTIONS $newConnections $slavePin
        }
      }
    }
  }; # end verify_aie_trace_gmio

  ###########################################################
  # add_aie_trace_infrastructure
  #  Description:
  #    Add AIE trace infrastucture
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    None
  ###########################################################
  proc add_aie_trace_infrastructure {dpa_opts} {
    variable ::dpa::aiengine_flow
    variable ::dpa::trace_s2mm_name
    variable ::dpa::aie_trace_s2mm_name
    variable ::dpa::axilite_pin_list
    variable ::dpa::noc_mult_factor
    variable ::dpa::max_clk_freq_hz

    # AIE trace not supported yet in HW emulation flows
    set settingDict [dict_get_default $dpa_opts    SETTINGS {}]
    set is_hw_emu   [dict_get_default $settingDict HW_EMU   false]
    if {$is_hw_emu && ![info exists ::env(XCL_EMULATION_AIE_TRACE_SUPPORT)]} {
      return
    }

    # Only grab AIE trace streams with estimated BW > 0
    # NOTE: unused streams have BW = 0 (e.g., if the user specifies # of streams > what's needed)
    set aieStreams [get_bd_intf_pins -quiet -hier -filter {(HDL_ATTRIBUTE.DPA_AIE_TRACE == true) && (HDL_ATTRIBUTE.DPA_AIE_TRACE_BANDWIDTH > 0)}]

    set numStreams [llength $aieStreams]
    if {$numStreams == 0} {
      # If needed, make sure we have enough bandwidth for any GMIO trace connections
      #verify_aie_trace_gmio
      return
    }
    putd "--- DPA: Adding trace support for $numStreams stream(s): $aieStreams"
    
    # Compare total number of streams to number with BW > 0
    if {[is_drcv]} {
      set allStreams [get_bd_intf_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_AIE_TRACE == true}]
      set numAllStreams [llength $allStreams]
      if {$numStreams < $numAllStreams} {
        send_msg_id "DPA-145" "WARNING" "Only $numStreams out of $numAllStreams AIE trace streams were used."
        ::drcv::create_violation AIE-TRACE-05 -d $numStreams -d $numAllStreams
      } else {
        ::drcv::create_affirmation AIE-TRACE-05 -d $numAllStreams
      }
    }

    # Get FIFO depth (used in stream interconnect)
    set traceDict        [dict_get_default $dpa_opts  AIE_TRACE       {}]
    set fifoDepth        [dict_get_default $traceDict FIFO_DEPTH      4096]
    set packetRate       [dict_get_default $traceDict PACKET_RATE     0]
    set clockSelect      [dict_get_default $traceDict CLK_SELECT      "default"]
    set profileStreams   [dict_get_default $traceDict PROFILE_STREAMS false]
    set traceMemory      [dict_get_default $traceDict MEM_SPACE       "DDR"]
    set traceMemoryIndex [dict_get_default $traceDict MEM_INDEX       0]
    
    set firstStream [get_bd_intf_pins [lindex $aieStreams 0]]
    set aieBlock [get_bd_cells -quiet -of $firstStream]

    set streamBytes [get_property -quiet CONFIG.TDATA_NUM_BYTES $firstStream]
    if {$streamBytes == {}} {set streamBytes 4}

    # Get trace slave for connecting data movers
    set offloadDict        [dict_get_default $dpa_opts     TRACE_OFFLOAD {}]
    set traceMemory        [dict_get_default $offloadDict  MEM_SPACE     "DDR"]
    set traceMemoryType    [dict_get_default $offloadDict  MEM_TYPE      "DDR"]
    set traceOffloadSlave  [get_trace_offload_slave $offloadDict]

    #
    # Clock/Reset
    #
    # Get clock
    #   1. Use clock idenfied with id=0 in PFM.CLOCK property
    #   2. If not found, then use existing clock on AIE block
    set masterClock {}
    set fastestRate 0
    set clockWizard [get_bd_cells -quiet -hier -filter {PFM.CLOCK != {}}]
    set pfmClock [get_property -quiet PFM.CLOCK $clockWizard]

    if {$pfmClock != {}} {
      if {$clockSelect == "fastest"} {
        foreach {pin metadata} $pfmClock {
          set currClock [get_bd_pins -quiet $clockWizard/$pin]
          set currRate  [get_property CONFIG.FREQ_HZ $currClock]
          
          if {($currRate > $fastestRate) && ($currRate <= $max_clk_freq_hz)} {
            set masterClock $currClock
            set fastestRate $currRate
          }
        } 
      }

      if {$masterClock == {}} {
        foreach {pin metadata} $pfmClock {
          set id [dict_get_default $metadata id 1]
          if {$id == 0} {
            set masterClock [get_bd_pins -quiet $clockWizard/$pin]
            if {$masterClock != {}} {
              break
            }
          }
        }
      }
    }

    # Default is to use clock already associated on AIE intf pin 
    if {$masterClock == {}} {
      puts "--- DPA: Using default master clock already associated with AIE pin..."
      # NOTE: get_sink_clk relies on CONFIG.ASSOCIATED_BUSIF to be set
      set masterClock [bd::clkrst::get_sink_clk $firstStream]
      if {$masterClock == {}} {
        # Try to find the clock on the AIE block
        set masterClock [lindex [get_bd_pins -quiet -of $aieBlock -filter {DIR == I && TYPE == clk}] 0]    
      }

      # We tried but couldn't find it
      if {$masterClock == {}} {
        send_msg_id "DPA-13" "CRITICAL WARNING" "Unable to find clock for AIE trace offload. Nothing added."
        return
      }
    }

    # Make sure the clock we're using is connected to the AI engine block
    # NOTE: it's fine to connect even if this clock is already connected
    set numClocks [get_property CONFIG.NUM_CLKS $aieBlock]
    set_property CONFIG.NUM_CLKS [expr $numClocks + 1] $aieBlock
    connect_bd_net $masterClock [get_bd_pins "${aieBlock}/aclk${numClocks}"]

    # Get reset
    set masterReset [bd::clkrst::get_sink_rst $masterClock]
    if {$masterReset == {}} {
      set masterReset [get_bd_pins -quiet -hier -filter {HDL_ATTRIBUTE.DPA_AIE_TRACE_RESET == true}]
      
      if {$masterReset == {}} {
        # Find from processor system reset
        set clkSinks   [find_bd_objs -quiet -relation connected_to -thru_hier $masterClock]
        set resetCells  [get_bd_cells -quiet -of $clkSinks -filter {VLNV=~"*proc_sys_reset*"}]
        set masterReset [lindex [get_bd_pins -quiet -hier -of $resetCells -filter {CONFIG.TYPE == PERIPHERAL && CONFIG.POLARITY == ACTIVE_LOW}] 0]
      }
      
      if {$masterReset == {}} {
        send_msg_id "DPA-14" "WARNING" "Unable to find reset for AIE trace offload. This must be connected manually."
      }
    }
    
    puts "--- DPA: masterClock = $masterClock, masterReset = $masterReset"
    
    #
    # Instantiate and connect IP
    #
    for { set s 0 } { $s < $numStreams } { incr s } {
      set currStream [lindex $aieStreams $s]
      set requestedQos [get_property -quiet HDL_ATTRIBUTE.DPA_AIE_TRACE_BANDWIDTH $currStream]
      if {$requestedQos == {}} {set requestedQos 0}

      # Make sure this stream doesn't already have a slave
      remove_all_slaves $currStream

      # Add guidance result for this trace stream
      set streamBytes [get_property -quiet CONFIG.TDATA_NUM_BYTES $currStream]
      set streamBits [expr 8 * $streamBytes]
      send_msg_id "DPA-143" "INFO" "AI Engine trace stream $s has a width of $streamBits bits and an estimated bandwidth of $requestedQos MB/s."
      if {[is_drcv]} {
        set streamClockRate [expr [get_property CONFIG.FREQ_HZ $masterClock] / 1.0e6]
        set bwThreshold [expr 0.5 * $streamClockRate * $streamBytes]

        if {$requestedQos > $bwThreshold} {
          ::drcv::create_violation AIE-TRACE-03 -d $s -d $streamBits -d [expr int($requestedQos)]              
        } else {
          ::drcv::create_affirmation AIE-TRACE-03 -d $s -d $streamBits -d [expr int($requestedQos)]
        }
      }

      # Instantiate trace S2MM HLS kernel
      set dmaName "dpa_aie_trace_s2mm_${s}"
      if {[info exists ::env(XCL_AIE_TRACE_USE_PL_DATA_MOVER)]} {
        set dmaObject [create_bd_cell -type ip -vlnv $trace_s2mm_name $dmaName]  
      } else {
        set dmaObject [create_bd_cell -type ip -vlnv $aie_trace_s2mm_name $dmaName]
        set_property CONFIG.HIGH_PERF_MODE   1 $dmaObject
      }

      # Insert AXI Stream data FIFO
      set fifoName "dpa_aie_fifo_${s}"
      set fifoObj [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo $fifoName]
      set_property CONFIG.FIFO_MODE           2 $fifoObj
      set_property CONFIG.FIFO_DEPTH $fifoDepth $fifoObj

      # In case it's needed, insert data width converter as data mover only supports 64 bits
      set converterName "dpa_aie_conv_${s}"
      set converterObj [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter $converterName]
      set_property CONFIG.M_TDATA_NUM_BYTES 8 $converterObj

      connect_bd_net $masterClock [get_bd_pins "${fifoName}/s_axis_aclk"]
      connect_bd_net $masterClock [get_bd_pins "${converterName}/aclk"]
      connect_bd_net $masterClock [get_bd_pins "${dmaName}/ap_clk"]

      if {$masterReset != {}} {
        connect_bd_net $masterReset [get_bd_pins "${fifoName}/s_axis_aresetn"]
        connect_bd_net $masterReset [get_bd_pins "${converterName}/aresetn"]
        connect_bd_net $masterReset [get_bd_pins "${dmaName}/ap_rst_n"]
      }

      # Connections: AIE -> FIFO -> Width Converter -> Data Mover -> NoC -> DDR
      connect_bd_intf_net $currStream [get_bd_intf_pins "${fifoName}/S_AXIS"]
      connect_bd_intf_net [get_bd_intf_pins "${fifoName}/M_AXIS"] [get_bd_intf_pins "${converterName}/S_AXIS"] 
      connect_bd_intf_net [get_bd_intf_pins "${converterName}/M_AXIS"] [get_bd_intf_pins "${dmaName}/S_AXIS"]
      
      # Connect data mover to trace slave
      connect_trace_offload_slave $traceOffloadSlave $traceMemoryType $traceMemory "${dmaName}/m_axi_gmem" \
          $masterClock $masterReset $requestedQos $s

      # Assign address
      set slave [find_bd_objs -quiet -relation addressable_slave -thru_hier [get_bd_intf_pins "${dmaName}/m_axi_gmem"]]
      set addrSeg [get_bd_addr_segs -quiet -of_objects $slave]
      puts "--- DPA: Assigning address to slave $slave with segments: $addrSeg"
      assign_bd_address -quiet $addrSeg

      # For now, just add the control pin to the list
      # NOTE: we add it to the beginning of the list to ensure it's connected
      set axilite_pin_list [linsert $axilite_pin_list 0 [get_bd_intf_pins "${dmaName}/s_axi_control"]]
      
      # Calculate property
      # Property = (Memory index << 3) + (Pre-defined address << 2) + (64 bit streams << 1) + 1
      set ipProp [expr {($streamBytes == 8) ? 3 : 1}]
      set ipProp [expr {($traceMemoryIndex == {}) ? $ipProp : (($traceMemoryIndex << 3) + $ipProp) } ]

      set_property HDL_ATTRIBUTE.DPA_IP            true     $dmaObject
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES $ipProp  $dmaObject
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $dmaName $dmaObject
    }

    #
    # Add stream monitors
    #
    # For debug purposes only
    if {$profileStreams} {
      #set allStreams [get_bd_intf_pins -quiet -of $aieBlock -filter {MODE == Master}]
      set allStreams $aieStreams

      for { set s 0 } { $s < [llength $allStreams] } { incr s } {
        set currStream [lindex $allStreams $s]

        # Determine clock and reset
        set isTrace [get_property -quiet HDL_ATTRIBUTE.DPA_AIE_TRACE $currStream]
        if {$isTrace != {}} {
          set currClock $masterClock
          set currReset $masterReset
        } else {
          set currSlave [find_bd_objs -relation connected_to -thru_hier $currStream]
          set currClock [bd::clkrst::get_sink_clk $currSlave]
          set currReset [bd::clkrst::get_sink_rst $currClock]  
        }
        
        set currDict [dict create TYPE exec DETAIL counters CLK_SRC $currClock RST_SRC $currReset]
        set monName "dpa_aie_stream_mon${s}"
        add_axi_stream_monitor $currStream $currDict {} {} $monName $dpa_opts
      }  
    }

    set aiengine_flow true
  }; # end add_aie_trace_infrastructure
  
  #################################################################################################
  ######                          Step 4 - Connect AXI-Lite Control                           #####
  #################################################################################################
  
  ###########################################################
  # add_cascaded_smartconnect
  #  Description:
  #    Add Cascaded Smart Connect for > 16 AXI-Lite Masters
  #  Arguments:
  #    slaveClock     Clock for interconnect slave
  #    masterClocks   Unique list of master clocks
  #    axiliteReset   Reset to use (if {}, then don't use)
  #    axiliteMaster  AXI-Lite master
  #  Return Value:
  #    None
  ###########################################################
  proc add_cascaded_smartconnect {slaveClock masterClocks axiliteReset axiliteMaster} {
    variable ::dpa::axilite_pin_list
    
    set totalMasters [llength $axilite_pin_list]
    set numIntercon  [expr int(ceil($totalMasters/16.0))]

    send_msg_id "DPA-26" "WARNING" "Cascading SmartConnect to connect to $totalMasters masters. This may adversely affect timing."

    # First stage interconnect
    set interconName1 "dpa_ctrl_interconnect"
    set interconObject1 [create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect $interconName1]
    set numClocks [expr min([llength $masterClocks] + 1, $numIntercon + 2)]
    set_property CONFIG.NUM_SI              1 $interconObject1
    set_property CONFIG.NUM_MI   $numIntercon $interconObject1
    set_property CONFIG.NUM_CLKS   $numClocks $interconObject1
    
    putd "--- DPA: Connecting $numClocks clocks to AXI-Lite interconnect"
    connect_bd_net $slaveClock [get_bd_pins "$interconName1/aclk"]   
    for { set i 1 } { $i < $numClocks } { incr i } {
      connect_bd_net [get_bd_pins "$interconName1/aclk${i}"] [lindex $masterClocks [expr $i-1]]
    }
      
    if {$axiliteReset != {}} {
      set_property CONFIG.HAS_ARESETN 1 $interconObject1
      connect_bd_net [get_bd_pins $interconName1/aresetn] $axiliteReset
    } else {
      set_property CONFIG.HAS_ARESETN 0 $interconObject1
    }
       
    connect_bd_intf_net [get_bd_intf_pins $axiliteMaster] [get_bd_intf_pins $interconName1/S00_AXI]
        
    # Second stage interconnects
    set num 0
    for { set n 0 } { $n < $numIntercon } { incr n } {
      if {$n == [expr $numIntercon-1]} {
        set numMasters [expr $totalMasters - $num]
      } else {
        set numMasters 16
      }
      
      set interconName "dpa_ctrl_interconnect${n}"
      set interconObject [create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect $interconName]
      set_property CONFIG.NUM_SI             1 $interconObject
      set_property CONFIG.NUM_MI   $numMasters $interconObject
      
      set masterName1 [expr { ($n > 9) ? "$interconName1/M${n}_AXI" : "$interconName1/M0${n}_AXI" } ] 
      connect_bd_intf_net [get_bd_intf_pins $masterName1] [get_bd_intf_pins $interconName/S00_AXI]
      
      set masterPinList {}
      for { set m 0 } { $m < $numMasters } { incr m } {
        set pinObj [get_bd_intf_pins [lindex $axilite_pin_list $num]]
        set masterName [expr { ($m > 9) ? "$interconName/M${m}_AXI" : "$interconName/M0${m}_AXI" } ]
        connect_bd_intf_net $pinObj [get_bd_intf_pins $masterName]

        lappend masterPinList $pinObj
        incr num
      }

      set localMasterClocks [get_unique_clocks $masterPinList]
      set numClocks [expr [llength $localMasterClocks] + 1]
      set_property CONFIG.NUM_CLKS $numClocks $interconObject
    
      connect_bd_net $slaveClock [get_bd_pins "$interconName/aclk"]
      for { set i 1 } { $i < $numClocks } { incr i } {
        connect_bd_net [get_bd_pins "$interconName/aclk${i}"] [lindex $localMasterClocks [expr $i-1]]
      }
      
      if {$axiliteReset != {}} {
        set_property CONFIG.HAS_ARESETN 1 $interconObject
        connect_bd_net [get_bd_pins $interconName/aresetn] $axiliteReset
      } else {
        set_property CONFIG.HAS_ARESETN 0 $interconObject
      }
      
      
    }
  }; # end add_cascaded_smartconnect
  
  ###########################################################
  # add_control_infrastructure
  #  Description:
  #    Add AXI-Lite control infrastucture
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    None
  ###########################################################
  proc add_control_infrastructure {dpa_opts} {
    variable ::dpa::axilite_pin_list
    
    #putd "axilite_pin_list = $axilite_pin_list"
    if {$axilite_pin_list == {}} {
      return
    }
    
    # Get master
    set axiliteDict        [dict_get_default $dpa_opts    AXILITE   {}]
    set isDedicated        [dict_get_default $axiliteDict DEDICATED  1]

    set axiliteMasterList  [get_dpa_axilite_master $axiliteDict]
    if {$axiliteMasterList == {}} {
      send_msg_id "DPA-16" "CRITICAL WARNING" "Unable to insert AXI-Lite control. No master found."
      return
    }
    
    set axiliteMaster      [lindex $axiliteMasterList 0]
    set axiliteClock       [lindex $axiliteMasterList 1]
    set axiliteReset       [lindex $axiliteMasterList 2]

    if {$axiliteMaster == {}} {
      send_msg_id "DPA-16" "CRITICAL WARNING" "Unable to insert AXI-Lite control. No master found."
      return
    }
    if {$axiliteClock == {}} {
      send_msg_id "DPA-17" "CRITICAL WARNING" "Unable to insert AXI-Lite control. No clock found."
      return
    }
    
    # If not dedicated, add 1x2 interconnect; if dedicated, remove slaves
    if {!$isDedicated} {
      set axiliteMaster [add_nondedicated_interconnect $axiliteMaster]
    } else {
      remove_all_slaves $axiliteMaster
    }

    putd "--- DPA: axiliteMaster = $axiliteMaster, axiliteClock = $axiliteClock, axiliteReset = $axiliteReset"
    
    set settingDict      [dict_get_default $dpa_opts    SETTINGS  {}]
    set is_hw_emu        [dict_get_default $settingDict HW_EMU    false]
    
    # Decide how to insert the interconnect
    # The options:
    #   1. BD Automation    - This was not working because of AXI Verification IP in path
    #   2. AXI Interconnect - This is the default (if supported) since it gives the best timing results
    #   3. SmartConnect     - If AXI interconnect is not supported (e.g., Versal), then this is used
    #
    # TODO: Is there a better way to determine the family support of a given IP?
    set USE_AXI4_AUTOMATION  0
    set USE_AXI_INTERCONNECT 1
    set test [create_bd_cell -quiet -type ip -vlnv xilinx.com:ip:axi_interconnect dpa_dummy]
    if {$test == {}} {
      # AXI interconnect not supported; use SmartConnect
      set USE_AXI_INTERCONNECT 0
    } else {
      delete_bd_objs $test
    }
    #putd "USE_AXI_INTERCONNECT = $USE_AXI_INTERCONNECT"
    
    if {$USE_AXI4_AUTOMATION} {
      set configDict {}
      dict set configDict Clk_master $axiliteClock
      dict set configDict Clk_slave  Auto
      dict set configDict Clk_xbar   $axiliteClock
      dict set configDict Master     $axiliteMaster 
      dict set configDict intc_ip    Auto 
      dict set configDict master_apm 0
      
      # Iterate over all AXI-Lite slaves to connect to
      foreach pin $axilite_pin_list {
        set pinObj [get_bd_intf_pins -quiet $pin]
        if {$pinObj == ""} { continue }
      
        #set pinClock [bd::clkrst::get_sink_clk $pinObj]
        #set pinReset [bd::clkrst::get_sink_rst $pinClock]
        putd "Applying BD automation to connect slave $pin to master $axiliteMaster"
        apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config $configDict $pinObj
      }
    } elseif {$USE_AXI_INTERCONNECT} {
      # Use AXI Interconnect
      set numMasters [llength $axilite_pin_list]
      if {$numMasters > 64} {
        send_msg_id "DPA-18" "CRITICAL WARNING" "AXI Interconnect cannot support $numMasters masters. Limiting to 64."
        set numMasters 64
      }
      
      set interconName "dpa_ctrl_interconnect"
      set interconObject [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect $interconName]
      set_property CONFIG.NUM_SI 1 $interconObject
      set_property CONFIG.NUM_MI $numMasters $interconObject
      set_property CONFIG.S00_HAS_REGSLICE 1 $interconObject

      # Connect specified master to interconnect
      connect_bd_intf_net $axiliteMaster [get_bd_intf_pins $interconName/S00_AXI]
      connect_bd_net $axiliteClock [get_bd_pins $interconName/S00_ACLK]
      connect_bd_net $axiliteClock [get_bd_pins $interconName/ACLK]
    
      if {$axiliteReset != {}} {
        connect_bd_net $axiliteReset [get_bd_pins $interconName/S00_ARESETN]
        connect_bd_net $axiliteReset [get_bd_pins $interconName/ARESETN]
      }
      
      for { set m 0 } { $m < $numMasters } { incr m } {
        set pinObj [get_bd_intf_pins [lindex $axilite_pin_list $m]]
        set masterName [expr { ($m > 9) ? "$interconName/M${m}_AXI" : "$interconName/M0${m}_AXI" } ]
        connect_bd_intf_net $pinObj [get_bd_intf_pins $masterName]
      
        set masterProperty [expr { ($m > 9) ? "CONFIG.M${m}_HAS_REGSLICE"    : "CONFIG.M0${m}_HAS_REGSLICE" } ]
        set_property $masterProperty 1 $interconObject
      
        set pinClock [bd::clkrst::get_sink_clk $pinObj]
        set pinReset [bd::clkrst::get_sink_rst $pinClock]
        #putd "pinClock = $pinClock, pinReset = $pinReset"
        set masterClockName [expr { ($m > 9) ? "$interconName/M${m}_ACLK"    : "$interconName/M0${m}_ACLK" } ]
        set masterResetName [expr { ($m > 9) ? "$interconName/M${m}_ARESETN" : "$interconName/M0${m}_ARESETN" } ]
        connect_bd_net $pinClock [get_bd_pins $masterClockName]
        connect_bd_net $pinReset [get_bd_pins $masterResetName]
      }
    } else {
      # Use SmartConnect
      set numMasters [llength $axilite_pin_list]
      
      # Find unique clocks
      set masterClocks [get_unique_clocks $axilite_pin_list]
      
      # Cascade SmartConnects (if needed)
      if {$numMasters > 16} {
        add_cascaded_smartconnect $axiliteClock $masterClocks $axiliteReset $axiliteMaster
      } else {
        set interconName "dpa_ctrl_interconnect"
        set interconObject [create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect $interconName]
        
        set numClocks [expr [llength $masterClocks] + 1]
        set_property CONFIG.NUM_SI             1 $interconObject
        set_property CONFIG.NUM_MI   $numMasters $interconObject
        set_property CONFIG.NUM_CLKS  $numClocks $interconObject
        
        putd "--- DPA: Connecting $numClocks clocks to AXI-Lite interconnect"
        connect_bd_net $axiliteClock [get_bd_pins "$interconName/aclk"]
        for { set i 1 } { $i < $numClocks } { incr i } {
          connect_bd_net [get_bd_pins "$interconName/aclk${i}"] [lindex $masterClocks [expr $i-1]]
        }
        
        if {$axiliteReset != {}} {
          set_property CONFIG.HAS_ARESETN 1 $interconObject
          #putd "--- DPA: Connecting [get_bd_pins $interconName/aresetn] to $axiliteReset"   
          connect_bd_net [get_bd_pins $interconName/aresetn] $axiliteReset
        } else {
          set_property CONFIG.HAS_ARESETN 0 $interconObject
        }
        
        #putd "--- DPA: Connecting [get_bd_intf_pins $axiliteMaster] to [get_bd_intf_pins $interconName/S00_AXI]"  
        connect_bd_intf_net [get_bd_intf_pins $axiliteMaster] [get_bd_intf_pins $interconName/S00_AXI]
        
        for { set m 0 } { $m < $numMasters } { incr m } {
          set pinObj [get_bd_intf_pins [lindex $axilite_pin_list $m]]
          set masterName [expr { ($m > 9) ? "$interconName/M${m}_AXI" : "$interconName/M0${m}_AXI" } ]
          connect_bd_intf_net $pinObj [get_bd_intf_pins $masterName]
        }
      }
    }

    # Assign addresses for each newly created segment
    foreach pin $axilite_pin_list {
      set addrSeg [get_bd_addr_segs -quiet -of_objects [get_bd_intf_pins -quiet $pin]]
      assign_bd_address -quiet $addrSeg
    }
  }; # end add_control_infrastructure
  
  #################################################################################################
  ######                               Step 6 - Write Metadata                                #####
  #################################################################################################
  
  ###########################################################
  # write_metadata
  #  Description:
  #    Write out metadata
  #  Arguments:
  #    dpa_opts    Dictionary containing options for automation
  #  Return Value:
  #    None
  ###########################################################
  proc write_metadata {dpa_opts} {
    set autoScriptName [get_param -quiet bd.debug_profile.script]
    if {$autoScriptName == ""} {
      set localDir "$::env(XILINX_VIVADO)/scripts/ocl"
    } else {
      set localDir [file dirname $autoScriptName]
    }
  
    set scriptName "${localDir}/debug_profile.tcl"
    if {![file exists $scriptName]} {
      send_msg_id "DPA-20" "WARNING" "Unable to write metadata. File $scriptName not found."
      return
    }
    
    set settingDict      [dict_get_default $dpa_opts    SETTINGS    {}]
    set is_hw_emu        [dict_get_default $settingDict HW_EMU      false]
    set hw_platform_vbnv [dict_get_default $settingDict HW_PLATFORM "NA"]
    set metadata         [dict_get_default $settingDict METADATA    true]
    if {!$metadata} {
      send_msg_id "DPA-21" "INFO" "No metadata written as requested."
      return
    }
    
    # Assign addresses and save BD
    #assign_bd_address
    #save_bd_design
    
    # Write metadata file
    send_msg_id "DPA-24" "INFO" "Writing debug/profile metadata file to [pwd]"
    source -notrace $scriptName
    debug_profile::write_debug_ip_layout $is_hw_emu $hw_platform_vbnv [pwd]
  }; # end write_metadata
}; # end namespace
