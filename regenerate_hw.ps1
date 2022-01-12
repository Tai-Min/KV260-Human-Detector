# To use this script you will need WSL with PetaLinux installed!

param (
    # Possible:
    # All
    # XSA
    # DeviceTree
    # PetaLinux
    # Platform
    [string]$BuildType="All"
)

### Windows part - generate Hardware and DTO.

# Get project's path.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

# Load settings.
. "$WinProjDrive`:\$WinProjPath\scripts\get_settings.ps1"
$settings = GetSettings -File "$WinProjDrive`:\$WinProjPath\settings.ini"

$VivadoPath = $settings.Get_Item("vivado_path")
$VitisPath = $settings.Get_Item("vitis_path")

# Save current location to get back into it after script.
$CurrLocation = Get-Location

# Do all the stuff inside project's directory.
Set-Location "$WinProjDrive`:\$WinProjPath"

Write-Host "Starting Windows tasks..." -ForegroundColor Blue
Write-Host "Project's directory found: $($WinProjDrive.ToUpper())`:\$WinProjPath" -ForegroundColor Blue

# Generate XSA.
if (($BuildType -eq "All") -or ($BuildType -eq "XSA")) {
    Write-Host "Exporting hardware design..." -ForegroundColor Blue 
    Invoke-Expression -Command "$VivadoPath\bin\vivado.bat -mode tcl -source $WinProjDrive`:\$WinProjPath\scripts\export_hardware.tcl -tclargs $WinProjDrive`:/$WinProjPath"
    Write-Host "Done!" -ForegroundColor Green
}

# Generate device tree overlay.
if (($BuildType -eq "All") -or ($BuildType -eq "DeviceTree")) {
    Write-Host "Generating DTO..." -ForegroundColor Blue 
    Invoke-Expression -Command "$VitisPath\bin\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\generate_dto.tcl $WinProjDrive`:/$WinProjPath"
    Write-Host "Done!" -ForegroundColor Green
    Write-Host "Windows tasks finished!" -ForegroundColor Green
}

### WSL part - compile PetaLinux, DTO and copy generated files to platform package.
$Distro = $settings.Get_Item("distro")
$User = $settings.Get_Item("user")
$PetaLinuxDir = $settings.Get_Item("petalinux_path")

$LinuxProjPath = "/home/$User/KV260"

# Execute command in WSL in desired directory.
# $Cmd - Single command to execute.
# $Dir - Directory to execute command in. Leave empty to use user's home, if not empty then it's treated as ~/$Dir
# Important! "Using bash -c" as $Cmd will be invoked in / instead of ~/$Dir for some reason.
# Have that in mind and use "cd <your dir> && $Cmd" in this case.
function LinuxCmd {
    param (
        [string]$Cmd = "",
        [string]$Dir = ""
    )
    Invoke-Expression -Command "WSL -d $Distro -u $User --cd '\\wsl$\$Distro\home\$User\$Dir' -e $Cmd"
}

Write-Host "Starting WSL tasks..." -ForegroundColor Blue
Write-Host "Using WSL environment: $Distro." -ForegroundColor Blue
Write-Host "Setting $Distro's user as $User." -ForegroundColor Blue

# Create KV260 directory.
LinuxCmd -Cmd "mkdir -p $LinuxProjPath" 

# Build PetaLinux and SDK.
if (($BuildType -eq "All") -or ($BuildType -eq "PetaLinux")) {
    Write-Host "Building PetaLinux image..." -ForegroundColor Blue
    LinuxCmd -Cmd "cp -r /mnt/$WinProjDrive/$WinProjPath/linux $LinuxProjPath"
    LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux && petalinux-config --get-hw-description=/mnt/$WinProjDrive/$WinProjPath/hardware --silent && petalinux-build && petalinux-build --sdk`""
    Write-Host "Done!" -ForegroundColor Green
}

# Compile device tree.
if (($BuildType -eq "All") -or ($BuildType -eq "DeviceTree")) {
    Write-Host "Compiling device tree..." -ForegroundColor Blue
    LinuxCmd "bash -c `"source $PetaLinuxDir/settings.sh && cd /mnt/$WinProjDrive/$WinProjPath/device_tree && dtc -@ -O dtb -o pl.dtbo pl.dtsi`""
    Write-Host "Done!" -ForegroundColor Green
}

# Copy generated PetaLinux files to platform package and populate SDK. 
if (($BuildType -eq "All") -or ($BuildType -eq "PetaLinux")) {
    Write-Host "Populating SDK..." -ForegroundColor Blue
    LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux/images/linux && ./sdk.sh -d ~/KV260/sdk`""
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp zynqmp_fsbl.elf pmufw.elf bl31.elf u-boot-dtb.elf system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot"
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "mv /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot-dtb.elf /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot.elf"
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp boot.scr system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/sd_dir"
    Write-Host "Done!" -ForegroundColor Green
}

Write-Host "WSL tasks finished!" -ForegroundColor Green

### Windows part again.
Write-Host "Starting Windows tasks again..." -ForegroundColor Blue

# Update platform project with new XSA.
if (($BuildType -eq "All") -or ($BuildType -eq "Platform")) {
    Write-Host "Update platform..." -ForegroundColor Blue
    Invoke-Expression -Command "$VitisPath\bin\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\update_platform.tcl $WinProjDrive`:/$WinProjPath"
    Write-Host "Done!" -ForegroundColor Green
}

Write-Host "Windows tasks finished!" -ForegroundColor Green

# Remove temp files.
Write-Host "Cleaning up..." -ForegroundColor Blue
Remove-Item ./vivado*.jou -ErrorAction SilentlyContinue
Remove-Item ./vivado*.log -ErrorAction SilentlyContinue
Remove-Item ./.Xil -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue

Set-Location $CurrLocation