#include "../inc/krnl_lidar_proc.hpp"

#include <fstream>

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

    kernel = cl::Kernel(program, "krnl_lidar_proc", &err);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

void KernelLidarProc::deinit() {
    if (rangesSize > 0) {
        queue.enqueueUnmapMemObject(rangesBuf, rangesPtr);
        rangesSize = -1;
    }

    if (outSize > 0) {
        queue.enqueueUnmapMemObject(outBuf, outPtr);
        outSize = -1;
    }

    queue.finish();
}

bool KernelLidarProc::setPersistentArgs(unsigned int numScans, unsigned int singleScanRangesCnt, float scanStartAngle, float scanAngleInc, float centerOffset) {
    cl_int err;

    err = kernel.setArg(rangesSizeParamOffset, singleScanRangesCnt);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(numScansParamOffset, numScans);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(scanStartAngleParamOffset, scanStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(scanAngleIncParamOffset, scanAngleInc);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(lidarHeightOffsetParamOffset, centerOffset);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

bool KernelLidarProc::allocateBuffers(int rangesSize, int outSize) {
    this->rangesSize = rangesSize;
    this->outSize = outSize;

    cl_int err;
    rangesBuf = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR, rangesSize * sizeof(float), nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    outBuf = cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR, outSize, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    rangesPtr = (float*)queue.enqueueMapBuffer(rangesBuf, CL_TRUE, CL_MAP_WRITE, 0, rangesSize * sizeof(float), nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    outPtr = (uint8_t*)queue.enqueueMapBuffer(outBuf, CL_TRUE, CL_MAP_READ, 0, outSize, nullptr, nullptr, &err);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(rangesParamOffset, rangesBuf);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(outBufParamOffset, outBuf);
    if (err != CL_SUCCESS)
        return false;

    return true;
}

void KernelLidarProc::setRangesChunk(const std::vector<float>& ranges, unsigned int offset) {
    std::copy(ranges.begin(), ranges.end(), rangesPtr + offset);
}

bool KernelLidarProc::run(float stepperStartAngle, float stepperAngleInc) {
    cl_int err;

    err = kernel.setArg(stepperStartAngleParamOffset, stepperStartAngle);
    if (err != CL_SUCCESS)
        return false;

    err = kernel.setArg(stepperAngleIntParamOffset, stepperAngleInc);
    if (err != CL_SUCCESS)
        return false;

    queue.enqueueMigrateMemObjects({rangesBuf}, 0);
    queue.enqueueTask(kernel);
    queue.enqueueMigrateMemObjects({outBuf}, CL_MIGRATE_MEM_OBJECT_HOST);

    //queue.finish();

    return true;
}

void KernelLidarProc::getOutBuf(std::vector<uint8_t>& buf) {
    buf.resize(outSize);
    std::copy(outPtr, outPtr + outSize, buf.data());
}