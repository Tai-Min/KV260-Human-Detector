#include "../inc/lidar.hpp"

#include <chrono>
#include <iostream>
#include <thread>

using std::chrono::duration;
using std::chrono::duration_cast;
using std::chrono::high_resolution_clock;
using std::chrono::milliseconds;

Lidar::Lidar(const Config &lidarConf) {
    if (!init(lidarConf))
        deinit();
}

Lidar::~Lidar() {
    deinit();
}

LaserScan Lidar::scan2D(bool &err) {
    err = false;
    bool hardError;
    LaserScan scan;

    int tries = 3;
    while (tries) {
        if (lidar2d.doProcessSimple(scan, hardError))
            return scan;
        tries--;
    }

    if (tries == 0 || hardError)
        err = true;
}

void Lidar::homeAndChangeDir() {
    std::chrono::milliseconds timespanHome(5);

    if (conf.retreatAfterScan) {
        if (currDirection == StepperController::ENDSTOP1)
            currDirection = StepperController::ENDSTOP2;
        else
            currDirection = StepperController::ENDSTOP1;
    }

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
    std::chrono::milliseconds timespanMove(2);

    stepper.move(currDirection, conf.stepper.stepsBetween2DScans);
    std::this_thread::sleep_for(timespanMove);
    while (stepper.busy())
        std::this_thread::sleep_for(timespanMove);
}

void Lidar::initVariables() {
    // We'll use radians from now.
    conf.stepper.endstop1Angle *= M_PI / 180.0;
    conf.stepper.endstop2Angle *= M_PI / 180.0;

    // Additional variables based on user's config.
    numStepperMoves = conf.stepper.stepsPer3DScan / conf.stepper.stepsBetween2DScans;
    num2DScans = numStepperMoves + 1;
    angIncPer3DScan = std::fabs(conf.stepper.endstop1Angle) + std::fabs(conf.stepper.endstop2Angle);
    angIncBet2DScans = angIncPer3DScan / numStepperMoves;

    // We know number of scans so resize vectors accordingly.
    scans.resize(num2DScans);
}

void Lidar::initScanMsg() {
    scanMsg = sensor_msgs::msg::PointCloud2();
    scanMsg.header.frame_id = conf.frame;
    scanMsg.height = 1;  // It's vector of unordered points so height = 1.
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

    scanMsg.is_bigendian = false;  // KV260 is little endian.
    scanMsg.point_step = scanMsg.fields.size() * sizeof(float);
    scanMsg.is_dense = true;  // No invalid points.
}

bool Lidar::initLidar2D() {
    ydlidar::init(0, nullptr);

    lidar2d.setSerialPort(conf.lidar2d.port);
    lidar2d.setSerialBaudrate(conf.lidar2d.baudrate);

    lidar2d.setFixedResolution(true);
    lidar2d.setAutoReconnect(true);

    lidar2d.setMinAngle(conf.lidar2d.minAngle);
    lidar2d.setMaxAngle(conf.lidar2d.maxAngle);

    lidar2d.setMinRange(conf.lidar2d.minRange);
    lidar2d.setMaxRange(conf.lidar2d.maxRange);

    if (!lidar2d.initialize()) {
        deinit();
        return false;
    }
    isLidar2DOpen = true;

    if (!lidar2d.turnOn()) {
        deinit();
        return false;
    }
    isLidar2DRunning = true;
    return true;
}

bool Lidar::allocFstScan(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep) {
    scanMsg.data.resize(totalSamples * scanMsg.point_step);
    scanMsg.width = totalSamples;
    scanMsg.row_step = scanMsg.point_step * scanMsg.width;

    if (conf.kernel.useKernel && !kernel.setPersistentArgs(num2DScans, samplesPer2DScan, scan2DStartAngle, scan2DAngleStep, conf.lidar2d.heightFromCenter))
        return false;

    if (conf.kernel.useKernel && !kernel.allocateBuffers(totalSamples, scanMsg.data.size()))
        return false;

    return true;
}

