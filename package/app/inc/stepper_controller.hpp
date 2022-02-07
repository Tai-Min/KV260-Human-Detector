#pragma once

#include <cstdint>
#include <string>
#include "../inc/gpio.hpp"

class StepperController
{
private:
    ///@{
    /**
     * @brief Offsets to specific GPIOs starting from first used GPIO.
     */
    static const unsigned int paramLength = 8;                                   // Simple uint8 param.
    static const unsigned int LSBParamOffset = 0;                                // Offset 0.
    static const unsigned int MSBParamOffset = LSBParamOffset + paramLength - 1; // Offset 7.
    static const unsigned int dirOffset = MSBParamOffset + 1;                    // Offset 8.
    static const unsigned int cmdLength = 2;                                     // Command has two bits.
    static const unsigned int cmdOffset = dirOffset + cmdLength;                 // Offset 10.
    static const unsigned int latchOffset = cmdOffset + 1;                       // Offset 11.
    static const unsigned int forceEnaOffset = latchOffset + 1;                  // Offset 12
    static const unsigned int outputLength = forceEnaOffset + 1;                 // 13 outputs.

    static const unsigned int busyOffset = forceEnaOffset + 1;         // Offset 13.
    static const unsigned int stop1Offset = busyOffset + 1;            // Offset 14.
    static const unsigned int stop2Offset = stop1Offset + 1;           // Offset 15.
    static const unsigned int gpioLength = stop2Offset + 1;            // 16 GPIO.
    static const unsigned int inputLength = gpioLength - outputLength; // 3 inputs.
    ///@}

    const unsigned int chipNum; //!< /sys/class/gpio/gpiochip<chipNum> connected to AXI stepper controller. Also indicates first usable GPIO.

    GPIO gpio[gpioLength]; //!< GPIOs to control AXI stepper controller.

    /**
     * @brief Initialize every required GPIO.
     */
    void initGPIO();

    /**
     * @brief Deinitialize used GPIOs.
     */
    void deinitGPIO();

    /**
     * @brief Send latch signal to AXI stepper controller.
     */
    void latchCmd();

public:
    /**
     * @brief Specifies direction of cradle's movement. ENDSTOP1 - moves towards endstop 1 etc.
     */
    enum Endstop : bool
    {
        ENDSTOP1 = 0,
        ENDSTOP2 = 1
    };

    /**
     * @brief Construct a new Stepper Controller object and connect to AXI stepper controller.
     * @param chipNum /sys/class/gpio/gpiochip<chipNum> connected to AXI stepper controller.
     */
    StepperController(unsigned int chipNum);

    /**
     * @brief Destroy the Stepper Controller object and unexport used GPIOs.
     */
    ~StepperController();

    /**
     * @brief Send BASE command to PL controller. Does not wait for BASE command to complete.
     * @param dir Endstop to move towards to.
     */
    void home(Endstop dir);

    /**
     * @brief Send MOV command to PL controller. Does not wait for MOV command to complete.
     * @param dir Endstop to move towards to.
     * @param steps Number of steps to perform.
     */
    void move(Endstop dir, uint8_t steps);

    /**
     * @brief Force ENA pin to power on the motor even when there is no command being performed. Might heat up the motor if forced for too long!
     * @param val True - force enable, false - disabled when idle.
     */
    void forceEnable(bool val);

    /**
     * @brief Send NOP command to PL controller. Stops currently latched command.
     */
    void stop();

    /**
     * @brief Check whether PL controller has .
     * @return True if PL controller is idle.
     */
    bool busy();

    /**
     * @brief Read state of selected endstop.
     * @param endstop Endstop to check.
     * @return True if selected endstop pressed.
     */
    bool checkEndstop(Endstop endstop);
};