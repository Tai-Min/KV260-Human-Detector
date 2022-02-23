#include "../inc/publisher.hpp"

#include <chrono>
#include <functional>
#include <memory>

using namespace std::chrono_literals;

PointCloudPublisher::PointCloudPublisher(const Lidar::Config& conf, bool generatePanorama) : Node("point_cloud_publisher") {
    if (!lidar.init(conf)) {
        return;
    }

    this->generatePanorama = generatePanorama;

    cloudPublisher = this->create_publisher<sensor_msgs::msg::PointCloud2>("cloud", 10);

    if (generatePanorama)
        panoramaPublisher = this->create_publisher<std_msgs::msg::Float32MultiArray>("panorama", 10);

    timer = this->create_wall_timer(5ms, std::bind(&PointCloudPublisher::timerCallback, this));
}

void PointCloudPublisher::timerCallback() {
    bool err;
    sensor_msgs::msg::PointCloud2 msg;
    std_msgs::msg::Float32MultiArray panorama;

    if (generatePanorama) {
        msg = lidar.scanOnce(panorama, err);
        if (err) {
        }

        panoramaPublisher->publish(panorama);
    }

    else {
        msg = lidar.scanOnce(err);
        if (err) {
        }
    }

    msg.header.stamp = this->get_clock()->now();

    cloudPublisher->publish(msg);
}