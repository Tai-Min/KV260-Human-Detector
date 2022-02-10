#pragma once

#include <string>
#include "stepper_controller.hpp"

class Lidar
{
public:
    struct Config
    {
        unsigned int stepperChipNum = 0;
        unsigned int stepsPerScan = 50;
        unsigned int stepsPerLidarRevolution = 10pet;
        std::string lidarPort = "";
    };

    StepperController::Endstop currDirection = StepperController::ENDSTOP2;

private:
    Config conf;
    StepperController stepper;

public:
    Lidar(const Config &lidarConf);
    void scan();
};