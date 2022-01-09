# Export hardware XSA file from Vivado.

write-output "Exporting hardware design..."
F:\Vitis\Vivado\2021.1\bin\vivado.bat -mode tcl -source E:\KV260\scripts\export_hardware.tcl
Remove-Item ./vivado*.jou
Remove-Item ./vivado*.log
Remove-Item ./.Xil -Recurse -Force -Confirm:$false