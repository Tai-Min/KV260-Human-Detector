# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\KV260\package\embed_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\KV260\package\embed_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {embed_platform}\
-hw {E:\KV260\hardware\hardware.xsa}\
-proc {psu_cortexa53} -os {linux} -arch {64-bit} -no-boot-bsp -fsbl-target {psu_cortexa53_0} -out {E:/KV260/package}

platform write
platform active {embed_platform}
domain config -generate-bif
platform write
domain config -boot {E:\KV260\package\pfm\boot}
platform write
domain config -image {E:\KV260\package\pfm\sd_dir}
platform write
platform generate
platform active {embed_platform}
domain config -generate-bif
platform write
domain config -boot {E:\KV260\package\pfm\boot}
platform write
domain config -image {E:\KV260\package\pfm\sd_dir}
platform write
platform generate -domains 
platform active {embed_platform}
platform active {embed_platform}
domain config -boot {E:\KV260\package\pfm\boot}
domain config -boot {E:\KV260\package\pfm\boot}
domain config -generate-bif
domain config -image {E:\KV260\package\pfm\sd_dir}
platform active {embed_platform}
domain config -boot {E:\KV260\package\pfm\boot}
platform write
domain config -image {E:\KV260\package\pfm\sd_dir}
platform write
platform generate
platform config -updatehw {E:/KV260/hardware/hardware.xsa}
platform active {embed_platform}
platform config -updatehw {hardware/hardware.xsa}
platform config -updatehw {hardware/hardware.xsa}
platform config -updatehw {E:/KV260/hardware/hardware.xsa}
domain config -boot {E:\KV260\package\pfm\boot}
platform write
domain config -image {E:\KV260\package\pfm\sd_dir}
platform write
platform active {embed_platform}
platform config -updatehw {E:/KV260/hardware/hardware.xsa}
domain config -boot {E:\KV260\package\pfm\boot}
domain config -image {E:\KV260\package\pfm\sd_dir}
domain config -image {E:\KV260\package\pfm\sd_dir}
platform active {embed_platform}
domain config -boot {E:\KV260\package\pfm\boot}
platform write
domain config -image {E:\KV260\package\pfm\sd_dir}
platform write
platform generate
platform config -updatehw {E:/KV260/hardware/hardware.xsa}
platform generate -domains 
platform active {embed_platform}
platform generate -domains 
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform active {embed_platform}
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform active {embed_platform}
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform active {embed_platform}
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform active {embed_platform}
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate
platform active {embed_platform}
platform config -updatehw {e:/kv260/hardware/hardware.xsa}
platform generate -domains 
platform generate -domains 
