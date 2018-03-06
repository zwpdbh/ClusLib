#ifndef cluslib_leafnode_hpp
#define cluslib_leafnode_hpp

#include "cl/datasets/record.hpp"
#include "cl/patterns/node.hpp"

namespace ClusLib {
class LeafNode : public Node {
public:
  LeafNode(const boost::shared_ptr<Record> &r, Size id = 0,
           const boost::shared_ptr<Node> &p = boost::shared_ptr<Node>());

  void accept(NodeVisitor &v) override;
  Size num_children() const override;
  Size num_records() const override;
  boost::shared_ptr<Record> get_data();

private:
  boost::shared_ptr<Record> _data;
};

inline Size LeafNode::num_children() const { return 0; }

inline Size LeafNode::num_records() const { return 1; }

inline boost::shared_ptr<Record> LeafNode::get_data() { return _data; }

} // namespace ClusLib

#endif // cluslib_leafnode_hpp