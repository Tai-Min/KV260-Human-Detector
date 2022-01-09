# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/system.xdc

# Block Designs: bd/system/system.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system || ORIG_REF_NAME==system} -quiet] -quiet

# IP: bd/system/ip/system_zynq_ultra_ps_e_0_0/system_zynq_ultra_ps_e_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_zynq_ultra_ps_e_0_0 || ORIG_REF_NAME==system_zynq_ultra_ps_e_0_0} -quiet] -quiet

# IP: bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_clk_wiz_0_0 || ORIG_REF_NAME==system_clk_wiz_0_0} -quiet] -quiet

# IP: bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_proc_sys_reset_0_0 || ORIG_REF_NAME==system_proc_sys_reset_0_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_axi_intc_0_0 || ORIG_REF_NAME==system_axi_intc_0_0} -quiet] -quiet

# IP: bd/system/ip/system_xbar_0/system_xbar_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_xbar_0 || ORIG_REF_NAME==system_xbar_0} -quiet] -quiet

# IP: bd/system/ip/system_ps8_0_axi_periph_0/system_ps8_0_axi_periph_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_ps8_0_axi_periph_0 || ORIG_REF_NAME==system_ps8_0_axi_periph_0} -quiet] -quiet

# IP: bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_system_management_wiz_0_0 || ORIG_REF_NAME==system_system_management_wiz_0_0} -quiet] -quiet

# IP: bd/system/ip/system_pwm_0_0/system_pwm_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_pwm_0_0 || ORIG_REF_NAME==system_pwm_0_0} -quiet] -quiet

# IP: bd/system/ip/system_divider_0_0/system_divider_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_divider_0_0 || ORIG_REF_NAME==system_divider_0_0} -quiet] -quiet

# IP: bd/system/ip/system_temp2pwm_0_0/system_temp2pwm_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_temp2pwm_0_0 || ORIG_REF_NAME==system_temp2pwm_0_0} -quiet] -quiet

# IP: bd/system/ip/system_divider_1_0/system_divider_1_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_divider_1_0 || ORIG_REF_NAME==system_divider_1_0} -quiet] -quiet

# IP: bd/system/ip/system_stepper_0_0/system_stepper_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_stepper_0_0 || ORIG_REF_NAME==system_stepper_0_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_axi_iic_0_0 || ORIG_REF_NAME==system_axi_iic_0_0} -quiet] -quiet

# IP: bd/system/ip/system_xlslice_0_0/system_xlslice_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_xlslice_0_0 || ORIG_REF_NAME==system_xlslice_0_0} -quiet] -quiet

# IP: bd/system/ip/system_xlslice_0_1/system_xlslice_0_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_xlslice_0_1 || ORIG_REF_NAME==system_xlslice_0_1} -quiet] -quiet

# IP: bd/system/ip/system_xlslice_0_2/system_xlslice_0_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_xlslice_0_2 || ORIG_REF_NAME==system_xlslice_0_2} -quiet] -quiet

# IP: bd/system/ip/system_xlconcat_0_0/system_xlconcat_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_xlconcat_0_0 || ORIG_REF_NAME==system_xlconcat_0_0} -quiet] -quiet

# IP: bd/system/ip/system_auto_pc_0/system_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==system_auto_pc_0 || ORIG_REF_NAME==system_auto_pc_0} -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_zynq_ultra_ps_e_0_0/system_zynq_ultra_ps_e_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_zynq_ultra_ps_e_0_0/system_zynq_ultra_ps_e_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_zynq_ultra_ps_e_0_0 || ORIG_REF_NAME==system_zynq_ultra_ps_e_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_clk_wiz_0_0 || ORIG_REF_NAME==system_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_clk_wiz_0_0 || ORIG_REF_NAME==system_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_proc_sys_reset_0_0 || ORIG_REF_NAME==system_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_proc_sys_reset_0_0 || ORIG_REF_NAME==system_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_intc_0_0 || ORIG_REF_NAME==system_axi_intc_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_intc_0_0 || ORIG_REF_NAME==system_axi_intc_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_system_management_wiz_0_0 || ORIG_REF_NAME==system_system_management_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_system_management_wiz_0_0 || ORIG_REF_NAME==system_system_management_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_iic_0_0 || ORIG_REF_NAME==system_axi_iic_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc

# XDC: e:/KV260/hardware/hardware.gen/sources_1/bd/system/system_ooc.xdc