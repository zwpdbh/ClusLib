//
// Created by zwpdbh on 11/03/2018.
//

#ifndef CLUSLIB_JOINVALUEVISITOR_HPP
#define CLUSLIB_JOINVALUEVISITOR_HPP

#include "cl/patterns/internalnode.hpp"
#include "cl/patterns/leafnode.hpp"
#include "cl/patterns/nodevisitor.hpp"
#include "cl/utilities/nnmap.h"
#include <iostream>
#include <set>

namespace ClusLib {
class JoinValueVisitor : public NodeVisitor {
  public:
    friend std::ostream& operator<<(std::ostream&           os,
                                    const JoinValueVisitor& jv);
    void                 visit(LeafNode& node);
    void                 visit(InternalNode& node);
    const std::set<iirMapA::value_type, compare_iir>& get_joinValue() const;

  private:
    void                                       print(std::ostream& os) const;
    std::set<iirMapA::value_type, compare_iir> _joinValue;
};

inline const std::set<iirMapA::value_type, compare_iir>&
JoinValueVisitor::get_joinValue() const {
    return _joinValue;
}
} // namespace ClusLib

#endif // CLUSLIB_JOINVALUEVISITOR_HPP
