#include "hls_math.h"

#define RAD_2_DEG 57.2957795131

extern "C" {

/**
 * @brief Generate Float32MultiArray data blob from a bunch of 2D LIDAR scans.
 * @param rangesBuf Buffer that contains all the range samples.
 * @param single2DScanSize Size of single 2D scan in samples.
 * @param num2DScans Total number of 2D scans.
 * @param scan2DStartAngle Start angle of one 2D scan in radians.
 * @param scan2DAngleInc Angle increment of one 2D scan in radians.
 * @param scan2DMaxRange Max value in rangesBuf.
 * @param stepperStartAngle Start angle of full scan in radians.
 * @param stepperAngleInc Angle increment between two successive 2D scans.
 * @param stepperEndstopAngle Absolute angle of endstop.
 * @param imgBuf Output buffer for projection image.
 * @param imgWidth Width of projection image.
 * @param imgHeight Height of projection image.
 */
void krnl_ranges_to_projection(const float* rangesBuf, unsigned int single2DScanSize,
                               unsigned int num2DScans, float scan2DStartAngle,
                               float scan2DAngleInc, float scan2DMaxRange,
                               float stepperStartAngle, float stepperAngleInc,
                               float stepperEndstopAngle, float* imgBuf,
                               unsigned int imgWidth, unsigned int imgHeight) {
    for (unsigned int i = 0; i < imgWidth * imgHeight; i++)
        imgBuf[i] = 0;

    // Process every obtained lidar scan.
    float currStepperAngle = stepperStartAngle;
    for (unsigned int scan = 0; scan < num2DScans; scan++) {
        // Process every obtained lidar sample.
        float scan2DCurrAngle = scan2DStartAngle;
        for (int x = 0; x < single2DScanSize; x++) {
            int currSample = scan * single2DScanSize + x;

            int y = imgHeight - hls::round(currStepperAngle * RAD_2_DEG * hls::sin(scan2DCurrAngle) + stepperEndstopAngle * RAD_2_DEG);

            // Overflow might happen.
            if (y >= imgHeight)
                continue;

            imgBuf[imgWidth * y + x] = rangesBuf[currSample] / scan2DMaxRange;  // Normalize the scan.
            scan2DCurrAngle += scan2DAngleInc;
        }

        currStepperAngle += stepperAngleInc;
    }
}
}
