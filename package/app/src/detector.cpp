#include "../inc/detector.hpp"
#include <algorithm>
#include <cmath>

class CpuFlatTensorBuffer : public vart::TensorBuffer {
   public:
    explicit CpuFlatTensorBuffer(void *data, const xir::Tensor *tensor)
        : TensorBuffer{tensor}, data_{data} {}

    virtual ~CpuFlatTensorBuffer() = default;

   public:
    virtual std::pair<uint64_t, size_t> data(const std::vector<int> idx = {}) override {
        uint32_t size = std::ceil(tensor_->get_data_type().bit_width / 8.f);

        if (idx.size() == 0) {
            return {reinterpret_cast<uint64_t>(data_),
                    tensor_->get_element_num() * size};
        }

        auto dims = tensor_->get_shape();
        auto offset = 0;

        for (auto k = 0; k < tensor_->get_shape().size(); k++) {
            auto stride = 1;
            for (auto m = k + 1; m < tensor_->get_shape().size(); m++) {
                stride *= dims[m];
            }
            offset += idx[k] * stride;
        }

        auto elem_num = tensor_->get_element_num();

        return {reinterpret_cast<uint64_t>(data_) + offset * size, (elem_num - offset) * size};
    }

   private:
    void *data_;
};

Detector::Detector(const std::string &model, float minProbability) {
    if (!init(model, minProbability))
        deinit();
}

Detector::~Detector() {
    deinit();
}

void Detector::fillInputData(const std::vector<float> &img, int imgWidth, int imgHeight) {
    int heightDiff = inputHeight - imgHeight;
    int heightStart = heightDiff / 2;
    int heightStop = inputHeight - heightStart;

    int widthDiff = inputWidth - imgWidth;
    int widthStart = widthDiff / 2;
    int widthStop = inputWidth - widthStart;

    int bufCntr = 0;

    // If height of image is bigger than network input's height
    // then skip some rows from the start cutting height a bit.
    if (heightStart < 0)
        bufCntr += -heightStart * imgWidth;

    for (int y = 0; y < inputHeight; y++) {
        // If width of image is bigger than network input's wight
        // then skip some pixels from the start cutting width a bit
        // but only if y coord is within range of writable pixels.
        if (widthStart < 0 && y >= heightStart && y < heightStop)
            bufCntr += -widthStart;

        for (int x = 0; x < inputWidth; x++) {
            if (x >= widthStart && x < widthStop && y >= heightStart && y < heightStop) {
                inputData[inputWidth * y + x] = (int8_t)((float)img[bufCntr++] * inputScaler);
            } else {
                inputData[inputWidth * y + x] = 0;
            }
        }

        // If width of image is bigger than network input's wight
        // then skip some pixels from the end cutting width a bit
        // but only if y coord is within range of writable pixels.
        if (widthStart < 0 && y >= heightStart && y < heightStop)
            bufCntr += -widthStart;
    }
}

std::vector<float> Detector::convertOutputData(int imgWidth, int imgHeight) {
    std::vector<float> res;
    res.resize(imgWidth * imgHeight);

    int heightDiff = inputHeight - imgHeight;
    int heightStart = heightDiff / 2;
    int heightStop = inputHeight - heightStart;

    int widthDiff = inputWidth - imgWidth;
    int widthStart = widthDiff / 2;
    int widthStop = inputWidth - widthStart;

    int bufCntr = 0;

    // If height of image is bigger than network input's height
    // then skip some rows from the start cutting height a bit.
    if (heightStart < 0)
        bufCntr += -heightStart * imgWidth;

    for (int y = 0; y < inputHeight; y++) {
        // If width of image is bigger than network input's wight
        // then skip some pixels from the start cutting width a bit
        // but only if y coord is within range of writable pixels.
        if (widthStart < 0 && y >= heightStart && y < heightStop)
            bufCntr += -widthStart;

        for (int x = 0; x < inputWidth; x++) {
            if (x >= widthStart && x < widthStop && y >= heightStart && y < heightStop) {
                res[bufCntr++] = (float)inputData[inputWidth * y + x] * outputScaler;
            }
        }

        // If width of image is bigger than network input's wight
        // then skip some pixels from the end cutting width a bit
        // but only if y coord is within range of writable pixels.
        if (widthStart < 0 && y >= heightStart && y < heightStop)
            bufCntr += -widthStart;
    }

    float maxEl = *std::max_element(res.begin(), res.end());

    for (float &v : res) {
        if (maxEl > 0)
            v = v / maxEl;

        if (maxEl <= 0 || v < minProbability || v < 0)
            v = 0;
    }

    return res;
}

bool Detector::init(const std::string &model, float minProbability) {
    this->minProbability = minProbability;

    graph = xir::Graph::deserialize(model);
    xir::Subgraph *root = graph->get_root_subgraph();
    std::vector<xir::Subgraph *> children = root->children_topological_sort();

    for (auto child : children) {
        std::string device = child->get_attr<std::string>("device");

        if (device != "USER" && device != "CPU") {
            runner = vart::Runner::create_runner(child, "run");

            std::cout << "Subgraph: " << child->get_name() << ", device: " << device << std::endl;
            auto inTensors = child->get_input_tensors();
            for (auto inTensor : inTensors) {
                auto shape = inTensor->get_shape();
                inputHeight = shape[1];
                inputWidth = shape[2];
                inputScaler = std::exp2f(1.0f * (float)inTensor->get_attr<int>("fix_point"));
                inputData.resize(shape[0] * shape[1] * shape[2] * shape[3]);

                std::cout << "Input: " << inTensor->to_string() << std::endl;
            }
            auto outTensors = child->get_output_tensors();
            for (auto outTensor : outTensors) {
                auto shape = outTensor->get_shape();
                outputHeight = shape[1];
                outputWidth = shape[2];
                outputScaler = std::exp2f(-1.0f * (float)outTensor->get_attr<int>("fix_point"));
                outputData.resize(shape[0] * shape[1] * shape[2] * shape[3]);

                std::cout << "Output: " << outTensor->to_string() << std::endl;
            }

            break;
        }
    }

    allGood = true;
    return true;
}

void Detector::deinit() {
}

bool Detector::good() {
    return allGood;
}

std::vector<float> Detector::run(const std::vector<float> &img, int imgWidth, int imgHeight) {
    fillInputData(img, imgWidth, imgHeight);

    std::vector<std::unique_ptr<vart::TensorBuffer>> inputs, outputs;
    std::vector<vart::TensorBuffer *> inputsPtr, outputsPtr;

    std::unique_ptr<xir::Tensor> inputTensor = xir::Tensor::create(runner->get_input_tensors()[0]->get_name(),
                                                                   runner->get_input_tensors()[0]->get_shape(),
                                                                   xir::DataType{xir::DataType::XINT, 8});

    std::unique_ptr<xir::Tensor> outputTensor = xir::Tensor::create(runner->get_output_tensors()[0]->get_name(),
                                                                    runner->get_output_tensors()[0]->get_shape(),
                                                                    xir::DataType{xir::DataType::XINT, 8});

    inputs.push_back(std::make_unique<CpuFlatTensorBuffer>(inputData.data(), inputTensor.get()));
    inputsPtr.push_back(inputs[0].get());

    outputs.push_back(std::make_unique<CpuFlatTensorBuffer>(outputData.data(), outputTensor.get()));
    outputsPtr.push_back(outputs[0].get());

    auto jobId = runner->execute_async(inputsPtr, outputsPtr);
    runner->wait(-1, -1);

    return convertOutputData(imgWidth, imgHeight);
}