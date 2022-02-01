vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_8
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_15
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_24
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_iic_v2_0_25
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/axi_protocol_converter_v2_1_22
vlib activehdl/axi_mmu_v2_1_20

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 activehdl/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_15 activehdl/axi_intc_v4_1_15
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 activehdl/axi_gpio_v2_0_24
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_iic_v2_0_25 activehdl/axi_iic_v2_0_25
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22
vmap axi_mmu_v2_1_20 activehdl/axi_mmu_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_zynq_ps_0_1/sim/system_zynq_ps_0_vip_wrapper.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_sys_ret200_0_1/sim/system_sys_ret200_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_15 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_intc_0_1/sim/system_axi_intc_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_stepper_div_0_1/sim/system_stepper_div_0.v" \
"../../../bd/system/ip/system_stepper_0_1/sim/system_stepper_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_io_0_1/sim/system_axi_io_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_latch_bit_0_1/sim/system_latch_bit_0.v" \
"../../../bd/system/ip/system_cmd_bit_0_1/sim/system_cmd_bit_0.v" \
"../../../bd/system/ip/system_fce_ena_bit_0_1/sim/system_fce_ena_bit_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_stepper_state_0_1/sim/system_stepper_state_0.v" \
"../../../bd/system/ip/system_divider_0_0/sim/system_divider_0_0.v" \
"../../../bd/system/ip/system_pwm_0_0/sim/system_pwm_0_0.v" \
"../../../bd/system/ip/system_temp2pwm_0_0/sim/system_temp2pwm_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/common_types_pkg.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_family_support.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_family.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_soft_reset.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_system_management_wiz_0_0_pselect_f.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/axi_lite_ipif_v1_31_a/hdl/src/vhdl/system_system_management_wiz_0_0_address_decoder.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/axi_lite_ipif_v1_31_a/hdl/src/vhdl/system_system_management_wiz_0_0_slave_attachment.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/system_system_management_wiz_0_0_interrupt_control.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/axi_lite_ipif_v1_31_a/hdl/src/vhdl/system_system_management_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_drp_arbiter.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_temperature_update.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_iic_v2_0_25 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/1529/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_iic_0_0/sim/system_axi_iic_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../hardware.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work axi_mmu_v2_1_20  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hardware.gen/sources_1/bd/system/ipshared/88c9/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/da1e/hdl" "+incdir+../../../../hardware.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_s00_mmu_0/sim/system_s00_mmu_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

