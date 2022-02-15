#include "../inc/gpio.hpp"

#include <iostream>

GPIO::GPIO(unsigned int pin, Direction dir) {
    if (!open(pin, dir))
        close();
}

GPIO::~GPIO() {
    close();
}

bool GPIO::open(unsigned int pin, Direction dir) {
    if (gpioNum >= 0)
        close();

    gpioNum = pin;

    std::string exportPath = "/sys/class/gpio/export";
    std::string dirPath = "/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/direction";
    valPath = "/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/value";

    // Export GPIO.
    std::ofstream exportStream(exportPath);
    if (!exportStream)
        return false;
    exportStream << gpioNum;
    exportStream.close();

    // Set direction.
    std::ofstream dirStream(dirPath);
    if (!dirStream)
        return false;
    dirStream << (dir == IN ? "in" : "out");
    dirStream.close();

    // Open value stream for use.
    gpio.open(valPath, dir == IN ? std::ios::in : std::ios::out);
    if (!gpio)
        return false;

    isOpen = true;
    return true;
}

void GPIO::close() {
    if (gpioNum < 0)
        return;

    isOpen = false;

    gpio.close();

    std::ofstream unexportStream("/sys/class/gpio/unexport");
    if (!unexportStream)
        return;
    unexportStream << gpioNum;

    gpioNum = -1;
}

bool GPIO::good() {
    return isOpen;
}

void GPIO::write(bool val) {
    if (!gpio)
        throw GPIOUnaccessibleException(valPath, gpioNum);

    gpio << val;
    gpio.flush();
}

bool GPIO::read() {
    if (!gpio)
        throw GPIOUnaccessibleException(valPath, gpioNum);

    gpio.seekg(std::ios_base::beg);
    bool res;
    gpio >> res;

    return res;
}