void Lidar::generatePointCloudSW(float startStepperAngle, int sign) {
    union FloatData {
        float f;
        char buf[sizeof(float)];
    };

    auto t1 = high_resolution_clock::now();

    FloatData x, y, z;

    // Process every obtained lidar scan.
    float currStepperAngle = startStepperAngle;
    unsigned int pointOffset = 0;
    for (auto scan : scans) {
        //  Get rotation and shift params.
        float rotationOffsetY = -currStepperAngle;
        float transformOffsetX = std::sin(std::abs(rotationOffsetY)) * conf.lidar2d.heightFromCenter;
        float transformOffsetZ = std::sqrt(std::pow(conf.lidar2d.heightFromCenter, 2) - std::pow(transformOffsetX, 2));

        // Convert each sample of current scan to point cloud.
        float currScanAngle = scan.config.min_angle;
        for (auto sample : scan.ranges) {
            // Convert sample from polar to cartesian in rotated lidar's frame.
            x.f = sample * std::sin(currScanAngle);
            y.f = -sample * std::cos(currScanAngle);

            // Rotate and shift sample to main lidar's frame.
            float tx = x.f;
            x.f = tx * std::cos(rotationOffsetY) - transformOffsetX;
            z.f = -tx * std::sin(rotationOffsetY) - transformOffsetZ;

            // Save results in PointCloud2 blob.
            for (unsigned int byte = 0; byte < sizeof(float); byte++) {
                scanMsg.data[pointOffset + scanMsg.fields[0].offset + byte] = x.buf[byte];
                scanMsg.data[pointOffset + scanMsg.fields[1].offset + byte] = y.buf[byte];
                scanMsg.data[pointOffset + scanMsg.fields[2].offset + byte] = z.buf[byte];
            }

            currScanAngle += scan.config.ang_increment;
            pointOffset += scanMsg.point_step;
        }
        currStepperAngle += sign * angIncBet2DScans;
    }

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point cloud generation soft impl exec time: " << ms_double.count() << "ms." << std::endl;
}

bool Lidar::generatePointCloudHW(float startStepperAngle, int sign) {
    auto t1 = high_resolution_clock::now();

    kernel.run(startStepperAngle, sign * angIncBet2DScans);
    kernel.getOutBuf(scanMsg.data);

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point cloud generation hard impl exec time: " << ms_double.count() << "ms." << std::endl;
    return true;
}

bool Lidar::init(const Config &lidarConf) {
    conf = lidarConf;

    initVariables();

    initScanMsg();

    if (conf.kernel.useKernel && !kernel.init(conf.kernel.xclbin))
        return false;

    if (!stepper.init(conf.stepper.chipNum))
        return false;

    if (!initLidar2D())
        return false;

    return true;
}

void Lidar::deinit() {
    kernel.deinit();
    stepper.deinit();

    if (isLidar2DRunning)
        lidar2d.turnOff();

    if (isLidar2DOpen)
        lidar2d.disconnecting();

    isLidar2DRunning = false;
    isLidar2DOpen = false;
}

sensor_msgs::msg::PointCloud2 Lidar::scanOnce(bool &err) {
    auto t1 = high_resolution_clock::now();

    err = false;

    stepper.forceEnable(true);

    homeAndChangeDir();

    float startStepperAngle = currDirection == StepperController::ENDSTOP1 ? conf.stepper.endstop1Angle : conf.stepper.endstop2Angle;
    int sign = currDirection == StepperController::ENDSTOP1 ? 1 : -1;

    unsigned int totalSamples = 0;
    unsigned int rangesOffset = 0;
    for (unsigned int scan = 0; scan < num2DScans; scan++) {
        scans[scan] = scan2D(err);
        if (err)
            return scanMsg;

        if (!fstScan && conf.kernel.useKernel) {
            kernel.setRangesChunk(scans[scan].ranges, rangesOffset);
            rangesOffset += scans[scan].ranges.size();
        }

        totalSamples += scans[scan].ranges.size();

        moveNextPos();
    }

    if (fstScan) {
        err = !allocFstScan(totalSamples, scans[0].ranges.size(), scans[0].config.min_angle, scans[0].config.ang_increment);
        if (err)
            return scanMsg;

        fstScan = false;
    } else {
        if (conf.kernel.useKernel)
            generatePointCloudHW(startStepperAngle, sign);
        else
            generatePointCloudSW(startStepperAngle, sign);
    }

    stepper.forceEnable(false);

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Scan time: " << ms_double.count() << "ms." << std::endl;

    return scanMsg;
}