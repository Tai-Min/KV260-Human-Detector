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
    if ($LastExitCode -ne 0) {
        Cleanup
    }
}