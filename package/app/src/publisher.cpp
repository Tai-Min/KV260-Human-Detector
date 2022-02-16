#include "../inc/publisher.hpp"

#include <chrono>
#include <functional>
#include <memory>

using namespace std::chrono_literals;

PointCloudPublisher::PointCloudPublisher(const Lidar::Config& conf) : Node("point_cloud_publisher") {
    if (!lidar.init(conf)) {
        return;
    }
    cloudPublisher = this->create_publisher<sensor_msgs::msg::PointCloud2>("cloud", 10);
    timer = this->create_wall_timer(5ms, std::bind(&PointCloudPublisher::timerCallback, this));
}

void PointCloudPublisher::timerCallback() {
    bool err;
    sensor_msgs::msg::PointCloud2 msg = lidar.scanOnce(err);
    if (err) {
    }
    msg.header.stamp = this->get_clock()->now();
    cloudPublisher->publish(msg);
}