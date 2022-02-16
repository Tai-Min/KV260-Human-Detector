#include "hls_math.h"

union FloatData {
    float f;
    uint8_t buf[sizeof(float)];
};

extern "C" {

/**
 * @brief Generate PointCloud2 data blob from a bunch of 2D LIDAR scans.
 * @param rangesBuf Buffer that contains all the range samples.
 * @param single2DScanSize Size of single 2D scan in samples.
 * @param num2DScans Total number of 2D scans.
 * @param scan2DStartAngle Start angle of one 2D scan in radians.
 * @param scan2DAngleInc Angle increment of one 2D scan in radians.
 * @param stepperStartAngle Start angle of full scan in radians.
 * @param stepperAngleInc Angle increment between two successive 2D scans.
 * @param centerOffset 2D LIDAR's offset from center of the cradle (threaded rod).
 * @param cloudBuf Output buffer containing PointCloud2 blob.
 */
void krnl_lidar_proc(const float* rangesBuf, unsigned int single2DScanSize, unsigned int num2DScans, float scan2DStartAngle, float scan2DAngleInc, float stepperStartAngle, float stepperAngleInc, float centerOffset, uint8_t* cloudBuf) {
    FloatData x, y, z;

    // Process every obtained lidar scan.
    float currStepperAngle = stepperStartAngle;
    unsigned int pointOffset = 0;
    for (unsigned int scan = 0; scan < num2DScans; scan++) {
        //  Get rotation and shift params.
        float rotationOffsetY = -currStepperAngle;
        float transformOffsetX = hls::sin(hls::abs(rotationOffsetY)) * centerOffset;
        float transformOffsetZ = hls::sqrt(centerOffset * centerOffset - transformOffsetX * transformOffsetX);

        // Convert each sample of current scan to point cloud.
        float currScanAngle = scan2DStartAngle;
        for (int sample = 0; sample < single2DScanSize; sample++) {
            int currSample = scan * single2DScanSize + sample;

            // Convert sample from polar to cartesian in rotated lidar's frame.
            x.f = rangesBuf[currSample] * hls::sin(currScanAngle);
            y.f = -rangesBuf[currSample] * hls::cos(currScanAngle);

            // Rotate and shift sample to main lidar's frame.
            float tx = x.f;
            x.f = tx * hls::cos(rotationOffsetY) - transformOffsetX;
            z.f = -tx * hls::sin(rotationOffsetY) - transformOffsetZ;

            // Save results in PointCloud2 blob.
            for (unsigned int byte = 0; byte < sizeof(float); byte++) {
                cloudBuf[pointOffset + byte] = x.buf[byte];
                cloudBuf[pointOffset + sizeof(float) + byte] = y.buf[byte];
                cloudBuf[pointOffset + sizeof(float) * 2 + byte] = z.buf[byte];
            }

            currScanAngle += scan2DAngleInc;
            pointOffset += 3 * sizeof(float);
        }
        currStepperAngle += stepperAngleInc;
    }
}
}
