#include "../inc/stepper_controller.hpp"

StepperController::StepperController(int chipNum) {
    if (!init(chipNum))
        deinit();
}

StepperController::~StepperController() {
    deinit();
}

bool StepperController::initGPIO() {
    for (unsigned int i = 0, gpioNum = chipNum; i < gpioLength; i++, gpioNum++) {
        GPIO::Direction dir = i >= outputLength ? GPIO::IN : GPIO::OUT;
        if (!gpio[i].open(gpioNum, dir))
            return false;
    }
    return true;
}

void StepperController::deinitGPIO() {
    for (unsigned int i = 0; i < gpioLength; i++)
        gpio[i].close();

    chipNum = -1;
}

void StepperController::latchCmd() {
    gpio[latchOffset].write(0);
    gpio[latchOffset].write(1);
    gpio[latchOffset].write(0);
}

bool StepperController::init(int chipNum) {
    if (chipNum > 0)
        deinit();

    this->chipNum = chipNum;
    if (!initGPIO()) {
        deinitGPIO();
        return false;
    }
    isInit = true;
    return true;
}

void StepperController::deinit() {
    if (chipNum < 0)
        return;

    forceEnable(false);
    deinitGPIO();
    isInit = false;
}

bool StepperController::good() {
    return isInit;
}

void StepperController::home(Endstop dir) {
    gpio[cmdOffset].write(0);
    gpio[cmdOffset - 1].write(1);
    gpio[dirOffset].write(dir);
    latchCmd();
}

void StepperController::move(Endstop dir, uint8_t steps) {
    gpio[cmdOffset].write(1);
    gpio[cmdOffset - 1].write(0);
    gpio[dirOffset].write(dir);

    for (unsigned int i = 0; i < paramLength; i++)
        gpio[LSBParamOffset + i].write(steps & (1 << i));

    latchCmd();
}

void StepperController::forceEnable(bool val) {
    gpio[forceEnaOffset].write(val);
}

void StepperController::stop() {
    gpio[cmdOffset].write(0);
    gpio[cmdOffset - 1].write(0);
    latchCmd();
}

bool StepperController::busy() {
    return gpio[busyOffset].read();
}

bool StepperController::checkEndstop(Endstop endstop) {
    if (endstop == Endstop::ENDSTOP1)
        return !gpio[stop1Offset].read();
    else
        return !gpio[stop2Offset].read();
}