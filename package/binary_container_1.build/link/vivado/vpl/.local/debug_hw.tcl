
namespace eval debug_profile {

  #####################################################################
  # add_debug_hw
  #  Description:
  #    Adds debug circuitry (HW only) including the following:
  #      1. System ILAs are inserted (as requested by v++ linking options)
  #      2. Extraneous reset logic created by BD automation is removed.
  #      3. Kernel BSCAN slaves are connected to a debug bridge.
  #
  #    NOTE: LAPCs and ASPCs have been moved to BD automation 
  #
  #  Arguments:
  #    hw_platform_info    HW platform dict
  #    config info         Configuration dict
  #    debug_profile_info  Debug/profile dict 
  #  Return Value:
  #    None
  #####################################################################
  proc add_debug_hw {hw_platform_info config_info debug_profile_info} {
    set output_dir [dict get $config_info output_dir] 

    if {[catch {insert_chipscope $hw_platform_info $debug_profile_info} catch_res]} {
      ocl_util::error2file $output_dir "Could not add ChipScope ILA to dynamic region" $catch_res
    }

    set isVersal [bd::utils::is_everest_device]
    if { $isVersal == 1 } {
      return
    }

    if { [catch {connect_bscan_ports $hw_platform_info} catch_res] } {
      ocl_util::error2file $output_dir "Could not connect BSCAN interfaces of dynamic region to Debug Bridge" $catch_res
    }
  }; # end add_debug_hw

  ###############################################################################
  #  Functions for inserting ILA cores
  ###############################################################################

  # get_ila_probes -
  # Given a compute_units dictionary, return the ila connections as a list
  #    {compute_unit {pins...} compute_unit {pins...}}
  #
  proc get_ila_probes {compute_units} {
    set ila_probes {}
    foreach cu $compute_units {
      set automation_params {}
      set cu_name [dict_get_default $cu name false]
      set cu_pins [dict_get_default $cu ports {}]
      set cu_cell [get_bd_cells $cu_name]
      set intf_pins {}
      foreach cu_pin $cu_pins {
        if {[llength $cu_cell] > 0} {
          set intf_pin [get_bd_intf_pins -of [get_bd_cells $cu_name] -filter NAME=~$cu_pin]
          if {[llength $intf_pin] == 0} {
            set cu_pin_lc [string tolower $cu_pin]
            set intf_pin [get_bd_intf_pins -of [get_bd_cells $cu_name] -filter NAME=~${cu_pin_lc}]
          }
          lappend intf_pins $intf_pin
        }
      }
      # Considering all axi interfaces as no specific comput_unit pin is provided to debug 
      if {[llength $cu_cell] > 0 && [llength $cu_pins] == 0} {
            set cu_axi_pins [get_bd_intf_pins -of_objects $cu_cell -filter {VLNV =~ "*axi*" && CONFIG.PROTOCOL =~ "AXI4*" } -quiet]
            foreach cu_axi_pin $cu_axi_pins {
                lappend intf_pins $cu_axi_pin
            }
      }
      lappend ila_probes $cu_cell $intf_pins
    }
    return $ila_probes
  }

  proc get_source_clock_for_cu {cell} {
    
    set clkSrc {}
    set clockPins [get_bd_pins -of $cell -filter {DIR==I && TYPE==clk}]
    set clk {}
    if {[llength $clockPins] > 0} {
      set maxFreq 0
      foreach pin $clockPins {
        set pinFreq [get_property CONFIG.FREQ_HZ $pin]
        if { [expr $pinFreq > $maxFreq] } {
          set maxFreq $pinFreq
          set clk $pin
        } 
      }      
    } 
    if {$clk != ""} {
      set clkSrc [get_bd_pins -of [get_bd_nets -of $clk] -filter {DIR==O && TYPE==clk}]
      if {$clkSrc == ""} {
        set clkSrc  [get_bd_ports -of [get_bd_nets -of $clk] -filter {DIR==I && TYPE==clk}]
      }
     
    }
    return $clkSrc
  }

