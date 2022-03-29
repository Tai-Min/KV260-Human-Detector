#pragma once

#include "CYdLidar.h"
#include "detector.hpp"
#include "krnl_lidar_proc.hpp"
#include "sensor_msgs/msg/point_cloud2.hpp"
#include "std_msgs/msg/float32_multi_array.hpp"
#include "stepper_controller.hpp"

class Lidar {
   private:
    /**
     * @brief Configuration and state of the stepper motor.
     */
    struct StepperConf {
        friend class Lidar;

        unsigned int chipNum = 492;        //!< Number of gpiochip attached to AXI stepper controller.
        unsigned int stepsPer3DScan = 50;  //!< Number of steps per one full scan.
        unsigned int stepsPer2DScan = 5;   //!< Number of steps between two successive 2D scans.
        float endstopAngle = 45;           //!< Angle of the endstops in degrees (after user's setup this will be converted to radians for use inside this class). MUST be positive.
        bool homeClosestEndstop = true;    //!< Whether to home stepper to closest endstop (true) or always home to ENDSTOP1 (false).

       private:
        unsigned int movesPer3DScan;                                             //!< Number of MOV commands per one full scan.
        float angIncPer2DScan;                                                   //!< Angular increment between two successive 2D scans in radians.
        StepperController::Endstop currDirection = StepperController::ENDSTOP1;  //!< Current direction of the stepper motor.
    };

    /**
     * @brief Configuration and state of the 2D LIDAR.
     */
    struct Lidar2DConf {
        friend class Lidar;

        std::string port = "/dev/ttyUSB0";  //!< LIDAR's serial port.
        unsigned int baudrate = 128000;     //!< Baudrate.
        float minAngle = -180;              //!< Min angle in degrees.
        float maxAngle = 180;               //!< Max angle in degrees.
        float minRange = -10;               //!< Min range in meters.
        float maxRange = 12;                //!< Max range in meters.
        float offset = 0.055;               //!< Offset from center of the cradle (from threaded rod) in meters.

       private:
        unsigned int scansPer3DScan;    //!< Number of 2D scans per one full scan.
        bool isLidar2DOpen = false;     //!< Whether LIDAR is connected.
        bool isLidar2DRunning = false;  //!< Whether LIDAR is spinning.
    };

    struct KernelConf {
        bool useKernel = true;  //!< Whether use hardware kernel or software implementation.
        std::string xclbin;     //!< Path to .xclbin file with kernels defined.
    };

    struct DetectorConf {
        std::string model;           //!< Path to .xmodel file with detector network.
        float minProbability = 0.8;  //!< Minimum probability that is required to consider segmented pixel as human (0 - 1).
    };

   public:
    struct Config {
        std::string frameId = "map";  //!< Frame ID form ROS messages.
        StepperConf stepper;          //!< Config for stepper motor.
        Lidar2DConf lidar2d;          //!< Config for 2D LIDAR.
        KernelConf kernel;            //!< Config for hardware kernel functions.
        DetectorConf detector;        //!< Config for detector neural network.
    };

   private:
    Config conf;  //!< Global config and state file.

    bool fstScan = true;  //!< Whether it's first full scan so LIDAR can setup some parameters based on it.
    bool allGood = false;

    StepperController stepper;  //!< Stepper controller.
    CYdLidar lidar2d;           //!< 2D LIDAR.
    KernelLidarProc kernel;     //!< Kernel wrapper.
    Detector detector;          //!< Human detector network wrapper.

    std::vector<LaserScan> scans2d;                              //!< Contains list of all scans performed during one full scan.
    sensor_msgs::msg::PointCloud2 cloudMsg;                      //!< Point cloud message for ROS2.
    std_msgs::msg::Float32MultiArray panoramicScanMsg;           //!< Message that contains 3D scan in form panoramic picture (normalized to 0 - 1).
    std_msgs::msg::Float32MultiArray panoramicInferenceScanMsg;  //!< Message that contains segmented panoramic picture (normalized to 0 - 1).
    sensor_msgs::msg::PointCloud2 cloudInferenceMsg;             //!< Message that contains point cloud containing only scans segmented as humans.

