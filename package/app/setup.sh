cd /lib/firmware/xilinx
mkdir -p vadd
cp smart_lidar/* vadd
xmutil unloadapp
xmutil loadapp vadd
source /usr/bin/ros_setup.bash
cd /home/petalinux
