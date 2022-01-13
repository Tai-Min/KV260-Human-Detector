# To use this script you will need WSL with PetaLinux installed!
param (
    [switch]$Help=$False,

    # Possible (multiple allowed):
    # All
    # XSA
    # DeviceTree
    # PetaLinux
    # Platform
    [string[]]$BuildType="All"
)

if (($Help -eq $True) -or (($BuildType.count -gt 0) -and ($BuildType -notcontains "All") -and ($BuildType -notcontains "XSA") -and ($BuildType -notcontains "DeviceTree") -and ($BuildType -notcontains "PetaLinux") -and ($BuildType -notcontains "Platform"))){
    if ($Help -ne $True){
        Write-Host "No valid build option provided!" -ForegroundColor Red
    }

    Write-Host "Usage:" -ForegroundColor Blue
    Write-Host "- Run whole build sequence:" -ForegroundColor Blue
    Write-Host "    ./regenerate_hw.ps1" -ForegroundColor Blue
    Write-Host "    ./regenerate_hw.ps1 -BuildType All" -ForegroundColor Blue
    Write-Host "- Run partial build:" -ForegroundColor Blue
    Write-Host "    ./regenerate_hw.ps1 -BuildType type1 type2 ... typen" -ForegroundColor Blue
    Write-Host "    Allowed types:" -ForegroundColor Blue
    Write-Host "    - XSA: Generate hardware description only." -ForegroundColor Blue
    Write-Host "    - DeviceTree: Generate and compile device tree." -ForegroundColor Blue
    Write-Host "    - PetaLinux: Build PetaLinux, SDK and unpack it." -ForegroundColor Blue
    Write-Host "    - SD: Generate PetaLinux SD image and write it to selected device." -ForegroundColor Blue
    Write-Host "    - Platform: Update Vivado platform with new XSA and boot directories." -ForegroundColor Blue
    Exit
}

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

function Cleanup {
    # Remove temp files.
    Write-Host "Cleaning up..." -ForegroundColor Blue
    Remove-Item ./vivado*.jou -ErrorAction SilentlyContinue
    Remove-Item ./vivado*.log -ErrorAction SilentlyContinue
    Remove-Item ./.Xil -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue

    Set-Location $CurrLocation

    Exit
}

# Do all the stuff inside project's directory.
Set-Location "$WinProjDrive`:\$WinProjPath"

if (($BuildType -contains "All") -or ($BuildType -contains "XSA") -or ($BuildType -contains "DeviceTree")){
    Write-Host "Starting Windows tasks..." -ForegroundColor Blue
    Write-Host "Project's directory found: $($WinProjDrive.ToUpper())`:\$WinProjPath" -ForegroundColor Blue
}

# Generate XSA.
if (($BuildType -contains "All") -or ($BuildType -contains "XSA")) {
    Write-Host "Exporting hardware design..." -ForegroundColor Blue 
    Invoke-Expression -Command "$VivadoPath\bin\vivado.bat -mode tcl -source $WinProjDrive`:\$WinProjPath\scripts\export_hardware.tcl -tclargs $WinProjDrive`:/$WinProjPath"
    if ($LastExitCode -ne 0) {
        Cleanup
    }
    Write-Host "Done!" -ForegroundColor Green
}

# Generate device tree overlay.
if (($BuildType -contains "All") -or ($BuildType -contains "DeviceTree")) {
    Write-Host "Generating DTO..." -ForegroundColor Blue 
    Invoke-Expression -Command "$VitisPath\bin\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\generate_dto.tcl $WinProjDrive`:/$WinProjPath"
    if ($LastExitCode -ne 0) {
        Cleanup
    }
    Write-Host "Done!" -ForegroundColor Green
}

if (($BuildType -contains "All") -or ($BuildType -contains "XSA") -or ($BuildType -contains "DeviceTree")){
    Write-Host "Windows tasks finished!" -ForegroundColor Green
}

### WSL part - compile PetaLinux, DTO and copy generated files to platform package.
$Distro = $settings.Get_Item("distro")
$User = $settings.Get_Item("user")
$PetaLinuxDir = $settings.Get_Item("petalinux_path")

$LinuxProjPath = "/home/$User/KV260"

. "$WinProjDrive`:\$WinProjPath\scripts\linux_cmd.ps1"

if (($BuildType -contains "All") -or ($BuildType -contains "PetaLinux") -or ($BuildType -contains "DeviceTree")){
    Write-Host "Starting WSL tasks..." -ForegroundColor Blue
    Write-Host "Using WSL environment: $Distro." -ForegroundColor Blue
    Write-Host "Setting $Distro's user as $User." -ForegroundColor Blue

    # Create KV260 directory.
    LinuxCmd -Cmd "mkdir -p $LinuxProjPath" 
}

