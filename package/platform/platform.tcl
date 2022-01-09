# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\KV260\package\platform\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\KV260\package\platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platform}\
-hw {E:\KV260\hardware\hardware.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/KV260/package}

platform write
platform generate -domains 
platform active {platform}
