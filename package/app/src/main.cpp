#include "../inc/publisher.hpp"
#include <cmath>

int main(int argc, char *argv[]) {
    Lidar::Config conf;
    conf.retreatAfterScan = true;
    conf.kernel.useKernel = true;
    conf.kernel.xclbin = "smart_lidar_container.xclbin";
    conf.stepper.chipNum = 492;
    conf.stepper.stepsBetween2DScans = 2;
    conf.lidar2d.port = "/dev/ttyUSB0";

    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<MinimalPublisher>(conf));
    rclcpp::shutdown();
    return 0;
}