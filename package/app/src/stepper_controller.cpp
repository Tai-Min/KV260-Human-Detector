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

void StepperController::latchCmd(bool &err) {
    gpio[latchOffset].write(0, err);
    gpio[latchOffset].write(1, err);
    gpio[latchOffset].write(0, err);
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

    bool err;
    forceEnable(false, err);
    deinitGPIO();
    isInit = false;
}

bool StepperController::good() {
    return isInit;
}

void StepperController::home(Endstop dir, bool &err) {
    gpio[cmdOffset].write(0, err);
    if (err) return;
    gpio[cmdOffset - 1].write(1, err);
    if (err) return;
    gpio[dirOffset].write(dir, err);
    if (err) return;
    latchCmd(err);
}

void StepperController::move(Endstop dir, uint8_t steps, bool &err) {
    gpio[cmdOffset].write(1, err);
    if (err) return;
    gpio[cmdOffset - 1].write(0, err);
    if (err) return;
    gpio[dirOffset].write(dir, err);
    if (err) return;

    for (unsigned int i = 0; i < paramLength; i++) {
        gpio[LSBParamOffset + i].write(steps & (1 << i), err);
        if (err) return;
    }

    latchCmd(err);
}

void StepperController::forceEnable(bool val, bool &err) {
    gpio[forceEnaOffset].write(val, err);
}

void StepperController::stop(bool &err) {
    gpio[cmdOffset].write(0, err);
    if (err) return;
    gpio[cmdOffset - 1].write(0, err);
    if (err) return;
    latchCmd(err);
}

bool StepperController::busy(bool &err) {
    return gpio[busyOffset].read(err);
}

bool StepperController::checkEndstop(Endstop endstop, bool &err) {
    if (endstop == Endstop::ENDSTOP1)
        return !gpio[stop1Offset].read(err);
    else
        return !gpio[stop2Offset].read(err);
}