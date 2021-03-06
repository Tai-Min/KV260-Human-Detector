#include "../inc/krnl_lidar_proc.hpp"

#include <fstream>
#include <iostream>

KernelLidarProc::KernelLidarProc(const std::string& xclbin) {
    if (!init(xclbin))
        deinit();
}
KernelLidarProc::~KernelLidarProc() {
    deinit();
}

bool KernelLidarProc::findDevice() {
    std::vector<cl::Platform> platforms;

    // Look for Xilinx platform.
    cl::Platform::get(&platforms);
    for (auto platform : platforms) {
        std::string platformName = platform.getInfo<CL_PLATFORM_NAME>();
        std::cout << platformName << std::endl;
        if (platformName == "Xilinx") {
            devices.clear();
            platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
            if (devices.size()) {
                devices.resize(1);
                return true;
            }
        }
    }
    return false;
}

bool KernelLidarProc::loadBinary(const std::string& xclbin) {
    std::ifstream binFile(xclbin, std::ifstream::binary);
    if (!binFile) {
        return false;
    }

    binFile.unsetf(std::ios::skipws);

    binFile.seekg(0, std::ifstream::end);
    unsigned long binSize = binFile.tellg();
    binFile.seekg(0, std::ifstream::beg);

    binBuf.resize(binSize);
    binFile.read((char*)&binBuf[0], binSize);

    binaries.push_back({binBuf.data(), binBuf.size()});
    return true;
}

bool KernelLidarProc::init(const std::string& xclbin) {
    cl_int err;

    if (!findDevice())
        return false;

    context = cl::Context(devices[0], NULL, NULL, NULL, &err);
    if (err != CL_SUCCESS)
        return false;

    queue = cl::CommandQueue(context, devices[0], NULL, &err);
    if (err != CL_SUCCESS)
        return false;

    if (!loadBinary(xclbin))
        return false;

    program = cl::Program(context, devices, binaries, NULL, &err);
    if (err != CL_SUCCESS)
        return false;

    rangesToCloud = cl::Kernel(program, "krnl_ranges_to_cloud", &err);
    if (err != CL_SUCCESS)
        return false;

    rangesToProjection = cl::Kernel(program, "krnl_ranges_to_projection", &err);
    if (err != CL_SUCCESS)
        return false;

    projectionToCloud = cl::Kernel(program, "krnl_projection_to_cloud", &err);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

void KernelLidarProc::deinit() {
    if (rangesSize > 0) {
        queue.enqueueUnmapMemObject(rangesBuf, rangesPtr);
        rangesSize = -1;
    }

    if (cloudSize > 0) {
        queue.enqueueUnmapMemObject(cloudBuf, cloudPtr);
        cloudSize = -1;
    }

    if (projectionSize > 0) {
        queue.enqueueUnmapMemObject(projectionBuf, projectionPtr);
        projectionSize = -1;
    }

    if (projectionInferenceSize > 0) {
        queue.enqueueUnmapMemObject(projectionInferenceBuf, projectionInferencePtr);
        projectionInferenceSize = -1;
    }

    if (cloudInferenceSize > 0) {
        queue.enqueueUnmapMemObject(cloudInferenceBuf, cloudInferencePtr);
        cloudInferenceSize = -1;
    }

    queue.finish();
}

bool KernelLidarProc::allocateBuffers(int rangesSize, int cloudSize, int projectionSize) {
    this->rangesSize = rangesSize;
    this->cloudSize = cloudSize;
    this->projectionSize = projectionSize;
    this->projectionInferenceSize = projectionSize;
    this->cloudInferenceSize = cloudSize;

    cl_int err;
    rangesBuf = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR, rangesSize * sizeof(float), nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    rangesPtr = (float*)queue.enqueueMapBuffer(rangesBuf, CL_TRUE, CL_MAP_WRITE, 0, rangesSize * sizeof(float), nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    cloudBuf = cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR, cloudSize, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    cloudPtr = (uint8_t*)queue.enqueueMapBuffer(cloudBuf, CL_TRUE, CL_MAP_READ, 0, cloudSize, nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    projectionBuf = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR, projectionSize * sizeof(float), nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    projectionPtr = (float*)queue.enqueueMapBuffer(projectionBuf, CL_TRUE, CL_MAP_READ, 0, projectionSize * sizeof(float), nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    projectionInferenceBuf = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR, projectionInferenceSize * sizeof(float), nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    projectionInferencePtr = (float*)queue.enqueueMapBuffer(projectionInferenceBuf, CL_TRUE, CL_MAP_WRITE, 0, projectionInferenceSize * sizeof(float), nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    cloudInferenceBuf = cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR, cloudInferenceSize * sizeof(float), nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    cloudInferencePtr = (uint8_t*)queue.enqueueMapBuffer(cloudInferenceBuf, CL_TRUE, CL_MAP_READ, 0, cloudInferenceSize * sizeof(float), nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

bool KernelLidarProc::setArgsCloudGen(unsigned int numScans, unsigned int singleScanRangesCnt, float scanStartAngle, float scanAngleInc, float centerOffset) {
    cl_int err;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.rangesBuf, rangesBuf);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.single2DScanSize, singleScanRangesCnt);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.num2DScans, numScans);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.scan2DStartAngle, scanStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.scan2DAngleInc, scanAngleInc);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.centerOffset, centerOffset);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.cloudBuf, cloudBuf);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

bool KernelLidarProc::setArgsProjectionGen(unsigned int single2DScanSize, unsigned int num2DScans, float scan2DStartAngle, float scan2DAngleInc, float scan2DMaxRange, float stepperEndstopAngle, unsigned int imgWidth, unsigned int imgHeight) {
    cl_int err;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.rangesBuf, rangesBuf);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.single2DScanSize, single2DScanSize);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.num2DScans, num2DScans);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.scan2DStartAngle, scan2DStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.scan2DAngleInc, scan2DAngleInc);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.scan2DMaxRange, scan2DMaxRange);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.stepperEndstopAngle, stepperEndstopAngle);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.projectionBuf, projectionBuf);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.imgWidth, imgWidth);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.imgHeight, imgHeight);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

