# KV260-Human-Detector
Lidar based human detector on Kria KV260.

Created for [Adaptive Computing Challenge 2021
with Xilinx](https://www.hackster.io/contests/xilinxadaptivecomputing2021).

For more information about the project itself see [Human position estimator for mobile robots](https://www.hackster.io/Tai-Min/human-position-estimator-for-mobile-robots-d86454).

This repository contains all files and instructions required to recreate the project from scratch, including code, hardware design files, PCB design and 3D printable parts. 

# Recreating the project
## PCB shield

Use included in \<REPO>/pmod_shield/grbl Gerber files to order the shield using some PCB manufacturing service, or use included \<REPO>/pmod_shield/pcb.pdf to [etch it by yourself](https://www.instructables.com/How-to-Etch-a-PCB/).

For the parts you will need:
* 1x A4988 stepper motor driver,
* 2x 2 pin female JST PCB connectors,
* 1x 4 pin female JST PCB connector or 4x1 male vertical goldpin connector, whatever fits your stepper motor better,
* 1x 2x6 pin male horizontal goldpin connector,
* 2x 8x1 female vertical goldpin connectors,
* 1x 5.08mm screw terminal block

Solder the parts as in the picture below (ignore crossed parts):

![Pmod shield](https://github.com/Tai-Min/KV260-Human-Detector/blob/master/media/pmod.jpg "Pmod shield")
 
## Attaching hardware
Print listed below parts (from \<REPO>/stl):
* 1x bottom_panel
* 1x bottom_panel_stopper
* 2x bottom_panel_feets
* 2x lidar_frame
* 1x motor_frame
* 2x top_panel
* 1x cradle
* lidar_board_holder
* 1x nema_connector

1) Screw 3D printed parts using M3 15mm screws,
2) Insert 608 bearings into bearing holes of lidar_frames,
3) Slide 190mm threaded rod through bearings and cradle (with M8 nuts inserted) into nema_connector,
5) Using M3 15mm screws and corresponding nuts, screw NEMA17 stepper motor, Creality endstops and YDlidar X4 
6) Slide KV260 into the frame,
7) Connect LIDAR through it's UART board to one of KV260's USB ports, 
8) Connect PMod shield to KV260 and then connect stepper motor and endstops to the shield.
9) Connect KV260 to PC and to local network using Ethernet connector.

Use these images for reference:

![Assembly](https://github.com/Tai-Min/KV260-Human-Detector/blob/master/media/assembly_1.jpg "Assembly")

![Assembly](https://github.com/Tai-Min/KV260-Human-Detector/blob/master/media/assembly_2.jpg "Assembly")

![Assembly](https://github.com/Tai-Min/KV260-Human-Detector/blob/master/media/assembly_3.jpg "Assembly")

![Connections](https://github.com/Tai-Min/KV260-Human-Detector/blob/master/media/schematic.jpg "Connections")

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
1. a) SSH into KV260:
```
ssh petalinux@<DEVIP>
```

1. b) Use Putty terminal from previous steps.

2. Run:
```
sudo su
source ./setup.sh
./smart_lidar
```
* Sudo is required to use xmutil and access /lib folder.
* source.sh will setup FPGA bitstream and source ROS2 into our environment
* smart_lidar will start the application.

### Troubleshoting
If PetaLinux does not build due to error in Vitis-AI meta package, try to remove "dnndk" package from \<REPO>/linux/components/yocto/layers/meta-petalinux/recipes-core/packagegroups/packagegroup-petalinux-vitisai.bb
