#include "../inc/publisher.hpp"

int main(int argc, char *argv[]) {
    Lidar::Config conf;
    conf.stepper.chipNum = 492;
    conf.lidar2d.port = "/dev/ttyUSB0";
    conf.stepper.stepsBetween2DScans = 1;
    conf.stepper.endstop1Angle = -45;
    conf.stepper.endstop2Angle = 45;

    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<MinimalPublisher>(conf));
    rclcpp::shutdown();
    return 0;
}