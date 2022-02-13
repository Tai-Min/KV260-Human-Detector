#include "../inc/gpio.hpp"

#include <iostream>

GPIO::GPIO(unsigned int pin, Direction dir) {
    open(pin, dir);
}

GPIO::~GPIO() {
    close();
}

void GPIO::open(unsigned int pin, Direction dir) {
    if (gpioNum >= 0)
        close();

    gpioNum = pin;

    std::string exportPath = "/sys/class/gpio/export";
    std::string dirPath = "/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/direction";
    valPath = "/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/value";

    // Export GPIO.
    std::ofstream exportStream(exportPath);
    if (!exportStream)
        throw GPIOUnaccessibleException(exportPath, gpioNum);
    exportStream << gpioNum;
    exportStream.close();

    // Set direction.
    std::ofstream dirStream(dirPath);
    if (!dirStream)
        throw GPIOUnaccessibleException(dirPath, gpioNum);
    dirStream << (dir == IN ? "in" : "out");
    dirStream.close();

    // Open value stream for use.
    gpio.open(valPath, dir == IN ? std::ios::in : std::ios::out);
    if (!gpio)
        throw GPIOUnaccessibleException(valPath, gpioNum);
}

void GPIO::close() {
    if (gpioNum < 0) return;

    std::ofstream unexportStream("/sys/class/gpio/unexport");
    if (!unexportStream) {
        std::cout << "[GPIO] There was a problem with accessing /sys/class/gpio/unexport (gpio" << gpioNum << "). Ignoring unexport." << std::endl;
        return;
    }

    unexportStream << gpioNum;
    gpio.close();
    gpioNum = -1;
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