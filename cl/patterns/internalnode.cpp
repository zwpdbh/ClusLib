#include "cl/patterns/internalnode.hpp"

namespace ClusLib {
InternalNode::InternalNode(Size id, const boost::shared_ptr<Node> p)
    : Node(p, id) {}

InternalNode::InternalNode(Real joinValue, Size id,
                           const boost::shared_ptr<Node> p)
    : Node(p, id), _joinValue(joinValue) {}

void InternalNode::accept(NodeVisitor& v) {
    v.visit(*this);
}

Size InternalNode::num_records() const {
    Size nSum = 0;
    for (Size i = 0; i < _data.size(); i++) {
        nSum += _data[i]->num_children();
    }

    return nSum;
}

} // namespace ClusLib