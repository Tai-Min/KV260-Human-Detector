#pragma once

#include <fstream>

class GPIO
{
public:
    /**
     * @brief Specifies direction of the GPIO.
     */
    enum Direction
    {
        IN,
        OUT
    };

private:
    int gpioNum = -1;  //!< Index of managed GPIO.
    std::fstream gpio; //!< Stream to read / write GPIO.

public:
    /**
     * @brief Destroy the GPIO object and unexport managed GPIO.
     */
    ~GPIO();

    /**
     * @brief Open GPIO.
     *
     * @param pin GPIO pin.
     * @param dir Direction.
     * @return True on success.
     */
    bool open(unsigned int pin, Direction dir);

    /**
     * @brief Close managed GPIO.
     */
    void close();

    /**
     * @brief Write value to GPIO.
     *
     * @param val Value to write.
     */
    void write(bool val);

    /**
     * @brief Read GPIO.
     *
     * @return GPIO's state.
     */
    bool read();
};