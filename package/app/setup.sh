cd /home/petalinux
mv vart.conf /etc/vart.conf

# Needed to refresh xmutil as it doesn't register kernels passed via scp.
cd /lib/firmware/xilinx
mv smart_lidar tmp
mkdir -p smart_lidar
cp tmp/* smart_lidar
rm -r tmp

xmutil unloadapp
xmutil loadapp smart_lidar

cd /home/petalinux
source /usr/bin/ros_setup.bash