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

bool Lidar::homeAndChangeDir() {
    std::chrono::milliseconds timespanHome(5);

    if (!conf.homeClosestEndstop) {
        if (conf.stepper.currDirection == StepperController::ENDSTOP1)
            conf.stepper.currDirection = StepperController::ENDSTOP2;
        else
            conf.stepper.currDirection = StepperController::ENDSTOP1;
    }
    bool err;
    stepper.home(conf.stepper.currDirection, err);
    if (err) return false;

    std::this_thread::sleep_for(timespanHome);
    while (stepper.busy(err)) {
        std::this_thread::sleep_for(timespanHome);
        if (err) return false;
    }

    if (conf.stepper.currDirection == StepperController::ENDSTOP1)
        conf.stepper.currDirection = StepperController::ENDSTOP2;
    else
        conf.stepper.currDirection = StepperController::ENDSTOP1;

    return true;
}

bool Lidar::moveNextPos() {
    std::chrono::milliseconds timespanMove(2);

    bool err;
    stepper.move(conf.stepper.currDirection, conf.stepper.stepsPer2DScan, err);
    if (err) return false;

    std::this_thread::sleep_for(timespanMove);
    while (stepper.busy(err)) {
        if (err) return false;
        std::this_thread::sleep_for(timespanMove);
    }

    return true;
}

void Lidar::initVariables() {
    // We'll use radians from now.
    conf.stepper.endstop1Angle *= M_PI / 180.0;
    conf.stepper.endstop2Angle *= M_PI / 180.0;

    // Additional variables based on user's config.
    conf.stepper.movesPerScan = conf.stepper.stepsPer3DScan / conf.stepper.stepsPer2DScan;
    conf.lidar2d.scansPer3DScan = conf.stepper.movesPerScan + 1;
    float angIncPer3DScan = std::fabs(conf.stepper.endstop1Angle) + std::fabs(conf.stepper.endstop2Angle);
    conf.stepper.angIncPer2DScan = angIncPer3DScan / conf.stepper.movesPerScan;

    // We know number of scans so resize vectors accordingly.
    scans2d.resize(conf.lidar2d.scansPer3DScan);
}

void Lidar::initScanMsg() {
    cloudMsg.header.frame_id = conf.frameId;
    cloudMsg.height = 1;  // It's vector of unordered points so height = 1.
    cloudMsg.fields.resize(3);
    cloudMsg.fields[0].name = "x";
    cloudMsg.fields[0].offset = 0;
    cloudMsg.fields[0].datatype = sensor_msgs::msg::PointField::FLOAT32;
    cloudMsg.fields[0].count = 1;
    cloudMsg.fields[1].name = "y";
    cloudMsg.fields[1].offset = sizeof(float);
    cloudMsg.fields[1].datatype = sensor_msgs::msg::PointField::FLOAT32;
    cloudMsg.fields[1].count = 1;
    cloudMsg.fields[2].name = "z";
    cloudMsg.fields[2].offset = sizeof(float) * 2;
    cloudMsg.fields[2].datatype = sensor_msgs::msg::PointField::FLOAT32;
    cloudMsg.fields[2].count = 1;

    cloudMsg.is_bigendian = false;  // KV260 is little endian.
    cloudMsg.point_step = cloudMsg.fields.size() * sizeof(float);
    cloudMsg.is_dense = true;  // No invalid points.
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
    conf.lidar2d.isLidar2DOpen = true;

    if (!lidar2d.turnOn()) {
        deinit();
        return false;
    }
    conf.lidar2d.isLidar2DRunning = true;
    return true;
}

