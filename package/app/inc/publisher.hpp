#pragma once

#include "../inc/lidar.hpp"
#include "rclcpp/rclcpp.hpp"

class PointCloudPublisher : public rclcpp::Node {
   private:
    rclcpp::TimerBase::SharedPtr timer;                                          //!< Calls timerCallback every some time.
    rclcpp::Publisher<sensor_msgs::msg::PointCloud2>::SharedPtr cloudPublisher;  //!< Publishes raw 3D cloud.
    rclcpp::Publisher<std_msgs::msg::Float32MultiArray>::SharedPtr panoramaPublisher;
    Lidar lidar;                                                                 //!< LIDAR hardware.

    /**
     * @brief Called every specified time, performs one 3D scan per call.
     */
    void timerCallback();

   public:
    /**
     * @brief Construct a new Point Cloud Publisher object.
     * @param conf LIDAR's config.
     */
    PointCloudPublisher(const Lidar::Config &conf);
};