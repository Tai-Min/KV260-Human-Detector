# Update platform.
platform read [lindex $argv 0]/package/embed_platform/platform.spr
platform active {embed_platform}
platform config -updatehw [lindex $argv 0]/hardware/hardware.xsa
domain config -generate-bif
domain config -boot [lindex $argv 0]/package/pfm/boot
domain config -image [lindex $argv 0]/package/pfm/sd_dir
platform write
platform generate