#include "cl/patterns/leafnode.hpp"

namespace ClusLib {
LeafNode::LeafNode(const boost::shared_ptr<Record> &r, Size id,
                   const boost::shared_ptr<Node> &p)
    : Node(p, id), _data(r) {}

void LeafNode::accept(NodeVisitor &v) { v.visit(*this); }
} // namespace ClusLib