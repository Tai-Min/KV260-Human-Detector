set_property SRC_FILE_INFO {cfile:e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc rfile:../../../hardware.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:system_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:e:/KV260/hardware/hardware.gen/sources_1/bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0.xdc rfile:../../../hardware.gen/sources_1/bd/system/ip/system_system_management_wiz_0_0/system_system_management_wiz_0_0.xdc id:2 order:EARLY scoped_inst:system_i/system_management_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:E:/KV260/hardware/hardware.srcs/constrs_1/new/system.xdc rfile:../../../hardware.srcs/constrs_1/new/system.xdc id:3} [current_design]
current_instance system_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
current_instance system_i/system_management_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC SYSMONE4_X0Y0 [get_cells -hier {*inst_sysmon} -filter {NAME =~ *inst_sysmon}]
current_instance
set_property src_info {type:XDC file:3 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A12 [get_ports fan_pin]