bool Lidar::allocFstScan(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep) {
    cloudMsg.data.resize(totalSamples * cloudMsg.point_step);
    cloudMsg.width = totalSamples;
    cloudMsg.row_step = cloudMsg.point_step * cloudMsg.width;

    if (conf.kernel.useKernel && !kernel.setPersistentArgs(conf.lidar2d.scansPer3DScan, samplesPer2DScan, scan2DStartAngle, scan2DAngleStep, conf.lidar2d.offset))
        return false;

    if (conf.kernel.useKernel && !kernel.allocateBuffers(totalSamples, cloudMsg.data.size()))
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
    for (auto scan : scans2d) {
        //  Get rotation and shift params.
        float rotationOffsetY = -currStepperAngle;
        float transformOffsetX = std::sin(std::abs(rotationOffsetY)) * conf.lidar2d.offset;
        float transformOffsetZ = std::sqrt(std::pow(conf.lidar2d.offset, 2) - std::pow(transformOffsetX, 2));

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
                cloudMsg.data[pointOffset + cloudMsg.fields[0].offset + byte] = x.buf[byte];
                cloudMsg.data[pointOffset + cloudMsg.fields[1].offset + byte] = y.buf[byte];
                cloudMsg.data[pointOffset + cloudMsg.fields[2].offset + byte] = z.buf[byte];
            }

            currScanAngle += scan.config.ang_increment;
            pointOffset += cloudMsg.point_step;
        }
        currStepperAngle += sign * conf.stepper.angIncPer2DScan;
    }

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point cloud generation soft impl exec time: " << ms_double.count() << "ms." << std::endl;
}

bool Lidar::generatePointCloudHW(float startStepperAngle, int sign) {
    auto t1 = high_resolution_clock::now();

    if (!kernel.runCloudGen(startStepperAngle, sign * conf.stepper.angIncPer2DScan))
        return false;

    kernel.getCloudBuf(cloudMsg.data);

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

    allGood = true;
    return true;
}

void Lidar::deinit() {
    kernel.deinit();
    stepper.deinit();

    if (conf.lidar2d.isLidar2DRunning)
        lidar2d.turnOff();

    if (conf.lidar2d.isLidar2DOpen)
        lidar2d.disconnecting();

    conf.lidar2d.isLidar2DRunning = false;
    conf.lidar2d.isLidar2DOpen = false;
    allGood = false;
}

bool Lidar::good() {
    return allGood;
}

sensor_msgs::msg::PointCloud2 Lidar::scanOnce(bool &err) {
    auto t1 = high_resolution_clock::now();

    err = false;

    stepper.forceEnable(true, err);
    if (err)
        return cloudMsg;

    if (!homeAndChangeDir()) {
        err = true;
        return cloudMsg;
    }

    float startStepperAngle = conf.stepper.currDirection == StepperController::ENDSTOP1 ? conf.stepper.endstop1Angle : conf.stepper.endstop2Angle;
    int sign = conf.stepper.currDirection == StepperController::ENDSTOP1 ? 1 : -1;

    unsigned int totalSamples = 0;
    unsigned int rangesOffset = 0;
    for (unsigned int scan = 0; scan < conf.lidar2d.scansPer3DScan; scan++) {
        scans2d[scan] = scan2D(err);
        if (err)
            return cloudMsg;

        if (!fstScan && conf.kernel.useKernel) {
            kernel.setRangesChunk(scans2d[scan].ranges, rangesOffset);
            rangesOffset += scans2d[scan].ranges.size();
        }

        totalSamples += scans2d[scan].ranges.size();

        if (!moveNextPos()) {
            err = true;
            return cloudMsg;
        }
    }

    if (fstScan) {
        err = !allocFstScan(totalSamples, scans2d[0].ranges.size(), scans2d[0].config.min_angle, scans2d[0].config.ang_increment);
        if (err)
            return cloudMsg;

        fstScan = false;
    }

    if (conf.kernel.useKernel) {
        if (!generatePointCloudHW(startStepperAngle, sign)) {
            err = true;
            return cloudMsg;
        }
    } else
        generatePointCloudSW(startStepperAngle, sign);

    stepper.forceEnable(false, err);
    if (err)
        return cloudMsg;

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Scan time: " << ms_double.count() << "ms." << std::endl;

    return cloudMsg;
}