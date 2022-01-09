# To use this script you will need WSL with PetaLinux installed!

param(
    # Vitis params:
    [string] $VivadoPath = 'F:\Vitis\Vivado\2021.1\bin',
    [string] $VitisPath = 'F:\Vitis\Vitis\2021.1\bin\',

    # WSL params:
    [string]$Distro = 'Ubuntu-20.04',
    [string]$User = 'mateusz',
    [string]$PetaLinuxDir = "/home/$User/petalinux"
)

$CurrLocation = Get-Location

# Windows part - generate Hardware and DTO.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

Set-Location "$WinProjDrive`:\$WinProjPath"

Write-Host "Starting Windows tasks..." -BackgroundColor White -ForegroundColor Blue
Write-Host "Project's directory found: $($WinProjDrive.ToUpper())`:\$WinProjPath" -BackgroundColor White -ForegroundColor Blue

Write-Host "Exporting hardware design..." -BackgroundColor White -ForegroundColor Blue # Generate XSA.
Invoke-Expression -Command "$VivadoPath\vivado.bat -mode tcl -source $WinProjDrive`:\$WinProjPath\scripts\export_hardware.tcl"
Write-Host "Done!" -BackgroundColor White -ForegroundColor Green

Write-Host "Generating DTO..." -BackgroundColor White -ForegroundColor Blue # Generate device tree overlay.
Invoke-Expression -Command "$VitisPath\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\generate_dto.tcl"
Write-Host "Done!" -BackgroundColor White -ForegroundColor Green

Remove-Item ./vivado*.jou # Remove temp files.
Remove-Item ./vivado*.log
Remove-Item ./.Xil -Recurse -Force -Confirm:$false

Write-Host "Windows tasks finished!" -BackgroundColor White -ForegroundColor Green

# Linux part - compile PetaLinux and DTO.
$LinuxProjPath = "/home/$User/KV260"

# Execute command in WSL in KV260 directory.
# $Dir - Directory to execute command in.  Leave empty to use user's home, if not empty then it's treated as ~/$Dir
# $Cmd - Single command to execute.
# Important! "Using bash -c" as $Cmd will be invoked in / instead of ~/$Dir for some reason.
function LinuxCmd ([string]$Dir, [string]$Cmd) {
    Invoke-Expression -Command "WSL -d $Distro -u $User --cd '\\wsl$\$Distro\home\$User\$Dir' -e $Cmd"
}

Write-Host "Starting WSL tasks..." -BackgroundColor White -ForegroundColor Blue
Write-Host "Using WSL environment: $Distro." -BackgroundColor White -ForegroundColor Blue
Write-Host "Setting $Distro's user as $User." -BackgroundColor White -ForegroundColor Blue

LinuxCmd "" "mkdir -p $LinuxProjPath" # Create KV260 directory just in case.

# Build PetaLinux
LinuxCmd "" "cp -r /mnt/$WinProjDrive/$WinProjPath/linux $LinuxProjPath"
LinuxCmd "" "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux && petalinux-config --get-hw-description=/mnt/$WinProjDrive/$WinProjPath/hardware --silent && petalinux-build && petalinux-build --sdk`""

# Compile device tree.
LinuxCmd "" "cp -r /mnt/$WinProjDrive/$WinProjPath/device_tree $LinuxProjPath"
LinuxCmd "" "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/device_tree && dtc -@ -O dtb -o pl.dtbo pl.dtsi`""

Write-Host "WSL tasks finished!" -BackgroundColor White -ForegroundColor Green

Set-Location $CurrLocation