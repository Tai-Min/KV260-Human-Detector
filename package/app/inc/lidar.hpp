#pragma once

#include "CYdLidar.h"
#include "sensor_msgs/msg/point_cloud2.hpp"
#include "stepper_controller.hpp"
#include "krnl_lidar_proc.hpp"

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
        float minRange = 0.1;
        float maxRange = 10;
        float heightFromCenter = 0.055;
    };

    struct KernelConf {
        bool useKernel = true;
        std::string xclbin;
    };

   public:
    struct Config {
        bool retreatAfterScan = false;
        std::string frame = "map";
        StepperConf stepper;
        Lidar2DConf lidar2d;
        KernelConf kernel;
    };

   private:
    Config conf;
    unsigned int numStepperMoves;
    unsigned int num2DScans;
    float angIncPer3DScan;
    float angIncBet2DScans;

    bool fstScan = true;

    StepperController stepper;
    CYdLidar lidar2d;
    KernelLidarProc kernel;

    bool isLidar2DOpen = false;
    bool isLidar2DRunning = false;

    std::vector<LaserScan> scans;
    sensor_msgs::msg::PointCloud2 scanMsg;
    StepperController::Endstop currDirection = StepperController::ENDSTOP2;

    LaserScan scan2D(bool &err);
    void homeAndChangeDir();
    void moveNextPos();

    void initVariables();
    void initScanMsg();
    bool initLidar2D();
    bool allocFstScan(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep);
    void generatePointCloudSW(float startStepperAngle, int sign);
    bool generatePointCloudHW(float startStepperAngle, int sign);

   public:
    Lidar() = default;
    Lidar(const Config &lidarConf);
    ~Lidar();

    bool init(const Config &lidarConf);
    void deinit();

    sensor_msgs::msg::PointCloud2 scanOnce(bool &err);
};