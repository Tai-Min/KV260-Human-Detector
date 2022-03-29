#include "hls_math.h"

#define RAD_2_DEG 57.2957795131

union FloatData {
    float f;
    uint8_t buf[sizeof(float)];
};

extern "C" {

/**
 * @brief Generate PointCloud2 data blob from panoramic network inference buffer.
 * @param rangesBuf Buffer that contains all the range samples.
 * @param single2DScanSize Size of single 2D scan in samples.
 * @param num2DScans Total number of 2D scans.
 * @param scan2DStartAngle Start angle of one 2D scan in radians.
 * @param scan2DAngleInc Angle increment of one 2D scan in radians.
 * @param stepperStartAngle Start angle of full scan in radians.
 * @param stepperAngleInc Angle increment between two successive 2D scans.
 * @param stepperEndstopAngle Absolute angle of the endstop.
 * @param centerOffset 2D LIDAR's offset from center of the cradle (threaded rod).
 * @param inferenceBuf Buffer containing segmentation data from U-Net. Same size as panoramic image.
 * @param imgWidth Width of inference buffer.
 * @param imgHeight Height of inference buffer.
 * @param cloudBuf Output buffer containing PointCloud2 blob.
 */
void krnl_projection_to_cloud(const float* rangesBuf, unsigned int single2DScanSize,
                              unsigned int num2DScans, float scan2DStartAngle,
                              float scan2DAngleInc, float stepperStartAngle,
                              float stepperAngleInc, float stepperEndstopAngle, float centerOffset,
                              const float* inferenceBuf, unsigned int imgWidth, unsigned int imgHeight,
                              uint8_t* cloudBuf) {
    FloatData cloudX, cloudY, cloudZ;

    // Process every obtained lidar scan.
    float currStepperAngle = stepperStartAngle;
    unsigned int pointOffset = 0;
    for (unsigned int scan = 0; scan < num2DScans; scan++) {
        //  Get rotation and shift params.
        float rotationOffsetY = -currStepperAngle;
        float transformOffsetX = hls::sin(hls::abs(rotationOffsetY)) * centerOffset;
        float transformOffsetZ = hls::sqrt(centerOffset * centerOffset - transformOffsetX * transformOffsetX);

        // Process every obtained lidar sample.
        float scan2DCurrAngle = scan2DStartAngle;

        for (int x = 0; x < single2DScanSize; x++) {
            int currSample = scan * single2DScanSize + x;

            int y = imgHeight - hls::round(currStepperAngle * RAD_2_DEG * hls::sin(scan2DCurrAngle) + stepperEndstopAngle * RAD_2_DEG);

            // Overflow might happen.
            if (y >= imgHeight)
                continue;

            float range = inferenceBuf[imgWidth * y + x] ? rangesBuf[currSample] : 0;

            // Convert sample from polar to cartesian in rotated lidar's frame.
            cloudX.f = range * hls::sin(scan2DCurrAngle);
            cloudY.f = -range * hls::cos(scan2DCurrAngle);

            // Rotate and shift sample to main lidar's frame.
            float tx = cloudX.f;
            cloudX.f = tx * hls::cos(rotationOffsetY) - transformOffsetX;
            cloudZ.f = -tx * hls::sin(rotationOffsetY) - transformOffsetZ;

            // Save results in PointCloud2 blob.
            for (unsigned int byte = 0; byte < sizeof(float); byte++) {
                cloudBuf[pointOffset + byte] = cloudX.buf[byte];
                cloudBuf[pointOffset + sizeof(float) + byte] = cloudY.buf[byte];
                cloudBuf[pointOffset + sizeof(float) * 2 + byte] = cloudZ.buf[byte];
            }

            scan2DCurrAngle += scan2DAngleInc;
            pointOffset += 3 * sizeof(float);
        }

        currStepperAngle += stepperAngleInc;
    }
}
}