# Build PetaLinux and SDK.
if (($BuildType -contains "All") -or ($BuildType -contains "PetaLinux")) {
    Write-Host "Building PetaLinux image..." -ForegroundColor Blue
    LinuxCmd -Cmd "cp -r /mnt/$WinProjDrive/$WinProjPath/linux $LinuxProjPath"
    LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux && petalinux-config --get-hw-description=/mnt/$WinProjDrive/$WinProjPath/hardware --silent && petalinux-build && petalinux-build --sdk && petalinux-package --boot --fsbl images/linux/zynqmp_fsbl.elf --pmufw images/linux/pmufw.elf --fpga images/linux/system.bit --u-boot --force`""
    Write-Host "Done!" -ForegroundColor Green
}

# Compile device tree.
if (($BuildType -contains "All") -or ($BuildType -contains "DeviceTree")) {
    Write-Host "Compiling device tree..." -ForegroundColor Blue
    LinuxCmd "bash -c `"source $PetaLinuxDir/settings.sh && cd /mnt/$WinProjDrive/$WinProjPath/device_tree && dtc -@ -O dtb -o pl.dtbo pl.dtsi`""
    Write-Host "Done!" -ForegroundColor Green
}

# Copy generated PetaLinux files to platform package and populate SDK. 
if (($BuildType -contains "All") -or ($BuildType -contains "PetaLinux")) {
    Write-Host "Populating SDK..." -ForegroundColor Blue
    LinuxCmd -Cmd "bash -c `"source $PetaLinuxDir/settings.sh && cd ~/KV260/linux/images/linux && ./sdk.sh -d ~/KV260/sdk`""
    
    # Copy /usr/ and /lib/ dirs without big cased duplicates and symlinks replaced with real files.
    Write-Host "Generate Windows friendly SDK directory..." -ForegroundColor Blue
    Write-Host "WARNING: This will require sudo permissions for rsync due to PetaLinux file permissions!" -ForegroundColor Yellow

    LinuxCmd -Cmd "bash -c `"cd ~/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux && find ./usr | sort -f | uniq -di | cut -b 6- > ~/KV260/exclude-file.txt &&  cd ~/KV260 && sudo rsync -a --copy-links ./sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/ ./sdk_win/usr --exclude-from=exclude-file.txt`""
    
    LinuxCmd -Cmd "bash -c `"cd ~/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux && find ./lib | sort -f | uniq -di | cut -b 6- > ~/KV260/exclude-file.txt && cd ~/KV260 && sudo rsync -a --copy-links ./sdk/sysroots/cortexa72-cortexa53-xilinx-linux/lib/ ./sdk_win/lib  --exclude-from=exclude-file.txt`""
    
    # Copy boot files to Vitis project.
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp zynqmp_fsbl.elf pmufw.elf bl31.elf u-boot-dtb.elf system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot"
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "mv /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot-dtb.elf /mnt/$WinProjDrive/$WinProjPath/package/pfm/boot/u-boot.elf"
    LinuxCmd -Dir "KV260/linux/images/linux" -Cmd "cp boot.scr system.dtb /mnt/$WinProjDrive/$WinProjPath/package/pfm/sd_dir"
    Write-Host "Done!" -ForegroundColor Green
}

if (($BuildType -contains "All") -or ($BuildType -contains "PetaLinux") -or ($BuildType -contains "DeviceTree")){
    Write-Host "WSL tasks finished!" -ForegroundColor Green
}

### Windows part again.
if (($BuildType -contains "All") -or ($BuildType -contains "XSA")){
    Write-Host "Starting Windows tasks again..." -ForegroundColor Blue
}
elseif (($BuildType -contains "All") -or ($BuildType -contains "Platform")){
    Write-Host "Starting Windows tasks..." -ForegroundColor Blue
}

# Update platform project with new XSA.
if (($BuildType -contains "All") -or ($BuildType -contains "Platform")) {
    Write-Host "Update platform..." -ForegroundColor Blue
    Invoke-Expression -Command "$VitisPath\bin\xsct.bat $WinProjDrive`:\$WinProjPath\scripts\update_platform.tcl $WinProjDrive`:/$WinProjPath"
    if ($LastExitCode -ne 0) {
        Cleanup
    }
    Write-Host "Done!" -ForegroundColor Green
}

if (($BuildType -contains "All") -or ($BuildType -contains "Platform")){
    Write-Host "Windows tasks finished!" -ForegroundColor Green
}

Cleanup