  # apply_automation -
  # Given the list of ila_probes, mark them for debug then apply bd automation
  # to instantiate and connect the system ila debug cores.
  #
  proc apply_automation {ila_probes} {
    set automation_params {}
    set system_ila_cells {}
    
    set isVersal [bd::utils::is_everest_device]
    foreach {cu_cell cu_pins} $ila_probes {
      foreach cu_pin $cu_pins {
        #set clk_pin [get_clk_from_intf_pin $cu_pin]
        set clk_pin [bd::clkrst::get_intf_driver_clk [get_bd_intf_pins $cu_pin] ]
        if {$clk_pin == ""} {
           #getting clk from connected interface - CR1094223"
           set other_end_intf [find_bd_objs -quiet -legacy_mode -thru_hier -relation connected_to [get_bd_intf_pins $cu_pin]]    
           if { $other_end_intf != "" } {
             set clk_pin [bd::clkrst::get_intf_driver_clk $other_end_intf ]
           }
        }
        if {$clk_pin == ""} {
           set clk_pin [get_source_clock_for_cu [get_bd_cells $cu_cell]]
        }
        set intf_net [get_bd_intf_nets -of $cu_pin]
        set_property HDL_ATTRIBUTE.DEBUG true $intf_net
        lappend automation_params $intf_net
        set requiredCore "SYSTEM_ILA"
        if { $isVersal == 1 } {
          set requiredCore "AXIS_ILA"
        }
        set protocol [get_property CONFIG.PROTOCOL [get_bd_intf_pins $cu_pin]]
        if {$protocol == "AXI4" || $protocol == "AXI4LITE" || $protocol == "AXI4S"} {  
           lappend automation_params \
           [list \
             AXI_R_ADDRESS  "Data and Trigger" \
             AXI_R_DATA     "Data and Trigger" \
             AXI_W_ADDRESS  "Data and Trigger" \
             AXI_W_DATA     "Data and Trigger" \
             AXI_W_RESPONSE "Data and Trigger" \
             CLK_SRC        "$clk_pin" \
             $requiredCore  "Auto" \
             APC_EN         "1" \
           ] 
        } else {
           lappend automation_params \
           [list \
             NON_AXI_SIGNALS "Data and Trigger" \
             CLK_SRC        "$clk_pin" \
             $requiredCore  "Auto" \
           ] 

        }
      }
    }
    
    puts "--- DPA: automation_params=$automation_params"
    if {[llength $automation_params] > 0} {
      set old_cells [get_bd_cells]
      apply_bd_automation -rule xilinx.com:bd_rule:debug -dict $automation_params
      set new_cells [get_bd_cells]
      set system_ila_cells [get_system_ilas $old_cells $new_cells]
    
      if { $isVersal == 1 } {
        return $system_ila_cells
      } 

      # automation creates some incorrect objects in ultrascale designs - delete them now
      lappend old_cells $system_ila_cells
      set check_objs [get_list_diffs $old_cells $new_cells]
      if {[llength $check_objs]} {
        puts "--- DPA: delete_bd_objs $check_objs"
        delete_bd_objs $check_objs
      }
    }
    return $system_ila_cells
  }

  # get_list_diffs -
  # Given a pre-list of cells and a post automation list of cells, compute
  # and return the list differences
  #
  proc get_list_diffs {old_cells new_cells} {
    set diff_cells {}
    array unset tmp_array
    foreach cell $old_cells {
      set tmp_array($cell) 1
    }
    foreach cell $new_cells {
      if {! [info exists tmp_array($cell)]} {
        lappend diff_cells $cell
      }
    }
    return $diff_cells
  }

