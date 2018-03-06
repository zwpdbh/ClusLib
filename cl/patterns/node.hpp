
#ifndef CLUSLIB_NODE_HPP
#define CLUSLIB_NODE_HPP

#include "cl/errors.hpp"
#include "cl/patterns/nodevisitor.hpp"
#include "cl/types.h"
#include <boost/shared_ptr.hpp>

namespace ClusLib {
class Node {
  public:
    virtual ~Node() {}

    Size                    get_id() const;
    void                    set_id(Size id);
    Size                    get_level() const;
    void                    set_level(Size level);
    boost::shared_ptr<Node> get_parent();
    void                    set_parent(const boost::shared_ptr<Node>& p);

    virtual void accept(NodeVisitor& v) = 0;

    /**returns the number of children contained in the node*/
    virtual Size num_children() const = 0;

    /**returns the number of records contained in the node and all its
     * descendants*/
    virtual Size num_records() const = 0;

  protected:
    Node(boost::shared_ptr<Node> p, Size id) : _parent(p), _id(id) {}

    /**holds a shared pointer pointing to the parent of the node*/
    boost::shared_ptr<Node> _parent;

    /**is the identifier of the node*/
    Size _id;

    /**holds the level of the node in the hierarchical tree with levels, all
     * leaf nodes have a level of zero and internal nodes have positive levels*/
    Size _level;
};

inline Size                    Node::get_id() const { return _id; }
inline void                    Node::set_id(Size id) { _id = id; }
inline Size                    Node::get_level() const { return _level; }
inline void                    Node::set_level(Size level) { _level = level; }
inline boost::shared_ptr<Node> Node::get_parent() { return _parent; }
inline void Node::set_parent(const boost::shared_ptr<Node>& p) { _parent = p; }

} // namespace ClusLib

#endif // !CLUSLIB_NODE_HPP
