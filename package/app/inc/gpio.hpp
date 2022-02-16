#pragma once

#include <fstream>
#include <memory>

class GPIO {
   public:
    /**
     * @brief Specifies direction of the GPIO.
     */
    enum Direction {
        IN,
        OUT
    };

   private:
    int gpioNum = -1;     //!< Pin of managed GPIO.
    bool isOpen = false;  //!< Whether the GPIO is open and ready.
    std::string valPath;  //!< Path to <gpio>/value.
    std::fstream gpio;    //!< Stream to read / write GPIO.

    // No copy due to stream.
    GPIO(GPIO&);
    GPIO& operator=(const GPIO&);

   public:
    GPIO() = default;

    /**
     * @brief Construct a new GPIO object and open given GPIO.
     * @param pin Pin of GPIO to open.
     * @param dir Direction of the GPIO.
     */
    GPIO(unsigned int pin, Direction dir);

    /**
     * @brief Destroy the GPIO object and close GPIO if open.
     */
    ~GPIO();

    /**
     * @brief Open GPIO.
     * @param pin Pin of GPIO to open.
     * @param dir Direction of the GPIO.
     * @return True if opened.
     */
    bool open(unsigned int pin, Direction dir);

    /**
     * @brief Close GPIO.
     */
    void close();

    /**
     * @brief Check whether GPIO is open.
     * @return True if GPIO can be accessed.
     */
    bool good();

    /**
     * @brief Write value to the GPIO.
     * @param val Value to write.
     * @param err Set to true if GPIO couldn't be read.
     */
    void write(bool val, bool& err);

    /**
     * @brief Read value of the GPIO.
     * @param err Set to true if GPIO couldn't be read.
     * @return Value.
     */
    bool read(bool& err);
};