#include "../inc/publisher.hpp"

int main(int argc, char *argv[]) {
    Lidar::Config conf;
    conf.kernel.useKernel = false;
    conf.kernel.xclbin = "smart_lidar_container.xclbin";
    
    conf.stepper.homeClosestEndstop = false;
    conf.stepper.chipNum = 492;
    conf.stepper.stepsPer3DScan = 52;
    conf.stepper.stepsPer2DScan = 1;
    conf.lidar2d.port = "/dev/ttyUSB0";

    conf.detector.model = "unet.xmodel";
    
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<PointCloudPublisher>(conf));
    rclcpp::shutdown();
    return 0;
}