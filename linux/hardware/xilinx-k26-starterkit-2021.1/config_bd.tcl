
    
proc create_project_1 { parentCell nameHier } {

set parentObj [get_bd_cells $parentCell]

set oldCurInst [current_bd_instance .]

current_bd_instance $parentObj

if {$nameHier ne "" } {

set hier_obj [create_bd_cell -type hier $nameHier]

current_bd_instance $hier_obj

}
set ::PS_INST zynq_ultra_ps_e_0
set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e zynq_ultra_ps_e_0 ] 

 apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1"} [get_bd_cells zynq_ultra_ps_e_0] 

connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0_zynq_ultra_ps_e_0_maxihpm0_fpd_aclk [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk]
connect_bd_net -net zynq_ultra_ps_e_0_pl_clk1_zynq_ultra_ps_e_0_maxihpm1_fpd_aclk [get_bd_pins zynq_ultra_ps_e_0/pl_clk1] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk]

current_bd_instance $oldCurInst
        
}

create_project_1 "" ""
        
