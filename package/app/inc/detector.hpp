#pragma once
#include <vart/runner.hpp>
#include <xir/graph/graph.hpp>
class Detector {
   private:
    std::unique_ptr<xir::Graph> graph;     //!< U-Net trained for human detection.
    std::unique_ptr<vart::Runner> runner;  //!< DPU runner.

    bool allGood = false;  //!< Whether network init was successful.

    int inputHeight;    //!< Width of input to network.
    int inputWidth;     //!< Height of input to network.
    float inputScaler;  //!< Scaler value from int8 to float.

    int outputHeight;  //!< Width of output from network.
    int outputWidth;   //!< Height of output from network.
    int outputScaler;  //!< Scaler value from int8 to float.

    float minProbability = 0;  //!< Probability (0 - 1) above which, the pixel will be treated as human detection.

    std::vector<int8_t> inputData;   //!< Input to network buffer.
    std::vector<int8_t> outputData;  //!< Output from network buffer.

    /**
     * @brief Fill input buffer with given image data.
     * If image is bigger than the buffer, then it will be centered and non fitting edges cut.
     * If image is smaller than the buffer, it will be centered and edges will be filled with 0's.
     * @param img Image buffer.
     * @param imgWidth Width of the image.
     * @param imgHeight Height of the image.
     */
    void fillInputData(const std::vector<float> &img, int imgWidth, int imgHeight);

    /**
     * @brief Convert network's result info float buffer of the same size as the input image's.
     * If result is bigger / smaller then same rules apply as in fillInputData.
     * @param imgWidth
     * @param imgHeight
     * @return std::vector<float>
     */
    std::vector<float> convertOutputData(int imgWidth, int imgHeight);

   public:
    /**
     * @brief Construct a new Detector object without initializing it.
     */
    Detector() = default;

    /**
     * @brief Construct a new Detector object and initialize network and DPU.
     *
     * @param model Path to .xmodel file.
     * @param minProbability Probability above which the output pixel will be considered as human detection.
     */
    Detector(const std::string &model, float minProbability);

    /**
     * @brief Destroy the Detector object.
     */
    ~Detector();

    /**
     * @brief Initialize network and DPU.
     * @param model Path to .xmodel file.
     * @param minProbability Probability above which the output pixel will be considered as human detection.
     * @return True on success.
     */
    bool init(const std::string &model, float minProbability);

    /**
     * @brief Deinitialize object.
     */
    void deinit();

    /**
     * @brief Whether network is initialized.
     * @return True if yes.
     */
    bool good();

    /**
     * @brief Perform inference.
     * @param img Input buffer.
     * @param imgWidth Buffer's width.
     * @param imgHeight Buffer's height.
     * @return Binary segmentation data.
     */
    std::vector<float> run(const std::vector<float> &img, int imgWidth, int imgHeight);
};