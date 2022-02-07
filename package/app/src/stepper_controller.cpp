#include "../inc/stepper_controller.hpp"
#include <iostream>

StepperController::StepperController(unsigned int gpiochipNum) : chipNum(gpiochipNum)
{
    initGPIO();
}

StepperController::~StepperController()
{
    deinitGPIO();
}

void StepperController::initGPIO()
{
    std::cout << "Initializing stepper controller's GPIO..." << std::endl;

    std::string dir;
    for (unsigned int i = 0, gpioNum = chipNum; i < gpioLength; i++, gpioNum++)
    {
        GPIO::Direction dir = GPIO::IN;
        if (i < outputLength)
            dir = GPIO::OUT;

        if (!gpio[i].open(gpioNum, dir))
            throw;
    }

    std::cout << "Stepper's GPIO initialized!" << std::endl;
}

void StepperController::deinitGPIO()
{
    std::cout << "Uninitializing stepper controller's GPIO..." << std::endl;

    for (unsigned int i = 0; i < gpioLength; i++)
        gpio[i].close();

    std::cout << "Stepper's GPIO uninitialized!" << std::endl;
}

void StepperController::latchCmd()
{
    gpio[latchOffset].write(0);
    gpio[latchOffset].write(1);
    gpio[latchOffset].write(0);
}

void StepperController::home(Endstop dir)
{
    gpio[cmdOffset].write(0);
    gpio[cmdOffset - 1].write(1);
    gpio[dirOffset].write(dir);
    latchCmd();
}

void StepperController::move(Endstop dir, uint8_t steps)
{
    gpio[cmdOffset].write(1);
    gpio[cmdOffset - 1].write(0);
    gpio[dirOffset].write(dir);

    for (unsigned int i = 0; i < paramLength; i++)
    {
        gpio[LSBParamOffset + i].write(steps & (1 << i));
    }

    latchCmd();
}

void StepperController::forceEnable(bool val)
{
    gpio[forceEnaOffset].write(val);
}

void StepperController::stop()
{
    gpio[cmdOffset].write(0);
    gpio[cmdOffset - 1].write(0);
    latchCmd();
}

bool StepperController::busy()
{
    return gpio[busyOffset].read();
}

bool StepperController::checkEndstop(Endstop endstop)
{
    if (endstop == Endstop::ENDSTOP1)
        return !gpio[stop1Offset].read();
    else
        return !gpio[stop2Offset].read();
}