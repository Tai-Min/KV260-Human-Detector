#pragma once
#include <vart/runner.hpp>
#include <xir/graph/graph.hpp>
class Detector {
   private:
    std::unique_ptr<xir::Graph> graph;
    std::unique_ptr<vart::Runner> runner;

    bool allGood = false;
    bool fstScan = true;

    int inputHeight;
    int inputWidth;
    float inputScaler;

    int outputHeight;
    int outputWidth;
    int outputScaler;

    float minProbability = 0;

    std::vector<int8_t> inputData;
    std::vector<int8_t> outputData;

    void fillInputData(const std::vector<float> &img, int imgWidth, int imgHeight);

    std::vector<float> convertOutputData(int imgWidth, int imgHeight);

   public:
    Detector() = default;

    Detector(const std::string &model, float minProbability);

    ~Detector();

    bool init(const std::string &model, float minProbability);

    void deinit();

    bool good();

    std::vector<float> run(const std::vector<float> &img, int imgWidth, int imgHeight);
};