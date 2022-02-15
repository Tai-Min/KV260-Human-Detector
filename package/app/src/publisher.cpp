#include "../inc/publisher.hpp"

#include <chrono>
#include <functional>
#include <memory>

using namespace std::chrono_literals;

MinimalPublisher::MinimalPublisher(const Lidar::Config &conf) : Node("minimal_publisher") {
    if(!lidar.init(conf)){
        return;
    }

    publisher_ = this->create_publisher<sensor_msgs::msg::PointCloud2>("topic", 10);

    timer_ = this->create_wall_timer(5ms, std::bind(&MinimalPublisher::timerCallback, this));
}

void MinimalPublisher::timerCallback() {
    bool err;
    sensor_msgs::msg::PointCloud2 msg = lidar.scanOnce(err);

    msg.header.stamp = this->get_clock()->now();

    publisher_->publish(msg);
}