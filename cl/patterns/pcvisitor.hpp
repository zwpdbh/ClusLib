//
// Created by zwpdbh on 11/03/2018.
//

#ifndef CLUSLIB_PCVISITOR_HPP
#define CLUSLIB_PCVISITOR_HPP

#include "cl/clusters/pclustering.hpp"
#include "cl/patterns/internalnode.hpp"
#include "cl/patterns/leafnode.hpp"
#include "cl/patterns/nodevisitor.hpp"
#include "cl/types.h"

namespace ClusLib {
class CVisitor : public NodeVisitor {
  public:
    CVisitor();
    void                       visit(LeafNode& node);
    void                       visit(InternalNode& node);
    boost::shared_ptr<Cluster> get_cluster();

  private:
    boost::shared_ptr<Cluster> _cluster;
};

class PCVisitor : public NodeVisitor {
  public:
    PCVisitor(PClustering& pc, Size cutLevel);
    void visit(LeafNode& node);
    void visit(InternalNode& node);

  private:
    PClustering& _pc;
    Size         _cutLevel;
};

inline boost::shared_ptr<Cluster> CVisitor::get_cluster() {
    return _cluster;
}

} // namespace ClusLib

#endif // CLUSLIB_PCVISITOR_HPP
