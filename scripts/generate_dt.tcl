# Generate device tree based on generated hardware XSA file.

hsi open_hw_design ./hardware/hardware.xsa

hsi set_repo_path E:/device-tree-xlnx
hsi create_sw_design device-tree -os device_tree -proc psu_cortexa53_0
hsi set_property CONFIG.dt_overlay true [hsi::get_os]
hsi set_property CONFIG.dt_zocl true [hsi::get_os]
hsi generate_target -dir ./device_tree

hsi close_hw_design [hsi current_hw_design]