# KV260-Human-Detector
Lidar based human detector on Kria KV260.

Created for [Adaptive Computing Challenge 2021
with Xilinx](https://www.hackster.io/contests/xilinxadaptivecomputing2021).

For more information about the project itself see [Human position estimator for mobile robots](https://www.hackster.io/Tai-Min/human-position-estimator-for-mobile-robots-d86454).

This repository contains all files and instructions required to recreate the project from scratch, including code, hardware design files, PCB design and 3D printable parts. 

## Recreating the project
### 3D printing

### PCB shield

### Building the software

#### Prerequisites
This instruction assumes that Vitis software (Vivado, XSCT, Vitis, etc.) version 2021.1 is installed on Windows 10 machine.
PetaLinux (along with all required packages) and Vitis AI should be installed on [WSL's](https://docs.microsoft.com/en-us/windows/wsl/about) version of [Ubuntu 20.04](https://www.microsoft.com/store/productId/9N6SVWS3RX71).

Map WSL instance to some drive (required to access PetaLinux build files from Vitis on Windows):
Run WSL and then in File Explorer go to:
```
\\wsl$
```
Then right click on your project's WSL instance and map it to drive letter so it'll become visible from "This PC" as additional drive.

Now, go to this repo's directory and edit "settings.ini" such that:
``
[windows]
vivado_path=<Path to Vivado application's main folder>
vitis_path=F<Path to Vitis application's main folder>

[wsl]
distro=<WSL name>
user=<WSL user>
petalinux_path=<path to petalinux directory>
virtual_drive=<drive assigned to WSL instance>
``



#### Regenerate project
Considering that build files for PetaLinux and it's SDK take roughly 60Gb of space, I don't think than anyone would want to download and extract such blob of files (also GitHub would be mad at me I guess). So to create this project locally I have provided simple script that builds everything from scratch up to the platform building in Vitis.

In Windows PowerShell, inside this repo's directory run: 
```
./regenerate_hw.ps1
```
This script will:
- export hardware design (XSA file)
- generate device tree overlay (DTO) and compile it
- compile pre-configured PetaLinux image, it's SDK and unpack it to Vitis workspace directory
- update Vitis platform with new hardware description

#### Build project
In Windows PowerShell, inside this repo's directory run: 
```
./build_app.ps1
```

#### Create bootable SD card

#### Upload application to the board

#### Run the application
