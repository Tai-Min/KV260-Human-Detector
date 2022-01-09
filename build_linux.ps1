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

### Windows part - generate Hardware and DTO.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

Set-Location "$WinProjDrive`:\$WinProjPath"

Write-Host "Starting Windows tasks..." -ForegroundColor Blue
Write-Host "Project's directory found: $($WinProjDrive.ToUpper())`:\$WinProjPath" -ForegroundColor Blue

# Generate XSA.
Write-Host "Exporting hardware design..." -ForegroundColor Blue 
#Invoke-Expression -Command "$VivadoPath\vivado.bat -mode tcl -source $WinProjDrive`:\$WinProjPath\scripts\export_hardware.tcl"
Write-Host "Done!" -ForegroundColor Green

# Generate device tree overlay.
Write-Host "Generating DTO..." -ForegroundColor Blue 
#Invoke-Expression -Command "$VitisPath\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\generate_dto.tcl"
Write-Host "Done!" -ForegroundColor Green

# Remove temp files.
Remove-Item ./vivado*.jou 
Remove-Item ./vivado*.log
Remove-Item ./.Xil -Recurse -Force -Confirm:$false

Write-Host "Windows tasks finished!" -ForegroundColor Green

### Linux part - compile PetaLinux, DTO and copy generated files to platform package.
$LinuxProjPath = "/home/$User/KV260"

# Execute command in WSL in desired directory.
# $Cmd - Single command to execute.
# $Dir - Directory to execute command in. Leave empty to use user's home, if not empty then it's treated as ~/$Dir
# Important! "Using bash -c" as $Cmd will be invoked in / instead of ~/$Dir for some reason.
# Have that in mind and use "cd <your dir> && $Cmd" in this case.
#function LinuxCmd ([string]$Dir, [string]$Cmd) {
function LinuxCmd {
    param(
        [string]$Cmd = "",
        [string]$Dir = ""
    )

    Invoke-Expression -Command "WSL -d $Distro -u $User --cd '\\wsl$\$Distro\home\$User\$Dir' -e $Cmd"
}

Write-Host "Starting WSL tasks..." -ForegroundColor Blue
Write-Host "Using WSL environment: $Distro." -ForegroundColor Blue
Write-Host "Setting $Distro's user as $User." -ForegroundColor Blue

# Create KV260 directory just in case.
LinuxCmd -Cmd "mkdir -p $LinuxProjPath" 

# Build PetaLinux
#LinuxCmd -Cmd "cp -r /mnt/$WinProjDrive/$WinProjPath/linux $LinuxProjPath"
#LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux && petalinux-config --get-hw-description=/mnt/$WinProjDrive/$WinProjPath/hardware --silent && petalinux-build && petalinux-build --sdk`""

# Compile device tree.
LinuxCmd "bash -c `"source $PetaLinuxDir/settings.sh && cd /mnt/$WinProjDrive/$WinProjPath/device_tree && dtc -@ -O dtb -o pl.dtbo pl.dtsi`""

# Copy generated PetaLinux files to platform package. 
#LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux/images/linux && ./sdk.sh -d /mnt/$WinProjDrive/$WinProjPath/package`""
LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp zynqmp_fsbl.elf pmufw.elf bl31.elf u-boot-dtb.elf system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot"
LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "mv /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot-dtb.elf /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot.elf"
LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp boot.scr system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/sd_dir"

Write-Host "WSL tasks finished!" -ForegroundColor Green

Set-Location $CurrLocation