  # get_system_ilas - 
  # Given a list of pre-automation and post-automation cells, return all system_ila 
  # cells in the new_cells list not in the old_cells list
  #
  # This is used to further customize IP automatically inserted during bd automation
  #
  proc get_system_ilas {old_cells new_cells} {
    set system_ila_cells {}
    set diff_cells [get_list_diffs $old_cells $new_cells]
    foreach cell $diff_cells {
      set vlnv [get_property VLNV $cell]
      # VLNV=xilinx.com:ip:system_ila:1.1
      set isVersal [bd::utils::is_everest_device]
      if { $isVersal == 1 } {
        if {[regexp {xilinx\.com:ip:axis_ila:.*} $vlnv]} {
          lappend system_ila_cells $cell
        }
      } else {
        if {[regexp {xilinx\.com:ip:system_ila:.*} $vlnv]} {
          lappend system_ila_cells $cell
        }
      }
    }
    return $system_ila_cells
  }

  # insert_chipscope
  # Insert Chipscope ILA into design as requested
  #
  proc insert_chipscope {hw_platform_info debug_profile_info} {
    set hw_platform_dr_bd [dict get $hw_platform_info hw_platform_dr_bd] 
    set debug_info        [dict_get_default $debug_profile_info debug {}]
    set chipscope_debugs  [dict_get_default $debug_info chipscope_debugs [dict create]]
    set name              [dict_get_default $chipscope_debugs name ""]

    if {$name eq ""} {
      puts "--- DPA: insert_chipscope_debug: No chipscope_debugs dict name - nothing to insert"
      return
    }
    set compute_units [dict_get_default $chipscope_debugs compute_units {}]
    if {[llength $compute_units] == 0} {
      puts "--- DPA: insert_chipscope_debug: No compute units - nothing to insert"
      return
    }

    open_bd_design $hw_platform_dr_bd
    set ila_probes [get_ila_probes $compute_units]
    set system_ila_cells [apply_automation $ila_probes]
    rename_ila_nets $ila_probes
    update_system_ila_props $system_ila_cells
    apply_user_ila_properties

    foreach cell $system_ila_cells {
      # Add ILA to debug_ip_layout - one entry per ila port
      set pins [get_bd_intf_pins -quiet -of $cell]
      foreach pin $pins {
        #add_debug_ip ILA $cell $pin
      set_property HDL_ATTRIBUTE.DPA_IP            true [get_bd_cells $cell]
      set_property HDL_ATTRIBUTE.DPA_IP_FULLNAME   $pin [get_bd_cells $cell]
      set_property HDL_ATTRIBUTE.DPA_IP_PROPERTIES 0    [get_bd_cells $cell]
      }
    }

    #validate_bd_design -force
    save_bd_design
  }

  # rename_ila_nets
  # Given the list of ila_probes, 
  # 1. rename the nets of debug enabled slave interface(s) of kernels 
  #
  proc rename_ila_nets {ila_probes} {
    puts "--- DPA: Renaming Chipscope nets"
    foreach {cu_cell cu_pins} $ila_probes {
      set cuCell [get_bd_cells $cu_cell]
      set cuCompName [get_property CONFIG.Component_Name $cuCell]
      foreach cu_pin $cu_pins {
        set intf_net [get_bd_intf_nets -of $cu_pin]

        #rename the net to more readabale
        if { [string equal -nocase [get_property MODE $cu_pin] "Slave"] } {
          set curNetName [get_property NAME $intf_net]
          set pinName [get_property NAME [get_bd_intf_pins $cu_pin]]
          set newNetName ${cuCompName}_${pinName}
          if { ![string equal -nocase ${curNetName} ${newNetName}] } {
              set_property NAME ${newNetName} $intf_net
              puts "--- DPA: Renamed net ${curNetName} to $newNetName of pin $cu_pin of computing unit $cu_cell"
          }
        }
      }
    } 
  }
  