bool KernelLidarProc::setArgsInferenceCloudGen(unsigned int single2DScanSize, unsigned int num2DScans, float scan2DStartAngle, float scan2DAngleInc, float stepperEndstopAngle, float centerOffset, unsigned int imgWidth, unsigned int imgHeight) {
    cl_int err;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.rangesBuf, rangesBuf);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.single2DScanSize, single2DScanSize);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.num2DScans, num2DScans);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.scan2DStartAngle, scan2DStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.scan2DAngleInc, scan2DAngleInc);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.stepperEndstopAngle, stepperEndstopAngle);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.centerOffset, centerOffset);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.projectionInferenceBuf, projectionInferenceBuf);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.imgWidth, imgWidth);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.imgHeight, imgHeight);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.cloudInferenceBuf, cloudInferenceBuf);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

void KernelLidarProc::setRangesChunk(const std::vector<float>& ranges, unsigned int offset) {
    std::copy(ranges.begin(), ranges.end(), rangesPtr + offset);
}

bool KernelLidarProc::runCloudGen(float stepperStartAngle, float stepperAngleInc) {
    cl_int err;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.stepperStartAngle, stepperStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToCloud.setArg(rangesToCloudParamOffsets.stepperAngleInc, stepperAngleInc);
    if (err != CL_SUCCESS)
        return false;

    queue.enqueueMigrateMemObjects({rangesBuf}, 0);
    queue.enqueueTask(rangesToCloud);
    queue.enqueueMigrateMemObjects({cloudBuf}, CL_MIGRATE_MEM_OBJECT_HOST);

    return true;
}

bool KernelLidarProc::runProjectionGen(float stepperStartAngle, float stepperAngleInc) {
    cl_int err;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.stepperStartAngle, stepperStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = rangesToProjection.setArg(rangesToProjectionParamOffsets.stepperAngleInc, stepperAngleInc);
    if (err != CL_SUCCESS)
        return false;

    queue.enqueueMigrateMemObjects({rangesBuf}, 0);
    queue.enqueueTask(rangesToProjection);
    queue.enqueueMigrateMemObjects({projectionBuf}, CL_MIGRATE_MEM_OBJECT_HOST);

    return true;
}

bool KernelLidarProc::runInferenceCloudGen(float stepperStartAngle, float stepperAngleInc, const std::vector<float>& projectionInferenceData) {
    cl_int err;

    std::copy(projectionInferenceData.begin(), projectionInferenceData.end(), projectionInferencePtr);

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.stepperStartAngle, stepperStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = projectionToCloud.setArg(projectionToCloudParamOffsets.stepperAngleInc, stepperAngleInc);
    if (err != CL_SUCCESS)
        return false;

    queue.enqueueMigrateMemObjects({rangesBuf, projectionInferenceBuf}, 0);
    queue.enqueueTask(projectionToCloud);
    queue.enqueueMigrateMemObjects({cloudInferenceBuf}, CL_MIGRATE_MEM_OBJECT_HOST);

    return true;
}

void KernelLidarProc::getCloudBuf(std::vector<uint8_t>& buf) {
    std::copy(cloudPtr, cloudPtr + cloudSize, buf.data());
}

void KernelLidarProc::getProjectionBuff(std::vector<float>& buf) {
    std::copy(projectionPtr, projectionPtr + projectionSize, buf.data());
}

void KernelLidarProc::getInferenceCloudBuf(std::vector<uint8_t>& buf) {
    std::copy(cloudInferencePtr, cloudInferencePtr + cloudInferenceSize, buf.data());
}