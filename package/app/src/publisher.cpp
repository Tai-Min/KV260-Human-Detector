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

    timer = this->create_wall_timer(5ms, std::bind(&PointCloudPublisher::timerCallback, this));
}

void PointCloudPublisher::timerCallback() {
    bool err = !lidar.scanOnce();
    if (err) {
        std::cout << "Failed to scan!" << std::endl;
        return;
    }

    sensor_msgs::msg::PointCloud2 msg = lidar.getPointCloudMsg(err);
    msg.header.stamp = this->get_clock()->now();
    if (err) {
        std::cout << "Failed to get point cloud!" << std::endl;
        return;
    } else
        cloudPublisher->publish(msg);

    std_msgs::msg::Float32MultiArray panorama = lidar.getPanoramicImageMsg(err);
    if (err) {
        std::cout << "Failed to get panoramic image!" << std::endl;
        return;
    } else
        panoramaPublisher->publish(panorama);

    std_msgs::msg::Float32MultiArray panoramaInference = lidar.getPanoramicInferenceImageMsg(err);
    if (err) {
        std::cout << "Failed to get panoramic inference image!" << std::endl;
        return;
    } else
        panoramaInferencePublisher->publish(panoramaInference);
}