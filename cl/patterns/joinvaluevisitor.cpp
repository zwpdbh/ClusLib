//
// Created by zwpdbh on 11/03/2018.
//

#include "cl/errors.hpp"
#include "cl/patterns/joinvaluevisitor.hpp"
#include <algorithm>
#include <set>

namespace ClusLib {
void JoinValueVisitor::print(std::ostream& os) const {
    std::set<iirMapA::value_type, compare_iir>::const_iterator it;
    for (it = _joinValue.begin(); it != _joinValue.end(); it++) {
        os << (it->first).first + 1 << "," << (it->first).second + 1 << ","
           << it->second << "\n";
    }
}

std::ostream& operator<<(std::ostream& os, const JoinValueVisitor& jv) {
    jv.print(os);
    return os;
}

void JoinValueVisitor::visit(LeafNode& node) {}

void JoinValueVisitor::visit(InternalNode& node) {
    if (node.num_children() != 2) {
        FAIL("JoinValueVisitor only handles "
             << "node with 2 children");
    }

    _joinValue.insert(iirMapA::value_type(
        nnPair(node[0]->get_id(), node[1]->get_id()), node.get_joinValue()));

    node[0]->accept(*this);
    node[1]->accept(*this);
}

} // namespace ClusLib