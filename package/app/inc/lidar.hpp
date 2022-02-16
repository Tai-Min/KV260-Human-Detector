#pragma once

#include "CYdLidar.h"
#include "krnl_lidar_proc.hpp"
#include "sensor_msgs/msg/point_cloud2.hpp"
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
        float endstop1Angle = -45;         //!< Angle of the first endstop in degrees (after user's setup this will be converted to radians for use inside this class).
        float endstop2Angle = 45;          //!< Angle of the second endstop in degrees (after user's setup this will be converted to radians for use inside this class).

       private:
        unsigned int movesPerScan;                                               //!< Number of MOV commands per one full scan.
        float angIncPer2DScan;                                                   //!< Angular increment between two successive 2D scans in radians.
        StepperController::Endstop currDirection = StepperController::ENDSTOP2;  //!< Current direction of the stepper motor.
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
        float minRange = 0.1;               //!< Min range in meters.
        float maxRange = 10;                //!< Max range in meters.
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

   public:
    struct Config {
        bool homeClosestEndstop = true;  //!< Whether to home stepper to closest endstop (true) or always home to ENDSTOP1 (false).
        std::string frameId = "map";     //!< Frame ID form ROS messages.
        StepperConf stepper;             //!< Config for stepper motor.
        Lidar2DConf lidar2d;             //!< Config for 2D LIDAR.
        KernelConf kernel;               //!< Config for hardware kernel functions.
    };

   private:
    Config conf;  //!< Global config and state file.

    bool fstScan = true;  //!< Whether it's first full scan so LIDAR can setup some parameters based on it.
    bool allGood = false;

    StepperController stepper;  //!< Stepper controller.
    CYdLidar lidar2d;           //!< 2D LIDAR.
    KernelLidarProc kernel;     //!< Kernel wrapper.

    std::vector<LaserScan> scans2d;          //!< Contains list of all scans performed during one full scan.
    sensor_msgs::msg::PointCloud2 cloudMsg;  //!< Point cloud message for ROS2.

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
     * @brief Initialize cloudMsg with persistent data.
     */
    void initScanMsg();

    /**
     * @brief Initialize 2D LIDAR.
     * @return True if success, false if fail.
     */
    bool initLidar2D();

    /**
     * @brief Allocate variables that require knowledge that can be obtained only after first full scan.
     * @param totalSamples Sum of samples from every 2D scan.
     * @param samplesPer2DScan Number of samples per one 2D scan.
     * @param scan2DStartAngle Start angle of the 2D scan.
     * @param scan2DAngleStep Step angle of the 2D scan.
     * @return True if allocation successful, false otherwise.
     */
    bool allocFstScan(unsigned int totalSamples, unsigned int samplesPer2DScan, float scan2DStartAngle, float scan2DAngleStep);

    /**
     * @brief Generate point cloud based on recently obtained full scan. Uses CPU.
     * @param startStepperAngle Start angle of the stepper of recently obtained full scan.
     * @param sign Whether the angle increases (1) or decreases (-1).
     */
    void generatePointCloudSW(float startStepperAngle, int sign);

    /**
     * @brief Generate point cloud based on recently obtained full scan. Uses hardware kernel.
     * @param startStepperAngle Start angle of the stepper of recently obtained full scan.
     * @param sign Whether the angle increases (1) or decreases (-1).
     * @return True if success, fail if kernel failed for some reason.
     */
    bool generatePointCloudHW(float startStepperAngle, int sign);

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
     * @brief Perform one full scan.
     * @param err Set to true if scan failed.
     * @return Generated point cloud, undefined if err = true.
     */
    sensor_msgs::msg::PointCloud2 scanOnce(bool &err);
};