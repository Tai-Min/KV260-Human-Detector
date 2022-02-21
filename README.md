# KV260-Human-Detector
Lidar based human detector on Kria KV260.

Created for [Adaptive Computing Challenge 2021
with Xilinx](https://www.hackster.io/contests/xilinxadaptivecomputing2021).

For more information about the project itself see [Human position estimator for mobile robots](https://www.hackster.io/Tai-Min/human-position-estimator-for-mobile-robots-d86454).

This repository contains all files and instructions required to recreate the project from scratch, including code, hardware design files, PCB design and 3D printable parts. 

# Recreating the project
## 3D printing
Print listed below parts:

and assembly them using 15mm length 3mm diameter screws and nuts like in the image below:

TODO: image

## PCB shield

Use included in \<REPO>/pmod_shield Gerber files to order the shield using some PCB manufacturing service, or use indluded PDF to [etch it by yourself](https://www.instructables.com/How-to-Etch-a-PCB/).

* A4988 stepper motor driver
* 2x 2 pin JST PCB female connectors
* 1x 4 pin JST PCB female connector or 4 pin vertical goldpin header instead whatever fits your stepper motor better)
* 2x 2x6 pin horizontal goldpin header
* 1x 5.08mm terminal block

Solder the parts as in the picture below (ignore crossed parts):

TODO: image
 
## Building the software
Project created and tested using Ubuntu-20.04.

This repo's root directory is from now onwards called \<REPO>

### Prerequisites

This instruction assumes that Vitis software (Vivado, Vitis, Vitis-AI, PetaLinux) runs on version 2021.1 and is correctly sourced in ".bashrc". It also assumes that PetaLinux has installed all [required packages](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2020_1/ug1144-petalinux-tools-reference-guide.pdf).

For SD flashing [balenaEtcher](https://www.balena.io/etcher/) will be used.

Also, there are additional packages that should be installed via apt:
- putty
- sshpass (OPTIONAL used in build_app.sh with -p option provided to ignore multiple petalinux password inputs, considered bad practice so use at your own risk)

### Regenerate project


1. In Vivado open hardware project \<REPO>/hardware/hardware.xpr and press Generate Bitstream

Considering that build files for PetaLinux and it's SDK take roughly 60Gb of space, I don't think than anyone would want to download and extract such blob of files (also GitHub would be mad at me I guess). So to create this project locally I have provided simple script that builds everything from scratch up to the Vitis platform.

2. In terminal, in \<REPO>/ run:
```
chmod +x ./regenerate_hw.sh && ./regenerate_hw.sh
```
This script will:
- export hardware design (XSA file)
- generate and compile device tree overlay (DTO)
- compile pre-configured PetaLinux image, it's SDK and unpack it to Vitis workspace directory
- create .wic image for SD card
- update Vitis platform with new hardware description and linux image

3. Flash \<REPO>/linux/images/linux/petalinux-sdimage.wic into SD card (i.e using balenaEtcher)

4. Verify whether everything is working via Putty and set new petalinux's password (called \<DEVPWD> onwards):
```
sudo putty /dev/ttyUSBn -serial -sercfg 115200,8,n,1,N
```
replace "n" in "/dev/ttyUSBn" with correct USB number that responds with PetaLinux booting process.

Before leaving PetaLinux's shell, check device's ip with 
```
ifconfig
```
Write down address near "inet" under "eth0". This address will be called \<DEVIP> from now onwards.

### Build project
1. a) Only to build the application, in terminal, in \<REPO>/ run:
```
chmod +x ./build_app.sh && ./build_app.sh
```
This will generate all necessary files in \<REPO>/package/app/final

1. b) To build and upload to the device:
```
chmod +x ./build_app.sh && ./build_app.sh -u petalinux@<DEVIP>
```
This method will ask for petalinux's password multiple times.
1. c) (sshpass required!) To build and upload to the device:
```
chmod +x ./build_app.sh && ./build_app.sh -u petalinux@<DEVIP> -p <DEVPWD>
```
This method will ask for petalinux's password once.

### Run the application
1. SSH into KV260:
```
ssh petalinux@<DEVIP>
```

2. Run:
```
sudo su
source ./setup.sh
./smart_lidar
```
