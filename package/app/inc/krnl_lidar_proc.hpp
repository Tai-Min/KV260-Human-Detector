#pragma once

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1

#include <CL/cl2.hpp>

class KernelLidarProc {
   private:
    static const unsigned int rangesParamOffset = 0;
    static const unsigned int rangesSizeParamOffset = rangesParamOffset + 1;
    static const unsigned int numScansParamOffset = rangesSizeParamOffset + 1;
    static const unsigned int scanStartAngleParamOffset = numScansParamOffset + 1;
    static const unsigned int scanAngleIncParamOffset = scanStartAngleParamOffset + 1;
    static const unsigned int stepperStartAngleParamOffset = scanAngleIncParamOffset + 1;
    static const unsigned int stepperAngleIntParamOffset = stepperStartAngleParamOffset + 1;
    static const unsigned int lidarHeightOffsetParamOffset = stepperAngleIntParamOffset + 1;
    static const unsigned int outBufParamOffset = lidarHeightOffsetParamOffset + 1;

    cl::Context context;
    cl::CommandQueue queue;
    std::vector<char> binBuf;
    cl::Program::Binaries binaries;
    std::vector<cl::Device> devices;
    cl::Program program;
    cl::Kernel kernel;
    cl::Buffer rangesBuf;
    cl::Buffer outBuf;

    float *rangesPtr;
    int rangesSize = -1;

    uint8_t *outPtr;
    int outSize = -1;

    bool findDevice();
    bool loadBinary(const std::string &xclbin);

   public:
    KernelLidarProc() = default;
    KernelLidarProc(const std::string &xclbin);
    ~KernelLidarProc();

    bool init(const std::string &xclbin);
    void deinit();

    bool setPersistentArgs(unsigned int numScans, unsigned int singleScanRangesCnt, float scanStartAngle, float scanAngleInc, float centerOffset);
    bool allocateBuffers(int rangesSize, int outSize);

    void setRangesChunk(const std::vector<float> &ranges, unsigned int offset);
    bool run(float stepperStartAngle, float stepperAngleInc);
    void getOutBuf(std::vector<uint8_t> &buf);
};