#pragma once

#include <vart/runner.hpp>
#include <xir/graph/graph.hpp>

class Detector {
   private:
    std::vector<const xir::Subgraph*> dpuSubgraphs;
    std::vector<std::unique_ptr<vart::Runner>> runner;

    std::vector<const xir::Subgraph*> getDPUSubgraph(const std::unique_ptr<xir::Graph> &fullGraph);

   public:
    Detector() = default;

    Detector(const std::string &model);

    ~Detector();

    bool init(const std::string &model);

    void deinit();

    bool good();
};