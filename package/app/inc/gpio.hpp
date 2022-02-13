#pragma once

#include <fstream>
#include <memory>

struct GPIOUnaccessibleException : public std::exception {
   private:
    const std::string path;
    const int gpioNum;

   public:
    GPIOUnaccessibleException(const std::string& sysPath, int pin) : path(sysPath), gpioNum(pin) {}

    const char* what() const throw() {
        const std::string s = "[GPIO] There was a problem with accessing " + path + " (gpio" + std::to_string(gpioNum) + ")!";
        return "C++ Exception";
    }
};

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
     *
     * @param pin Pin of GPIO to open.
     * @param dir Direction of the GPIO.
     */
    void open(unsigned int pin, Direction dir);

    /**
     * @brief Close GPIO.
     */
    void close();

    /**
     * @brief Write value to the GPIO.
     * @param val Value to write.
     */
    void write(bool val);

    /**
     * @brief Read value of the GPIO.
     * @return Value.
     */
    bool read();
};