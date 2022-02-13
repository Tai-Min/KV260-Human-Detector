#pragma once

#include "../inc/lidar.hpp"
#include "rclcpp/rclcpp.hpp"

class MinimalPublisher : public rclcpp::Node {
   private:
    rclcpp::TimerBase::SharedPtr timer_;
    rclcpp::Publisher<sensor_msgs::msg::PointCloud2>::SharedPtr publisher_;
    Lidar lidar;

    void timerCallback();

   public:
    MinimalPublisher(const Lidar::Config &conf);
};