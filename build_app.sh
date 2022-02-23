#! /bin/bash

appName="smart_lidar"

(

projDir=$(dirname "$0")
projDir=$(realpath $projDir)

vitisDir=$(which vitis)
vitisDir=$(dirname $vitisDir)/..

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
    echo "    Allowed types: krnl, link, app, pkg, none"
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
      if [[ $e != "all" ]] && [[ $e != "krnl" ]] && [[ $e != "link" ]] && [[ $e != "app" ]] && [[ $e != "pkg" ]] && [[ $e != "none" ]]
      then
         echo $e
         return 1
      fi
   done
   echo ""
   return 0
}

unset LD_LIBRARY_PATH
source $projDir/package/sdk/environment-setup-cortexa72-cortexa53-xilinx-linux
cd $projDir

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

mkdir -p "$projDir/package/app/final"

# Build kernels.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "krnl" ${buildType[@]}) = 1 ]]
then
   info "Building kernels..."

   v++ --compile --config $projDir/package/app/kernels/lidar_proc/kernel.cfg -o $projDir/package/app/build/krnl_lidar_proc.xo $projDir/package/app/kernels/lidar_proc/krnl_lidar_proc.cpp


   failHandler
fi

# Build hardware container
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "link" ${buildType[@]}) = 1 ]]
then
   info "Building hardware container..."

   v++ --link  --config $projDir/package/app/link.cfg -o $projDir/package/app/build/${appName}_container.xclbin $projDir/package/app/build/krnl_lidar_proc.xo

   failHandler
fi

# Build the application.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "app" ${buildType[@]}) = 1 ]]
then
   echo $vitisDir
   info "Building application..."
   
   sysroot="$projDir/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux"

   flags="-std=c++14 -O2 -Wall -DVITIS_PLATFORM=embed_platform -D__USE_XOPEN2K8"

   include="-I$projDir/package/app/thirdparty/ydlidar/include "

   libPaths="-L$sysroot/usr/lib/ -L$sysroot/lib/"
   libs="-lstdc++ -lxilinxopencl -lpthread -lrt -ldl -lcrypt -ltracetools -lrcl -lrclcpp  -lrcutils -lrcpputils -lrcl_yaml_param_parser -lyaml -lrosidl_typesupport_c -lrosidl_typesupport_cpp -lrosidl_runtime_c -lrcl_logging_spdlog -lspdlog -lrmw_implementation -lrmw -lstd_msgs__rosidl_typesupport_cpp -lsensor_msgs__rosidl_typesupport_cpp" 

   files="$projDir/package/app/src/*.cpp $projDir/package/app/thirdparty/ydlidar/src/*.cpp $projDir/package/app/thirdparty/ydlidar/src/*.c $projDir/package/app/thirdparty/ydlidar/src/impl/unix/*.cpp"

   aarch64-linux-gnu-g++ $flags $include $libPaths $libs --sysroot=$sysroot -o "$projDir/package/app/final/$appName" $files



   failHandler
fi

# Pack all the stuff and optionally send it to target.
if [[ $(contains "all" ${buildType[@]}) = 1 ]] || [[ $(contains "pkg" ${buildType[@]}) = 1 ]]
then
   info "Creating package..."

   v++ --package --config "$projDir/package/app/package.cfg" -o "$projDir/package/app/final/${appName}_container.xclbin" "$projDir/package/app/build/${appName}_container.xclbin"

   failHandler

   info "Removing build artifacts..."

   (cd "$projDir/package/app/final" && rm -r *.package_summary)

   failHandler

   info "Creating $appName.bit.bin..."
   
   (cd "$projDir/package/app/build" && > bootgen.bif && echo "all:{./package/system.bit}" > bootgen.bif && bootgen -w -arch zynqmp -process_bitstream bin -image bootgen.bif && mv "./package/system.bit.bin" "$projDir/package/app/final/$appName.bit.bin")

   failHandler

   info "Creating $appName.dtbo..."
   (cd "$projDir/device_tree" && cp pl.dtsi pl_mod.dtsi && sed -i "s/hardware.bit.bin/$appName.bit.bin/g" pl_mod.dtsi && dtc -@ -O dtb -o "$projDir/package/app/final/$appName.dtbo" pl_mod.dtsi)

   failHandler

   info "Creating shell.json..."
   (cd "$projDir/package/app/final" && echo -e "{\n    \"shell_type\": \"XRT_FLAT\",\n    \"num_slots\": \"1\"\n}" > shell.json)

   failHandler

fi

if [[ $uploadTarget != "" ]]
then
   if [[ $petalinuxPass != "" ]]
   then
      (cd "$projDir/package/app/final" && sshpass -p $petalinuxPass scp -o StrictHostKeyChecking=no $appName.dtbo $appName.bit.bin $appName shell.json ${appName}_container.xclbin $projDir/package/app/setup.sh $uploadTarget:/home/petalinux && sshpass -p $petalinuxPass ssh -t $uploadTarget "sudo mkdir -p /lib/firmware/xilinx/$appName && sudo mv $appName.dtbo $appName.bit.bin shell.json /lib/firmware/xilinx/$appName && chmod +x $appName")
   else
      (cd "$projDir/package/app/final" && scp -o StrictHostKeyChecking=no $appName.dtbo $appName.bit.bin $appName shell.json ${appName}_container.xclbin $projDir/package/app/setup.sh $uploadTarget:/home/petalinux && ssh -t $uploadTarget "sudo mkdir -p /lib/firmware/xilinx/$appName && sudo mv $appName.dtbo $appName.bit.bin shell.json /lib/firmware/xilinx/$appName && chmod +x $appName")
   fi   
fi

cleanup 0

)