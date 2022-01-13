param (
    [switch]$Help=$False,

    # Possible (multiple possible):
    # All
    # Kernel
    # Link
    # App
    [string[]]$BuildType="All"
)

if (($Help -eq $True) -or (($BuildType.count -gt 0) -and ($BuildType -notcontains "All") -and ($BuildType -notcontains "Kernel") -and ($BuildType -notcontains "Link") -and ($BuildType -notcontains "App"))){
    if ($Help -ne $True){
        Write-Host "No valid build option provided!" -ForegroundColor Red
    }

    Write-Host "Usage:" -ForegroundColor Blue
    Write-Host "- Build whole accelerated application (kernels, hw link and application):" -ForegroundColor Blue
    Write-Host "    ./build_app.ps1" -ForegroundColor Blue
    Write-Host "    ./build_app.ps1 -BuildType All" -ForegroundColor Blue
    Write-Host "- Build one or more items:" -ForegroundColor Blue
    Write-Host "    ./build_app.ps1 -BuildType type1 type2 ... typen" -ForegroundColor Blue
    Write-Host "    Allowed types: Kernel, Link, App" -ForegroundColor Blue
    Exit
}

$AppName = "vadd"

# Get project's path.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

# Load settings.
. "$WinProjDrive`:\$WinProjPath\scripts\get_settings.ps1"
$settings = GetSettings -File "$WinProjDrive`:\$WinProjPath\settings.ini"

$VitisPath = $settings.Get_Item("vitis_path")
$User = $settings.Get_Item("user")
$VirtualDrive = $settings.Get_Item("virtual_drive")

# Save current location to get back into it after script.
$CurrLocation = Get-Location

function Cleanup {
    # Remove temp files.
    Write-Host "Cleaning up..." -ForegroundColor Blue
    Set-Location $CurrLocation
    Exit
}

# Do all the stuff inside project's directory.
Set-Location "$WinProjDrive`:\$WinProjPath\package"

Write-Host "Starting Vitis tasks..." -ForegroundColor Blue
Write-Host "Project's directory found: $($WinProjDrive.ToUpper())`:\$WinProjPath" -ForegroundColor Blue

# Build kernels.
if (($BuildType -contains "All") -or ($BuildType -contains "Kernel")) {
    Write-Host "Building kernels..." -ForegroundColor Blue
    Invoke-Expression -Command "$VitisPath/bin/v++.bat --platform ./embed_platform/export/embed_platform/embed_platform.xpfm --target hw --compile -I ./app_kernels/src --config ./app_kernels/Hardware/krnl_$AppName-compile.cfg -o `"./app_kernels/Hardware/build/krnl_$AppName.xo`" `"./app_kernels/src/krnl_$AppName.cpp`""
    if ($LastExitCode -ne 0) {
        Write-Host "Failed to build kernel." -ForegroundColor Red
        Cleanup
    }
    Write-Host "Done!" -ForegroundColor Green
}

# Build hardware link.
if (($BuildType -contains "All") -or ($BuildType -contains "Link")) {
    Write-Host "Building hardware link..." -ForegroundColor Blue
    Invoke-Expression -Command "$VitisPath/bin/v++.bat --target hw --link --config `"./app_system_hw_link/Hardware/$AppName`_container.cfg`" -o`"./app_system_hw_link/Hardware/$AppName`_container.xclbin`" ./app_kernels/Hardware/build/krnl_$AppName.xo"
    if ($LastExitCode -ne 0) {
        Write-Host "Failed to build hardware link." -ForegroundColor Red
        Cleanup
    }
    Write-Host "Done!" -ForegroundColor Green
}

# Build the app.
if (($BuildType -contains "All") -or ($BuildType -contains "App")) {
    $BuildFlags = "-std=c++1y -v -DVITIS_PLATFORM=embed_platform -D__USE_XOPEN2K8 -O2 -Wall -Werror"

    #$IncludePath = "$VirtualDrive`:\home\$User\KV260\sdk\sysroots\cortexa72-cortexa53-xilinx-linux\usr\include\xrt\"
    $IncludePath = ""
    $Libs = "-lxilinxopencl -lpthread -lrt -ldl -lcrypt -lstdc++"
    $LibPaths = "`"\usr\lib\:\lib\`""
    
    Write-Host "Building application..." -ForegroundColor Blue

    $Files = ".\app\src\" + ((Get-ChildItem -Path ./app/src -Filter *.cpp -Recurse -File -Name) -join " .\app\src\")

    Invoke-Expression -Command "$VitisPath\gnu\aarch64\nt\aarch64-linux\bin\aarch64-linux-gnu-g++.exe $BuildFlags -I$IncludePath -L$LibPaths $Libs --sysroot=$VirtualDrive`:\home\$User\KV260\sdk_win -o .\app\Hardware\$AppName $Files" 
    if ($LastExitCode -ne 0) {
        Write-Host "Failed to build application." -ForegroundColor Red
        Cleanup
    }

    Write-Host "Done!" -ForegroundColor Green
}

Cleanup