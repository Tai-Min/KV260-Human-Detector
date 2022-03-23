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
    LaserScan scan;

    int tries = 3;
    while (tries) {
        if (lidar2d.doProcessSimple(scan, err))
            return scan;
        tries--;
    }
    err = true;
    return scan;
}

bool Lidar::homeAndChangeDir() {
    std::chrono::milliseconds timespanHome(5);

    if (!conf.stepper.homeClosestEndstop) {
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
    conf.stepper.endstopAngle *= M_PI / 180.0;

    // Additional variables based on user's config.
    conf.stepper.movesPer3DScan = conf.stepper.stepsPer3DScan / conf.stepper.stepsPer2DScan;
    conf.lidar2d.scansPer3DScan = conf.stepper.movesPer3DScan + 1;
    float angIncPer3DScan = 2 * conf.stepper.endstopAngle;
    conf.stepper.angIncPer2DScan = angIncPer3DScan / conf.stepper.movesPer3DScan;

    // We know number of scans so resize vectors accordingly.
    scans2d.resize(conf.lidar2d.scansPer3DScan);
}

void Lidar::initScanMsgs() {
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

    panoramicScanMsg.layout.dim.resize(2);
    panoramicScanMsg.layout.data_offset = 0;

    panoramicInferenceScanMsg.layout.dim.resize(2);
    panoramicInferenceScanMsg.layout.data_offset = 0;
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

bool Lidar::lateInit(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep) {
    cloudMsg.data.resize(totalSamples * cloudMsg.point_step);
    cloudMsg.width = totalSamples;
    cloudMsg.row_step = cloudMsg.point_step * cloudMsg.width;

    int imgWidth = samplesPer2DScan;
    int imgHeight = std::round(2 * conf.stepper.endstopAngle * 180.0 / M_PI);

    panoramicScanMsg.layout.dim[0].label = "height";
    panoramicScanMsg.layout.dim[0].size = imgHeight;
    panoramicScanMsg.layout.dim[0].stride = imgWidth * imgHeight;
    panoramicScanMsg.layout.dim[1].label = "width";
    panoramicScanMsg.layout.dim[1].size = imgWidth;
    panoramicScanMsg.layout.dim[1].stride = imgWidth;
    panoramicScanMsg.data.resize(imgWidth * imgHeight);

    panoramicInferenceScanMsg.layout.dim[0].label = "height";
    panoramicInferenceScanMsg.layout.dim[0].size = imgHeight;
    panoramicInferenceScanMsg.layout.dim[0].stride = imgWidth * imgHeight;
    panoramicInferenceScanMsg.layout.dim[1].label = "width";
    panoramicInferenceScanMsg.layout.dim[1].size = imgWidth;
    panoramicInferenceScanMsg.layout.dim[1].stride = imgWidth;
    panoramicInferenceScanMsg.data.resize(imgWidth * imgHeight);

    if (conf.kernel.useKernel && !kernel.allocateBuffers(totalSamples, cloudMsg.data.size(), panoramicScanMsg.data.size()))
        return false;

    if (conf.kernel.useKernel && !kernel.setArgsCloudGen(samplesPer2DScan, conf.lidar2d.scansPer3DScan, scan2DStartAngle, scan2DAngleStep, conf.lidar2d.offset))
        return false;

    if (conf.kernel.useKernel && !kernel.setArgsProjectionGen(samplesPer2DScan, conf.lidar2d.scansPer3DScan, scan2DStartAngle, scan2DAngleStep, conf.lidar2d.maxRange, conf.stepper.endstopAngle, imgWidth, imgHeight))
        return false;

    return true;
}

void Lidar::generatePointCloudSW() {
    union FloatData {
        float f;
        char buf[sizeof(float)];
    };

    auto t1 = high_resolution_clock::now();

    float startStepperAngle = conf.stepper.currDirection == StepperController::ENDSTOP1 ? -conf.stepper.endstopAngle : conf.stepper.endstopAngle;
    int sign = conf.stepper.currDirection == StepperController::ENDSTOP1 ? 1 : -1;

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

bool Lidar::generatePointCloudHW() {
    auto t1 = high_resolution_clock::now();

    float startStepperAngle = conf.stepper.currDirection == StepperController::ENDSTOP1 ? -conf.stepper.endstopAngle : conf.stepper.endstopAngle;
    int sign = conf.stepper.currDirection == StepperController::ENDSTOP1 ? 1 : -1;

    if (!kernel.runCloudGen(startStepperAngle, sign * conf.stepper.angIncPer2DScan))
        return false;

    kernel.getCloudBuf(cloudMsg.data);

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point cloud generation hard impl exec time: " << ms_double.count() << "ms." << std::endl;
    return true;
}

void Lidar::generatePanoramicImageSW() {
    auto t1 = high_resolution_clock::now();

    float startStepperAngle = conf.stepper.currDirection == StepperController::ENDSTOP1 ? -conf.stepper.endstopAngle : conf.stepper.endstopAngle;
    int sign = conf.stepper.currDirection == StepperController::ENDSTOP1 ? 1 : -1;
    int imgWidth = panoramicScanMsg.layout.dim[1].size;
    int imgHeight = panoramicScanMsg.layout.dim[0].size;

    float currStepperAngle = startStepperAngle;

    for (unsigned int scan = 0; scan < scans2d.size(); scan++) {
        float scan2DCurrAngle = scans2d[scan].config.min_angle;
        float scan2DAngleInc = scans2d[scan].config.ang_increment;

        for (unsigned int x = 0; x < scans2d[scan].ranges.size(); x++) {
            int y = imgHeight - std::round(currStepperAngle * 180.0 / M_PI * std::sin(scan2DCurrAngle) + conf.stepper.endstopAngle * 180.0 / M_PI);

            // Overflow might happen.
            if (y >= imgHeight)
                continue;

            panoramicScanMsg.data[imgWidth * y + x] = scans2d[scan].ranges[x] / conf.lidar2d.maxRange;  // Normalize the scan.
            scan2DCurrAngle += scan2DAngleInc;
        }

        currStepperAngle += sign * conf.stepper.angIncPer2DScan;
    }

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point panorama generation soft impl exec time: " << ms_double.count() << "ms." << std::endl;
}

bool Lidar::generatePanoramicImageHW() {
    auto t1 = high_resolution_clock::now();

    float startStepperAngle = conf.stepper.currDirection == StepperController::ENDSTOP1 ? -conf.stepper.endstopAngle : conf.stepper.endstopAngle;
    int sign = conf.stepper.currDirection == StepperController::ENDSTOP1 ? 1 : -1;

    if (!kernel.runProjectionGen(startStepperAngle, sign * conf.stepper.angIncPer2DScan))
        return false;

    kernel.getProjectionBuff(panoramicScanMsg.data);

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Point panorama generation hard impl exec time: " << ms_double.count() << "ms." << std::endl;

    return true;
}

bool Lidar::generatePanoramicInferenceImageHW() {
    auto t1 = high_resolution_clock::now();

    panoramicInferenceScanMsg.data = detector.run(panoramicScanMsg.data,
                                                  panoramicScanMsg.layout.dim[1].size,
                                                  panoramicScanMsg.layout.dim[0].size);

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Neural inference exec time: " << ms_double.count() << "ms." << std::endl;

    return true;
}

bool Lidar::init(const Config &lidarConf) {
    conf = lidarConf;

    initVariables();

    initScanMsgs();

    if (!detector.init(conf.detector.model))
        return false;

    if (conf.kernel.useKernel && !kernel.init(conf.kernel.xclbin))
        return false;

    if (!stepper.init(conf.stepper.chipNum))
        return false;

    if (!initLidar2D())
        return false;

    // Scan once in init to allocate some buffers with correct sizes.
    if (!scanOnce())
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

bool Lidar::scanOnce() {
    auto t1 = high_resolution_clock::now();

    bool err = false;

    stepper.forceEnable(true, err);
    if (err)
        return false;

    if (!homeAndChangeDir())
        return false;

    unsigned int totalSamples = 0;
    unsigned int rangesOffset = 0;
    for (unsigned int scan = 0; scan < conf.lidar2d.scansPer3DScan; scan++) {
        scans2d[scan] = scan2D(err);

        if (err)
            return false;

        if (!fstScan && conf.kernel.useKernel) {
            kernel.setRangesChunk(scans2d[scan].ranges, rangesOffset);
            rangesOffset += scans2d[scan].ranges.size();
        }

        totalSamples += scans2d[scan].ranges.size();

        if (!moveNextPos())
            return false;
    }

    if (fstScan) {
        err = !lateInit(totalSamples, scans2d[0].ranges.size(), scans2d[0].config.min_angle, scans2d[0].config.ang_increment);
        if (err)
            return false;

        fstScan = false;
    }

    stepper.forceEnable(false, err);
    if (err)
        return false;

    auto t2 = high_resolution_clock::now();
    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << "Scan time: " << ms_double.count() << "ms." << std::endl;

    return true;
}

sensor_msgs::msg::PointCloud2 Lidar::getPointCloudMsg(bool &err) {
    if (conf.kernel.useKernel && !generatePointCloudHW()) {
        err = true;
    } else
        generatePointCloudSW();
    return cloudMsg;
}

std_msgs::msg::Float32MultiArray Lidar::getPanoramicImageMsg(bool &err) {
    if (conf.kernel.useKernel && !generatePanoramicImageHW()) {
        err = true;
    } else
        generatePanoramicImageSW();
    return panoramicScanMsg;
}

std_msgs::msg::Float32MultiArray Lidar::getPanoramicInferenceImageMsg(bool &err) {
    if (!generatePanoramicInferenceImageHW())
        err = true;
    return panoramicInferenceScanMsg;
}