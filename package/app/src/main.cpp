#include "../inc/stepper_controller.hpp"
#include <iostream>
#include <string>
#include <chrono>
#include <thread>

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        std::cout << "Usage: ./app <gpio chip number>" << std::endl;
        return -1;
    }

    unsigned int chipNumber = std::stoi(argv[1]);

    std::cout << "Using gpiochip" << argv[1] << " for stepper control!" << std::endl;

    StepperController stepper(chipNumber);

    for(int i = 0; i < 40; i++){
        std::cout << stepper.checkEndstop(StepperController::ENDSTOP1) << std::endl;
        std::chrono::milliseconds timespan(100);
        std::this_thread::sleep_for(timespan);
    }

    return 0;
}
