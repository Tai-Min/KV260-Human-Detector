#include "hls_math.h"

union FloatData {
    float f;
    uint8_t buf[sizeof(float)];
};

extern "C" {

void krnl_lidar_proc(const float* ranges, unsigned int rangesSize, unsigned int numScans, float scanStartAngle, float scanAngleInc, float stepperStartAngle, float stepperAngleInc, float lidarHeightOffset, uint8_t* outBuf) {
    FloatData x, y, z;

    // Process every obtained lidar scan.
    float currStepperAngle = stepperStartAngle;
    unsigned int pointOffset = 0;
    for (unsigned int scan = 0; scan < numScans; scan++) {
        //  Get rotation and shift params.
        float rotationOffsetY = -currStepperAngle;
        float transformOffsetX = hls::sin(hls::abs(rotationOffsetY)) * lidarHeightOffset;
        float transformOffsetZ = hls::sqrt(lidarHeightOffset * lidarHeightOffset - transformOffsetX * transformOffsetX);

        // Convert each sample of current scan to point cloud.
        float currScanAngle = scanStartAngle;
        for (int sample = 0; sample < rangesSize; sample++) {
            int currSample = scan * rangesSize + sample;

            // Convert sample from polar to cartesian in rotated lidar's frame.
            x.f = ranges[currSample] * hls::sin(currScanAngle);
            y.f = -ranges[currSample] * hls::cos(currScanAngle);

            // Rotate and shift sample to main lidar's frame.
            float tx = x.f;
            x.f = tx * hls::cos(rotationOffsetY) - transformOffsetX;
            z.f = -tx * hls::sin(rotationOffsetY) - transformOffsetZ;

            // Save results in PointCloud2 blob.
            for (unsigned int byte = 0; byte < sizeof(float); byte++) {
                outBuf[pointOffset + byte] = x.buf[byte];
                outBuf[pointOffset + sizeof(float) + byte] = y.buf[byte];
                outBuf[pointOffset + sizeof(float) * 2 + byte] = z.buf[byte];
            }

            currScanAngle += scanAngleInc;
            pointOffset += 3 * sizeof(float);
        }
        currStepperAngle += stepperAngleInc;
    }
}
}
