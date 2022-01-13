# Monitor points

# Call debug/profiling automation
set dpa_dict [list \
             ]
set dpa_opts [list \
              AIE_TRACE  {FIFO_DEPTH 4096 PACKET_RATE 0 CLK_SELECT default PROFILE_STREAMS 0 MEM_SPACE NOC MEM_INDEX 0} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script E:/KV260/package/binary_container_1.build/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Write debug_ip_layout
debug_profile::write_debug_ip_layout false "vendor:lib:system:1.0" "E:/KV260/package/binary_container_1.build/link/int"
