#! /bin/bash

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
    echo "- Build whole accelerated application (kernels, hw link and application):"
    echo "    ./build_app.sh"
    echo "    ./build_app.sh -t all"
    echo "- Build one or more items:"
    echo "    ./build_app.sh -t type1 -t type2 ... -t typen"
    echo "    Allowed types: krnl, link, app, pkg"
    echo "  Build and upload built application:"
    echo "    ./build_app.sh -u petalinux@<kv260 ip>"
    echo "    ./build_app.sh -t type1 -t type2 ... -t typen -t pkg -u petalinux@<kv260 ip> [-p <petalinux password>]"
    echo "  Only upload built application:"
    echo "    ./build_app.sh -t pkg -u petalinux@<kv260 ip> [-p <petalinux password>]"
    exit $1
}

# Cleanup temp folders and exit script.
cleanup() {
    if [[ $1 != 0 ]]
    then
        error "Failure!"
    fi

    exit $1
}

# Echoes first invalid build type provided.
# Usage: $(getInvalidBuildType ${arr[@]})
# Returns: 0 on success and 1 when invalid build type provided.
getInvalidBuildType() {
   local e
   for e
   do
      if [[ $e != "all" ]] && [[ $e != "krnl" ]] && [[ $e != "link" ]] && [[ $e != "app" ]] && [[ $e != "pkg" ]]
      then
         echo $e
         return 1
      fi
   done
   echo ""
   return 0
}

# h: help
# t: build type (all, krnl, link, app, pkg)
# u: upload destination user@ip
# p: destination's password (optional)
buildType=("all")
clearBuildType=1
while getopts "t:u:p:h" opt
do
   case "$opt" in
      t) if [[ $clearBuildType = 1 ]]
         then
            clearBuildType=0
            buildType=("$OPTARG") 
         else
            buildType+=("$OPTARG")
         fi ;;
      u) uploadTarget=$OPTARG ;;
      p) petalinuxPass=$OPTARG ;;
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
if ! type v++ || ! type aarch64-linux-gnu-g++
then
   error "v++ not found!"
   error "Source it with \"source <Vitis dir>/Vitis/2021.1/settings64.sh\""
   exit 1
fi

# Build kernels.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "krnl" ${buildType[@]}) = 1 ]]
then
   info "Building kernels..."

   v++ --platform "$projDir/package/embed_platform/export/embed_platform/embed_platform.xpfm" --target hw --compile -I "$projDir/package/app/kernels/src" --config "$projDir/package/app/kernels/kernel.cfg" -o "$projDir/package/app/build/krnl_vadd.xo" "$projDir/package/app/kernels/src/krnl_vadd.cpp"

   failHandler
fi

# Build hardware container
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "link" ${buildType[@]}) = 1 ]]
then
   info "Building hardware container..."

   v++ --target hw --link --platform "$projDir/package/embed_platform/export/embed_platform/embed_platform.xpfm" --config "$projDir/package/app/link/link.cfg" -o "$projDir/package/app/build/vadd_container.xclbin" "$projDir/package/app/build/krnl_vadd.xo"

   failHandler
fi

# Build the application.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "app" ${buildType[@]}) = 1 ]]
then
   info "Building application..."
   
   flags="-std=c++1y -v -DVITIS_PLATFORM=embed_platform -D__USE_XOPEN2K8 -O2 -Wall -Werror"

   include=""

   libPaths="/usr/lib/:/lib/"
   libs="-lxilinxopencl -lpthread -lrt -ldl -lcrypt -lstdc++"

   files="$projDir/package/app/app/src/*.cpp"

   aarch64-linux-gnu-g++ $flags -I$include -L$libPaths $libs --sysroot="$projDir/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux" -o "$projDir/package/app/build/vadd" $files

   failHandler
fi

# Build the application.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "pkg" ${buildType[@]}) = 1 ]]
then
   info "Creating vadd.bit.bin..."
   
   (cd "$projDir/package/app/build" && rm bootgen.bif 2> /dev/null && echo "all:{../../../linux/images/linux/system.bit}" > bootgen.bif && bootgen -w -arch zynqmp -process_bitstream bin -image bootgen.bif && mkdir -p "$projDir/package/app/final" && mv "$projDir/linux/images/linux/system.bit.bin" "$projDir/package/app/final/vadd.bit.bin" && cp vadd vadd_container.xclbin "$projDir/package/app/final")

   failHandler

   info "Creating vadd.dtbo..."
   (cd "$projDir/device_tree" && cp pl.dtsi pl_mod.dtsi && sed -i 's/hardware.bit.bin/vadd.bit.bin/g' pl_mod.dtsi && dtc -@ -O dtb -o "$projDir/package/app/final/vadd.dtbo" pl_mod.dtsi)

   failHandler

   info "Creating shell.json..."
   (cd "$projDir/package/app/final" && echo -e "{\n    \"shell_type\": \"XRT_FLAT\",\n    \"num_slots\": \"1\"\n}" > shell.json)

   failHandler

   if [[ $uploadTarget != "" ]]
   then
      if [[ $uploadTarget != "" ]]
      then
         (cd "$projDir/package/app/final" && sshpass -p $petalinuxPass scp vadd.dtbo vadd.bit.bin vadd shell.json vadd_container.xclbin $uploadTarget:/home/petalinux && sshpass -p $petalinuxPass ssh -t $uploadTarget "sudo mkdir -p /lib/firmware/xilinx/vadd && sudo mv vadd.dtbo vadd.bit.bin shell.json /lib/firmware/xilinx/vadd && chmod +x vadd")
      else
         (cd "$projDir/package/app/final" && scp vadd.dtbo vadd.bit.bin vadd shell.json vadd_container.xclbin $uploadTarget:/home/petalinux && ssh -t $uploadTarget "sudo mkdir -p /lib/firmware/xilinx/vadd && sudo mv vadd.dtbo vadd.bit.bin shell.json /lib/firmware/xilinx/vadd && chmod +x vadd")
      fi
      
   fi
fi

cleanup 0