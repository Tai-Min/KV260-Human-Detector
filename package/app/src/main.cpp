#include "../inc/lidar.hpp"
#include <iostream>

int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        std::cout << "Usage: ./app <gpio chip number> <lidar usb port>" << std::endl;
        return -1;
    }

    unsigned int chipNum = std::stoi(argv[1]);

    std::cout << "Using gpiochip" << chipNum << " for stepper control!" << std::endl;

    Lidar::Config conf;
    conf.stepperChipNum = chipNum;
    Lidar lidar(conf);

    for(int i = 0; i < 40; i++){
        lidar.scan();
        std::cout << "Scan done!" << std::endl;
    }

    return 0;
}
