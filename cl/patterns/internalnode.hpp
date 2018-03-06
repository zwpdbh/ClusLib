#ifndef CLUSLIB_INTERNALNODE_HPP
#define CLUSLIB_INTERNALNODE_HPP

#include "cl/patterns/node.hpp"
#include "cl/utilities/container.h"

namespace ClusLib {
class InternalNode : public Node, public Container<boost::shared_ptr<Node>> {
  public:
    InternalNode(Size                          id = 0,
                 const boost::shared_ptr<Node> p  = boost::shared_ptr<Node>());

    InternalNode(Real joinValue, Size id = 0,
                 const boost::shared_ptr<Node> p = boost::shared_ptr<Node>());

    void accept(NodeVisitor& v) override;
    Size num_children() const override;
    Size num_records() const override;
    Real get_joinValue();
    void set_joinValue(Real joinValue);

  private:
    /**a real number that represents a threshold value when two clusters are
     * merged or split*/
    Real _joinValue;
};

inline Size InternalNode::num_children() const { return _data.size(); }

inline Real InternalNode::get_joinValue() { return _joinValue; }

inline void InternalNode::set_joinValue(Real joinValue) {
    _joinValue = joinValue;
}

} // namespace ClusLib

#endif // !CLUSLIB_INTERNALNODE_HPP
