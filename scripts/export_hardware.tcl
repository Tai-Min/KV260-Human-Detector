# Export hardware XSA file from Vivado.

open_project ./hardware/hardware.xpr

set_property platform.default_output_type "sd_card" [current_project]
set_property platform.design_intent.embedded "true" [current_project]
set_property platform.design_intent.server_managed "false" [current_project]
set_property platform.design_intent.external_host "false" [current_project]
set_property platform.design_intent.datacenter "false" [current_project]

write_hw_platform -include_bit -force -file ./hardware/hardware.xsa

close_project
exit