  # update_system_ila_props -
  #   Given a list of system ila cells, apply any necessary IP property updates
  #   that were not automatically applied during automation
  #
  proc update_system_ila_props {system_ila_cells} {
      # After automation we need to find the new system ILA IPs that are inserted
      # and apply parameter changes that are not available in the bd automation
      #   1. Locate all new system_ila IPs inserted by bd automation
      #   2. Apply parameters to the new IPs
      #
    # These are missing from bd automation so must be manually set on the IP
    foreach system_ila $system_ila_cells {
      set props [list \
          CONFIG.C_DATA_DEPTH {1024} \
          CONFIG.C_INPUT_PIPE_STAGES {2} \
      ]
      set num_slots [get_property {CONFIG.C_NUM_MONITOR_SLOTS} $system_ila]
      for {set slot_idx 0} {$slot_idx < $num_slots} {incr slot_idx} {
        lappend props [format "CONFIG.C_SLOT_%d_MAX_RD_BURSTS" $slot_idx] 64
        lappend props [format "CONFIG.C_SLOT_%d_MAX_WR_BURSTS" $slot_idx] 64
      }
      puts "--- DPA: $system_ila property update:  $props"
      set_property -dict $props $system_ila
    }
  }

  # Expert user post processing
  proc apply_user_ila_properties {} {
    if { [info exists ::env(VITIS_CHIPSCOPE_TCL)] } {
      set ila_script $::env(VITIS_CHIPSCOPE_TCL)
      if { [file exists $ila_script] } {
        puts "--- DPA: sourcing VITIS_CHIPSCOPE_TCL script: $ila_script"
        source $ila_script
      }
    }
  }

  # connect_bscan_ports -
  #   Connect any kernel BSCAN slaves to debug bridge 
  #
  proc connect_bscan_ports { hw_platform_info } {
    set hw_platform_dr_bd [dict get $hw_platform_info hw_platform_dr_bd] 

    open_bd_design $hw_platform_dr_bd

    #instantiated debug bridge exists?
    set dbgs [get_bd_cells -quiet -hier -filter {(VLNV =~ "*ip:debug_bridge*") && (CONFIG.C_DEBUG_MODE == 1)}]
    #no debug bridge instances, do nothing
    if { [llength $dbgs] == 0} {
      return
    }

    #multiple debug bridge instances, warn
    if {[llength $dbgs] > 1 } {
      puts "WARNING: Could not connect BSCAN interface ports as there are $dbgs debug bridge instances found in the design. A single debug bridge is expected "
      return
    }
   
    #kernel(s) with BSCAN slave interfaces?      
    #ASSUMPTION: all the BSCAN slave interfaces found are unconnected by default 
    set accelBscanIntfs {}
    set accelCells [get_bd_cells -quiet -hier -filter "SDX_KERNEL==true"]
    foreach accel $accelCells {
      set accelSlaves [get_bd_intf_pins -of_objects $accel -filter {VLNV =~ "*interface:bscan_rtl*" && MODE == Slave} -quiet]
      set accelBscanIntfs [concat $accelBscanIntfs [lrange $accelSlaves 0 end]] 
    }

    #no slave BSCAN interfaces, do nothing  
    if {[llength $accelBscanIntfs] == 0} {
      return
    }
    
    #check for the limit and set the total BSCAN master interfaces on debug bridge
    #TODO: get the maximum BSCAN master interfaces from the IP
    set maxBSCANIntfs 16
    set dbg [lindex $dbgs 0]
    set curMBscan [get_property CONFIG.C_NUM_BS_MASTER $dbg]
    set totalMBscan [expr [llength $accelBscanIntfs] + $curMBscan]

    if { $totalMBscan > $maxBSCANIntfs } {
      error "Number of required master BSCAN interfaces $totalMBscan exceeds the limit 16"
      return false
    } 
    set_property CONFIG.C_NUM_BS_MASTER $totalMBscan $dbg -quiet

    #connect the slaves to unconnected master slots
    set slaveIdx 0
    set dbgMasters [get_bd_intf_pins -of_objects $dbg -filter {VLNV =~ "*interface:bscan_rtl*" && MODE == Master} -quiet]
    foreach master $dbgMasters {
      set intfNet [get_bd_intf_net -of $master -quiet]
      if {$intfNet != ""} {
        continue
      }
      set slaveIf [lindex $accelBscanIntfs $slaveIdx]   
      connect_bd_intf_net [get_bd_intf_pins $master -quiet ] [get_bd_intf_pins $slaveIf -quiet] -quiet 
      incr slaveIdx
    }

    save_bd_design
  }

}; # end namespace
