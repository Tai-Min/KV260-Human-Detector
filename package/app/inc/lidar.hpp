#pragma once

#include <string>

#include "CYdLidar.h"
#include "stepper_controller.hpp"
#include "sensor_msgs/msg/point_cloud2.hpp"

class Lidar {
   private:
    struct StepperConf {
        unsigned int chipNum = 492;
        unsigned int stepsPer3DScan = 50;
        unsigned int stepsBetween2DScans = 5;
        float endstop1Angle = -45;
        float endstop2Angle = 45;
    };

    struct Lidar2DConf {
        std::string port = "/dev/ttyUSB0";
        unsigned int baudrate = 128000;
        float minAngle = -180;
        float maxAngle = 180;
        float minRange = 0.15;
        float maxRange = 12;
        bool fixedResolution = false;
        bool autoReconnect = true;
        float heightFromCenter = 0.055;
    };

    union FloatData {
        float f;
        char buf[sizeof(float)];
    };

    unsigned int numStepperMoves;
    unsigned int num2DScans;
    float angIncPer3DScan;
    float angIncBet2DScans;

    StepperController::Endstop currDirection = StepperController::ENDSTOP2;

   public:
    struct Config {
        std::string frame = "map";
        StepperConf stepper;
        Lidar2DConf lidar2d;
    };

   private:
    Config conf;

    StepperController stepper;

    bool isLidar2DOpen = false;
    bool isLidar2DRunning = false;
    CYdLidar lidar2d;

    std::vector<LaserScan> scans;
    std::vector<float> stepper_angles;
    sensor_msgs::msg::PointCloud2 scanMsg;

    void homeAndChangeDir();
    LaserScan scan2D();
    void moveNextPos();

    void initScanMsg();
    void generatePointCloud();

   public:
    Lidar() = default;
    Lidar(const Config &lidarConf);
    ~Lidar();

    void init(const Config &lidarConf);
    void deinit();

    sensor_msgs::msg::PointCloud2 scanOnce();
};