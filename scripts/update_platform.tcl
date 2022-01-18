# Update platform.
platform read [lindex $argv 0]/package/embed_platform/platform.spr
platform active {embed_platform}
platform config -updatehw [lindex $argv 0]/hardware/hardware.xsa
domain config -boot [lindex $argv 0]/package/pfm/boot
domain config -sd-dir [lindex $argv 0]/package/pfm/sd_dir
domain config -generate-bif
platform write
platform generate