param (
    # Possible:
    # All
    # Kernel
    # Link
    # App
    [string]$BuildType="All"
)

$AppName = "vadd"

# Get project's path.
$WinProjPath = (Split-Path -Path $myInvocation.MyCommand.Path) # Get full path without filename.
$WinProjDrive = (Split-Path -Path $WinProjPath -Qualifier).ToLower().Replace(':', '') # Get drive's letter.
$WinProjPath = (Split-Path -Path $WinProjPath -NoQualifier).substring(1) # Get full path without drive's letter.

# Load settings.
. "$WinProjDrive`:\$WinProjPath\scripts\get_settings.ps1"
$settings = GetSettings -File "$WinProjDrive`:\$WinProjPath\settings.ini"

$VitisPath = $settings.Get_Item("vitis_path")

# Save current location to get back into it after script.
$CurrLocation = Get-Location

# Do all the stuff inside project's directory.
Set-Location "$WinProjDrive`:\$WinProjPath\package"

# Build kernels.
if (($BuildType -eq "All") -or ($BuildType -eq "Kernel")) {
    Invoke-Expression -Command "$VitisPath/bin/v++.bat --platform ./embed_platform/export/embed_platform/embed_platform.xpfm --target hw --compile -I ./app_kernels/src --config ./app_kernels/Hardware/krnl_$AppName-compile.cfg -o `"./app_kernels/Hardware/build/krnl_$AppName.xo`" `"./app_kernels/src/krnl_$AppName.cpp`""
}

# Build hardware link.
if (($BuildType -eq "All") -or ($BuildType -eq "Link")) {
    Invoke-Expression -Command "$VitisPath/bin/v++.bat --target hw --link --config `"./app_system_hw_link/Hardware/$AppName`_container.cfg`" -o`"./app_system_hw_link/Hardware/$AppName`_container.xclbin`" ./app_kernels/Hardware/build/krnl_$AppName.xo"
}

# Build the app.
if (($BuildType -eq "All") -or ($BuildType -eq "App")) {
    Invoke-Expression -Command "$VitisPath/gnu/aarch64/nt/aarch64-linux/bin/aarch64-linux-gnu-g++.exe -std=c++1y -DVITIS_PLATFORM=embed_platform -D__USE_XOPEN2K8 -I$VitisPath/include/ -IZ:/home/mateusz/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/xrt/ -O2 -Wall -c -fmessage-length=0 --sysroot=Z:/home/mateusz/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -o `"./app/Hardware/src/vadd.o`" `"./app/src/vadd.cpp`"
    "
    Invoke-Expression -Command "$VitisPath/gnu/aarch64/nt/aarch64-linux/bin/aarch64-linux-gnu-g++.exe -v -o `"./app/Hardware/$AppName`" ./app/Hardware/src/vadd.o -LZ:/home/mateusz/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/ -lxilinxopencl -lpthread -lrt -ldl -lcrypt -lstdc++  --sysroot=Z:/home/mateusz/KV260/sdk/sysroots/cortexa72-cortexa53-xilinx-linux"
}
Set-Location $CurrLocation