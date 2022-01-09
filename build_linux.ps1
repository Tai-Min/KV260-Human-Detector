# To use this script you will need WSL with PetaLinux installed and sourced in .bashrc!
# Also make sure that you have "xilinx-k26-starterkit-v2021.1-final.bsp" BSP in your home directory.

param(
    [string]$Distro= 'Ubuntu-20.04',
    [string]$User= 'mateusz'
)

# Windows part - generate Hardware and DTO.
#./scripts/export_hardware.ps1
#./scripts/generate_dt.ps1

# Linux part - compile PetaLinux and DTO.
function Linux-Cmd ([string]$Cmd) {
    Invoke-Expression "WSL -d $Distro -u $User -e $Cmd"
}

$WinProjDrive = (Get-Location).Drive.Name.ToLower()
$WinProjPath = (Split-Path -Path (Get-Location).Path -NoQualifier).Replace('\', '')
$LinuxProjDir = "/home/$User/KV260"

write-output "Using WSL environment $Distro."
write-output "Setting $Distro user as $User."

Linux-Cmd "petalinux-create --type project --name $LinuxProjDir/linux -s ../xilinx-k26-starterkit-v2021.1-final.bsp"
#Linux-Cmd "rm -r -f ./hardware;"
#write-output "Copying PetaLinux config to WSL..."
#Linux-Cmd "cp -R /mnt/$WinProjDrive/$WinProjPath/linux $LinuxProjDir/linux"