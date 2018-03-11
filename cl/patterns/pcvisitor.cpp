//
// Created by zwpdbh on 11/03/2018.
//

#include "cl/patterns/joinvaluevisitor.hpp"
#include "cl/patterns/pcvisitor.hpp"
#include "cl/types.h"
#include <iostream>

namespace ClusLib {
CVisitor::CVisitor() {
    _cluster = boost::shared_ptr<Cluster>(new Cluster());
}

void CVisitor::visit(LeafNode& node) {
    _cluster->add(node.get_data());
}

void CVisitor::visit(InternalNode& node) {
    Integer n = node.num_children();
    for (Integer i = 0; i < n; i++) {
        node[i]->accept(*this);
    }
}

PCVisitor::PCVisitor(PClustering& pc, Size cutLevel)
    : _pc(pc), _cutLevel(cutLevel) {}

void PCVisitor::visit(LeafNode& node) {
    boost::shared_ptr<Cluster> c = boost::shared_ptr<Cluster>(new Cluster());
    c->add(node.get_data());
    _pc.add(c);
}

void PCVisitor::visit(InternalNode& node) {
    if (node.get_level() >= _cutLevel) {
        for (Size i = 0; i < node.num_children(); i++) {
            node[i]->accept(*this);
        }
    } else {
        CVisitor cv;
        node.accept(cv);
        _pc.add(cv.get_cluster());
    }
}

} // namespace ClusLib