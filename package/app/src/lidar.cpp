#include "../inc/lidar.hpp"

#include <chrono>
#include <thread>

Lidar::Lidar(const Config &lidarConf) : conf(lidarConf), stepper(conf.stepperChipNum)
{
}

void Lidar::scan()
{
    std::chrono::milliseconds timespanHome(50);
    stepper.home(currDirection);
    std::this_thread::sleep_for(timespanHome);
    while (stepper.busy())
        std::this_thread::sleep_for(timespanHome);

    if (currDirection == StepperController::ENDSTOP1)
        currDirection = StepperController::ENDSTOP2;
    else
        currDirection = StepperController::ENDSTOP1;

    std::chrono::milliseconds timespanScan(110);
    for (unsigned int i = 0; i < conf.stepsPerScan; i += conf.stepsPerLidarRevolution)
    {

        std::this_thread::sleep_for(timespanScan);
        stepper.move(currDirection, conf.stepsPerLidarRevolution);
        std::this_thread::sleep_for(timespanHome);
        while (stepper.busy())
            std::this_thread::sleep_for(timespanHome);
    }
}