    /**
     * @brief Translate single range (polar coordinates) into point cloud voxel.
     * @param range Range to convert to.
     * @param scan2DAngle Angle of measured range.
     * @param tranOffX Translation X.
     * @param tranOffZ Translation Z.
     * @param rotOffY Rotation Y.
     * @param msg Buffer to insert result to.
     * @param pointOffset Offset from start of msg buffer after which insert the result.
     */
    void rangeToPointCloud(float range, float scan2DAngle, float tranOffX, float tranOffZ, float rotOffY, sensor_msgs::msg::PointCloud2 &msg, unsigned int pointOffset);

    /**
     * @brief Perform single 2D scan.
     * @param err Set to true if scan failed.
     * @return Scan, undefined if err = true.
     */
    LaserScan scan2D(bool &err);

    /**
     * @brief Perform blocking home of the stepper motor.
     * @return True on success.
     */
    bool homeAndChangeDir();

    /**
     * @brief Move to next 2D scanning position.
     * @return True on success.
     */
    bool moveNextPos();

    /**
     * @brief Initialize hidden from user config variables.
     */
    void initVariables();

    /**
     * @brief Initialize ROS messages with persistent data.
     */
    void initScanMsgs();

    /**
     * @brief Initialize 2D LIDAR.
     * @return True on success.
     */
    bool initLidar2D();

    /**
     * @brief Allocate variables and buffers that require knowledge that can be obtained only after first full scan.
     * @param totalSamples Sum of samples from every 2D scan.
     * @param samplesPer2DScan Number of samples per one 2D scan.
     * @param scan2DStartAngle Start angle of the 2D scan.
     * @param scan2DAngleStep Step angle of the 2D scan.
     * @return True if allocation successful, false otherwise.
     */
    bool lateInit(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep);

    /**
     * @brief Generate simple 3D scan. Loads scan samples to scans2d variable and to kernel object.
     * @return True on success.
     */
    bool generate3DScan();

    /**
     * @brief Generate point cloud based on recently obtained full scan. Uses CPU.
     */
    void generatePointCloudSW();

    /**
     * @brief Generate point cloud based on recently obtained full scan. Uses hardware kernel.
     * @return True if success, fail if kernel failed for some reason.
     */
    bool generatePointCloudHW();

    /**
     * @brief Generate panoramic image based on recently obtained full scan. Uses CPU.
     */
    void generatePanoramicImageSW();

    /**
     * @brief Generate panoramic image based on recently obtained full scan. Uses hardware kernel.
     */
    bool generatePanoramicImageHW();

    /**
     * @brief Run DPU inference engine on recently obtained panoramic image.
     * @return True on success.
     */
    bool generateInferencePanoramicImageHW();

    /**
     * @brief Generate point cloud scan that contains only points where humans are considered to be. Uses CPU.
     */
    void generateInferencePointCloudSW();

    /**
     * @brief Generate point cloud scan that contains only points where humans are considered to be. Uses hardware kernel.
     * @return True on success.
     */
    bool generateInferencePointCloudHW();

   public:
    /**
     * @brief Construct 3D LIDAR object without turning it on.
     */
    Lidar() = default;

    /**
     * @brief Construct 3D LIDAR object and turn it on.
     * @param lidarConf LIDAR's config.
     */
    Lidar(const Config &lidarConf);

    /**
     * @brief Destroy the Lidar object.
     */
    ~Lidar();

    /**
     * @brief Turn on uninitialized 3D LIDAR object.
     * @param lidarConf LIDAR's config.
     * @return True if initialization successful.
     */
    bool init(const Config &lidarConf);

    /**
     * @brief Turn off 3D LIDAR object.
     */
    void deinit();

    /**
     * @brief Check whether LIDAR is turned on and ready for scanning.
     * @return True if ready.
     */
    bool good();

    /**
     * @brief Perform one full scan and generate all ROS2 messages.
     * @return True on success.
     */
    bool scanOnce();

    /**
     * @brief Get content of scanOnce() as cloud point.
     * @return The message.
     */
    sensor_msgs::msg::PointCloud2 getPointCloudMsg();

    /**
     * @brief Get content of scanOnce() as projected image.
     * @return The message.
     */
    std_msgs::msg::Float32MultiArray getPanoramicImageMsg();

    /**
     * @brief Get content of scanOnce() as projected image that contains non zero valued pixels in places where humans are detected.
     * @return The message.
     */
    std_msgs::msg::Float32MultiArray getPanoramicInferenceImageMsg();

    /**
     * @brief Get content of scanOnce() as point cloud that contains non zero valued points in places where humans are detected.
     * @return The message.
     */
    sensor_msgs::msg::PointCloud2 getPointCloudInferenceMsg();
};