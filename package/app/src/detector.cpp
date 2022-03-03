#include "../inc/detector.hpp"

Detector::Detector(const std::string &model) {
    if (!init(model))
        deinit();
}

Detector::~Detector() {
}

std::vector<const xir::Subgraph *> Detector::getDPUSubgraph(const std::unique_ptr<xir::Graph> &fullGraph) {
    auto root = fullGraph->get_root_subgraph();
    auto children = root->children_topological_sort();
    auto ret = std::vector<const xir::Subgraph *>();

    for (auto c : children) {
        std::cout << "Has device? " << c->has_attr("device") << std::endl;
        auto device = c->get_attr<std::string>("device");
        std::cout << device << std::endl;
        if (device == "DPU") {
            ret.emplace_back(c);
        }
    }

    return ret;
}

bool Detector::init(const std::string &model) {
    //std::cout << model << std::endl;
    //xir::Graph::deserialize(model);
    //dpuSubgraphs = getDPUSubgraph(graph);
    //std::cout << dpuSubgraphs.size() << std::endl;
    // runner = vart::Runner::create_runner(0, "run");

    return true;
}

void Detector::deinit() {
}

bool Detector::good() {
}