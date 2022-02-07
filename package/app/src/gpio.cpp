#include "../inc/gpio.hpp"
#include <iostream>

GPIO::~GPIO()
{
    if (gpioNum > -1)
        close();
}

bool GPIO::open(unsigned int pin, Direction dir)
{
    gpioNum = pin;

    // Export GPIO.
    std::ofstream exportStream("/sys/class/gpio/export");
    if (!exportStream)
    {
        std::cout << "There was a problem with accessing /sys/class/gpio/export for gpio" << gpioNum << "." << std::endl;
        gpioNum = -1;
        return false;
    }
    exportStream << gpioNum;
    exportStream.close();

    std::string dirStr = "out";
    if (dir == IN)
        dirStr = "in";

    // Set direction.
    std::ofstream dirStream("/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/direction");
    if (!dirStream)
    {
        std::cout << "There was a problem with accessing /direction for gpio" << gpioNum << "." << std::endl;
        gpioNum = -1;
        return false;
    }
    dirStream << dirStr;
    dirStream.close();

    // Get stream to read / write value.
    if (dir == IN)
        gpio.open("/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/value", std::ios::in);
    else
        gpio.open("/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/value", std::ios::out);

    if (!gpio)
    {
        std::cout << "There was a problem with accessing /value for gpio" << gpioNum << "." << std::endl;
        gpioNum = -1;
        return false;
    }
    return true;
}

void GPIO::close()
{
    std::ofstream unexportStream("/sys/class/gpio/unexport");
    if (!unexportStream)
    {
        std::cout << "There was a problem with accessing /sys/class/gpio/unexport for gpio" << gpioNum << "." << std::endl;
    }
    unexportStream << gpioNum;
    gpioNum = -1;
}

void GPIO::write(bool val)
{
    if (!gpio)
    {
        std::cout << "Failed to write gpio" << gpioNum << "!" << std::endl;
        throw;
    }

    gpio << val;
    gpio.close();
    gpio.open("/sys/class/gpio/gpio" + std::to_string(gpioNum) + "/value");
}

bool GPIO::read()
{
    if (!gpio)
    {
        std::cout << "Failed to read gpio" << gpioNum << "!" << std::endl;
        throw;
    }

    gpio.seekg(std::ios_base::beg);
    bool res;
    gpio >> res;
    return res;
}