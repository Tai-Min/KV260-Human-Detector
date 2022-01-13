param (
    [string]$BootDriveLetter="",
    [string]$RootFsDriveLetter=""
)

# Get project's path.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

# Load settings.
. "$WinProjDrive`:\$WinProjPath\scripts\get_settings.ps1"
$settings = GetSettings -File "$WinProjDrive`:\$WinProjPath\settings.ini"

$Distro = $settings.Get_Item("distro")
$User = $settings.Get_Item("user")

. "$WinProjDrive`:\$WinProjPath\scripts\linux_cmd.ps1"

$LinuxProjPath = "/home/$User/KV260"