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

    panoramaPublisher = this->create_publisher<std_msgs::msg::Float32MultiArray>("panorama", 10);

    panoramaInferencePublisher = this->create_publisher<std_msgs::msg::Float32MultiArray>("panorama_inference", 10);

    cloudInferencePublisher = this->create_publisher<sensor_msgs::msg::PointCloud2>("cloud_inference", 10);

    timer = this->create_wall_timer(5ms, std::bind(&PointCloudPublisher::timerCallback, this));
}

void PointCloudPublisher::timerCallback() {
    bool err = !lidar.scanOnce();
    if (err) {
        std::cout << "Failed to scan!" << std::endl;
        return;
    }

    sensor_msgs::msg::PointCloud2 cloud = lidar.getPointCloudMsg();
    cloud.header.stamp = this->get_clock()->now();
    cloudPublisher->publish(cloud);

    std_msgs::msg::Float32MultiArray panorama = lidar.getPanoramicImageMsg();
    panoramaPublisher->publish(panorama);

    std_msgs::msg::Float32MultiArray panoramaInference = lidar.getPanoramicInferenceImageMsg();
    panoramaInferencePublisher->publish(panoramaInference);

    sensor_msgs::msg::PointCloud2 cloudInference = lidar.getPointCloudInferenceMsg();
    cloudInference.header.stamp = this->get_clock()->now();
    cloudInferencePublisher->publish(cloudInference);
}