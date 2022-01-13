

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for system
#---------------------------
set axi_inter [get_bd_cell /axi_inter]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 2 \
  CONFIG.M01_HAS_REGSLICE 1 \
  ] $axi_inter
set axi_inter1 [get_bd_cell /axi_inter1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 4 \
  ] $axi_inter1
set zynq_ps [get_bd_cell /zynq_ps]
    
set_property -dict [ list \
  CONFIG.PSU__USE__S_AXI_GP2 1 \
  ] $zynq_ps

#---------------------------
# Instantiating krnl_vadd_1
#---------------------------
set krnl_vadd_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:krnl_vadd:1.0 krnl_vadd_1]
  

#---------------------------
# Instantiating axi_ic_zynq_ps_S_AXI_HP0_FPD
#---------------------------
set axi_ic_zynq_ps_S_AXI_HP0_FPD [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_zynq_ps_S_AXI_HP0_FPD]
  
set_property -dict [ list  \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {1} \
  CONFIG.M00_HAS_REGSLICE {0} \
  CONFIG.S00_HAS_REGSLICE {0}  ] $axi_ic_zynq_ps_S_AXI_HP0_FPD

#---------------------------
# Connectivity Phase 1
#---------------------------
connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/M00_AXI] \
  [get_bd_intf_pins -auto_enable /zynq_ps/S_AXI_HP0_FPD] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_inter/M01_AXI] \
  [get_bd_intf_pins -auto_enable /krnl_vadd_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /krnl_vadd_1/m_axi_gmem] \
  [get_bd_intf_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/S00_AXI] \

connect_bd_net  \
  [get_bd_pins -auto_enable /clk_wiz/clk_out1] \
  [get_bd_pins -auto_enable /axi_inter/M01_ACLK] \
  [get_bd_pins -auto_enable /zynq_ps/saxihp0_fpd_aclk] \
  [get_bd_pins -auto_enable /krnl_vadd_1/ap_clk] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/S00_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/ACLK] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/M00_ACLK] \

connect_bd_net  \
  [get_bd_pins -auto_enable /sys_ret200/interconnect_aresetn] \
  [get_bd_pins -auto_enable /axi_inter/M01_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/M00_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_zynq_ps_S_AXI_HP0_FPD/S00_ARESETN] \

connect_bd_net  \
  [get_bd_pins -auto_enable /sys_ret200/peripheral_aresetn] \
  [get_bd_pins -auto_enable /krnl_vadd_1/ap_rst_n] \


#---------------------------
# Connectivity Phase 2
#---------------------------

#---------------------------
# Create Stream Map file
#---------------------------
set stream_subsystems [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}]
if {[string length $stream_subsystems] > 0} {    
  set xmlFile $vpl_output_dir/qdma_stream_map.xml
  set fp [open ${xmlFile} w]
  puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
  puts $fp "<xd:streamMap xmlns:xd=\"http://www.xilinx.com/xd\">"
  foreach streamSS [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}] {
    set ssInstance [string trimleft $streamSS /]
    set ssRegion [get_property CONFIG.SLR_ASSIGNMENTS $streamSS]
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"S??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"M??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
  }
  puts $fp "</xd:streamMap>"
  close $fp
}

