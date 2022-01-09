write-output "Generating DTO..."
F:/Vitis/Vitis/2021.1/bin/xsct.bat E:/KV260/scripts/generate_dt.tcl
Remove-Item ./.Xil -Recurse -Force -Confirm:$false

WSL ls