#include "../inc/lidar.hpp"

#include <chrono>
#include <iostream>
#include <thread>

Lidar::Lidar(const Config &lidarConf) {
    init(lidarConf);
}

Lidar::~Lidar() {
    deinit();
}

void Lidar::homeAndChangeDir() {
    std::chrono::milliseconds timespanHome(5);

    stepper.home(currDirection);
    std::this_thread::sleep_for(timespanHome);
    while (stepper.busy())
        std::this_thread::sleep_for(timespanHome);

    if (currDirection == StepperController::ENDSTOP1)
        currDirection = StepperController::ENDSTOP2;
    else
        currDirection = StepperController::ENDSTOP1;
}

void Lidar::moveNextPos() {
    std::chrono::milliseconds timespanMove(5);

    stepper.move(currDirection, conf.stepper.stepsBetween2DScans);
    std::this_thread::sleep_for(timespanMove);
    while (stepper.busy())
        std::this_thread::sleep_for(timespanMove);
}

void Lidar::initScanMsg() {
    scanMsg = sensor_msgs::msg::PointCloud2();
    scanMsg.header.frame_id = conf.frame;
    scanMsg.height = 1;
    scanMsg.fields.resize(3);
    scanMsg.fields[0].name = "x";
    scanMsg.fields[0].offset = 0;
    scanMsg.fields[0].datatype = sensor_msgs::msg::PointField::FLOAT32;
    scanMsg.fields[0].count = 1;
    scanMsg.fields[1].name = "y";
    scanMsg.fields[1].offset = sizeof(float);
    scanMsg.fields[1].datatype = sensor_msgs::msg::PointField::FLOAT32;
    scanMsg.fields[1].count = 1;
    scanMsg.fields[2].name = "z";
    scanMsg.fields[2].offset = sizeof(float) * 2;
    scanMsg.fields[2].datatype = sensor_msgs::msg::PointField::FLOAT32;
    scanMsg.fields[2].count = 1;

    scanMsg.is_bigendian = false;
    scanMsg.point_step = 12;
    scanMsg.data = {};
    scanMsg.is_dense = true;
}

void Lidar::generatePointCloud() {
    static int cnt = 0;

    if (cnt >= scans.size()) {
        cnt = 0;
    }

    float transformOffsetX, transformOffsetZ, rotationOffsetY;
    FloatData x, y, z;

    // Process every obtained lidar scan.
    int pointOffset = 0;
     for (int i = 0; i < scans.size(); i++) {
    //for (int i = 0; i < cnt; i++) {
        // Get rotation and shift params.
        rotationOffsetY = -stepper_angles[i];
        transformOffsetX = std::sin(std::abs(rotationOffsetY)) * conf.lidar2d.heightFromCenter;
        transformOffsetZ = std::sqrt(std::pow(conf.lidar2d.heightFromCenter, 2) - std::pow(transformOffsetX, 2));

        float currScanAngle = scans[i].config.min_angle;
        for (int j = 0; j < scans[i].ranges.size(); j++) {
            // Convert one sample from polar to cartesian in rotated lidar's frame.
            x.f = scans[i].ranges[j] * std::sin(currScanAngle);
            y.f = -scans[i].ranges[j] * std::cos(currScanAngle);
            z.f = 0;
            currScanAngle += scans[i].config.ang_increment;

            // Rotate and shift sample to main lidar's frame.
            float tx = x.f, ty = y.f, tz = z.f;
            float sign = rotationOffsetY ? 1 : -1;
            x.f = tx * std::cos(rotationOffsetY) + tz * std::sin(rotationOffsetY) - transformOffsetX;
            z.f = -tx * std::sin(rotationOffsetY) + tz * std::cos(rotationOffsetY) - transformOffsetZ;

            // Save results in PointCloud2 blob.
            for (int k = 0; k < scanMsg.fields.size(); k++) {
                for (int l = 0; l < sizeof(float); l++) {
                    scanMsg.data[pointOffset + scanMsg.fields[0].offset + l] = x.buf[l];
                    scanMsg.data[pointOffset + scanMsg.fields[1].offset + l] = y.buf[l];
                    scanMsg.data[pointOffset + scanMsg.fields[2].offset + l] = z.buf[l];
                }
            }
            pointOffset += scanMsg.point_step;
        }
    }

    cnt++;
}

void Lidar::init(const Config &lidarConf) {
    conf = lidarConf;

    initScanMsg();

    conf.stepper.endstop1Angle *= M_PI / 180.0;
    conf.stepper.endstop2Angle *= M_PI / 180.0;

    angIncPer3DScan = std::fabs(conf.stepper.endstop1Angle) + std::fabs(conf.stepper.endstop2Angle);

    numStepperMoves = conf.stepper.stepsPer3DScan / conf.stepper.stepsBetween2DScans;
    num2DScans = numStepperMoves + 1;
    angIncBet2DScans = angIncPer3DScan / numStepperMoves;

    scans.resize(num2DScans);
    stepper_angles.resize(num2DScans);

    stepper.init(conf.stepper.chipNum);

    ydlidar::init(0, nullptr);

    lidar2d.setSerialPort(conf.lidar2d.port);
    lidar2d.setSerialBaudrate(conf.lidar2d.baudrate);

    lidar2d.setFixedResolution(conf.lidar2d.fixedResolution);
    lidar2d.setAutoReconnect(conf.lidar2d.autoReconnect);

    lidar2d.setMinAngle(conf.lidar2d.minAngle);
    lidar2d.setMaxAngle(conf.lidar2d.maxAngle);

    lidar2d.setMinRange(conf.lidar2d.minRange);
    lidar2d.setMaxRange(conf.lidar2d.maxRange);

    if (!lidar2d.initialize()) {
        deinit();
        return;
    }
    isLidar2DOpen = true;

    if (!lidar2d.turnOn()) {
        deinit();
        return;
    }
    isLidar2DRunning = true;
}

LaserScan Lidar::scan2D() {
    bool hardError;
    LaserScan scan;

    int tries = 3;
    while (tries) {
        if (lidar2d.doProcessSimple(scan, hardError))
            return scan;
        tries--;
    }

    if (tries == 0 || hardError)
        throw;
}

void Lidar::deinit() {
    stepper.deinit();

    if (isLidar2DRunning)
        lidar2d.turnOff();

    if (isLidar2DOpen)
        lidar2d.disconnecting();

    isLidar2DRunning = false;
    isLidar2DOpen = false;
}

sensor_msgs::msg::PointCloud2 Lidar::scanOnce() {
    stepper.forceEnable(true);

    homeAndChangeDir();

    int sign = currDirection == StepperController::ENDSTOP1 ? 1 : -1;
    stepper_angles[0] = currDirection == StepperController::ENDSTOP1 ? conf.stepper.endstop1Angle : conf.stepper.endstop2Angle;
    int totalSamples = 0;

    for (unsigned int i = 0; i < num2DScans; i++) {
        scans[i] = scan2D();
        totalSamples += scans[i].ranges.size();
        if (i > 0)
            stepper_angles[i] = stepper_angles[i - 1] + sign * angIncBet2DScans;
        moveNextPos();
    }

    scanMsg.data.resize(totalSamples * scanMsg.point_step);
    scanMsg.width = totalSamples;
    scanMsg.row_step = scanMsg.point_step * scanMsg.width;

    generatePointCloud();

    stepper.forceEnable(false);

    return scanMsg;
}