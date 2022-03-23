#! /bin/bash
(

projDir=$(dirname "$0")
projDir=$(realpath $projDir)

. $projDir/helpers.sh --source-only

# Display help and exit script.
# Use $1 as 1 to specify that invalid build type has been provided.
# Use $2 as <invalid build type> to display it.
# Usage: $(help) or $(help 1 foo)
help() {
   if [[ $1 = 1 ]]
   then
      error "Invalid build type provided $2!"
   fi

   echo "Usage:"
   echo "- Display help:"
   echo "    ./regenerate_hw.sh -h"  
   echo "- Run whole build sequence:"
   echo "    ./regenerate_hw.sh"  
   echo "    ./regenerate_hw.sh -t all"  
   echo "- Run partial build:"  
   echo "    ./regenerate_hw.sh -t type1 -t type2 ... -t typen"  
   echo "    Allowed types:"  
   echo "    - xsa: Generate hardware description only."  
   echo "    - dt: Generate and compile device tree."  
   echo "    - plnx: Build PetaLinux, SDK and unpack it."  
   echo "    - plat: Update Vivado platform with new XSA and boot directories."  
   exit $1
}

# Cleanup temp folders and exit script.
cleanup() {
   if [[ $1 != 0 ]]
   then
      error "Failure!"
   fi

   info "Cleaning up..."
   rm *.log 2> /dev/null
   rm *.jou 2> /dev/null
   rm -r .Xil 2> /dev/null
   exit $1
}

# Echoes first invalid build type provided.
# Usage: $(getInvalidBuildType ${arr[@]})
# Returns: 0 on success and 1 when invalid build type provided.
getInvalidBuildType() {
   local e
   for e
   do
      if [[ $e != "all" ]] && [[ $e != "xsa" ]] && [[ $e != "dt" ]] && [[ $e != "plnx" ]] && [[ $e != "plat" ]]
      then
         echo $e
         return 1
      fi
   done
   echo ""
   return 0
}

unset LD_LIBRARY_PATH
cd $projDir

# h: help
# t: build type (all, xsa, dt, plnx, plat)
buildType=("all")
clearBuildType=1
while getopts "t:h" opt
do
   case "$opt" in
      t) if [[ $clearBuildType = 1 ]]
         then
            clearBuildType=0
            buildType=("$OPTARG") 
         else
            buildType+=("$OPTARG")
         fi ;;
      h) help 0 ;;
      ?) help 0 ;;
   esac
done

# Check for invalid build types
invalidBuildType=$(getInvalidBuildType ${buildType[@]})
if [[ $invalidBuildType != "" ]]
then
   help 1 $invalidBuildType 
fi

# Check if environment is sourced.
if ! type vivado 
then
   error "Vivado not found!"
   error "Source it with \"source <Vitis dir>/Vivado/2021.1/settings64.sh\""
   exit 1
fi

if ! type xsct
then
   error "Vitis not found!"
   error "Source it with \"source <Vitis dir>/Vitis/2021.1/settings64.sh\""
   exit 1
fi

if ! type petalinux-build 
then
   error "PetaLinux not found!"
   error "Source it with \"source <PetaLinux dir>/settings.sh\""
   exit 1
fi

# Main script.

# Export XSA.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "xsa" ${buildType[@]}) = 1 ]]
then
   info "Exporting hardware design..."

   vivado -mode tcl -source "$projDir/scripts/export_hardware.tcl" -tclargs $projDir

   failHandler
fi

# Generate and compile DTO.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "dt" ${buildType[@]}) = 1 ]]
then
   info "Generating DTO..."

   xsct "$projDir/scripts/generate_dto.tcl" $projDir

   failHandler

   info "Compiling device tree..."

   (cd "$projDir/device_tree" && dtc -@ -O dtb -o pl.dtbo pl.dtsi)

   failHandler
fi

# Build PetaLinux and SDK.
# Export XSA.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "plnx" ${buildType[@]}) = 1 ]]
then
   info "Processing hardware description file..."

   #(cd "$projDir/linux" && petalinux-config --get-hw-description="$projDir/hardware/" --silent)

   failHandler
   
   info "Building PetaLinux image and sdk..."

   # These can fail due to task mismatch, which is not really an error for us.
   #(cd "$projDir/linux" && petalinux-build | grep "all succeeded" && petalinux-build --sdk | grep "all succeeded")
   (cd "$projDir/linux" && petalinux-build | grep "all succeeded")
   
   failHandler

   info "Generating SD image..."

   (cd "$projDir/linux" && petalinux-package --wic --bootfiles "rootfs.cpio.gz.u-boot boot.scr Image system.dtb")

   failHandler

   info "Copying system files..."

   (cd "$projDir/linux/images/linux" && cp zynqmp_fsbl.elf pmufw.elf bl31.elf u-boot-dtb.elf system.dtb "$projDir/package/pfm/boot" && mv "$projDir/package/pfm/boot/u-boot-dtb.elf" "$projDir/package/pfm/boot/u-boot.elf" && cp boot.scr system.dtb "$projDir/package/pfm/sd_dir")
   
   failHandler

   info "Populating SDK..."

   #(cd "$projDir/linux/images/linux" && ./sdk.sh -d "$projDir/package/sdk")

   failHandler
fi

# Update platform project with new XSA and updated pfm directory.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "plat" ${buildType[@]}) = 1 ]]
then
   info "Updating platform..."

   cp $projDir/hardware/hardware.xsa $projDir/package/embed_platform/hw/hardware.xsa && cp $projDir/hardware/hardware.xsa $projDir/package/embed_platform/tempdsa/hardware.xsa && xsct "$projDir/scripts/update_platform.tcl" "$projDir"

   failHandler
fi

cleanup 0

)