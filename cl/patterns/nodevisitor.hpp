#ifndef CLUSTER_NODEVISITOR_HPP
#define CLUSTER_NODEVISITOR_HPP

#include <boost/shared_ptr.hpp>
#include <cl/types.h>

namespace ClusLib {
    class LeafNode;
    class InternalNode;
    
    class NodeVisitor {
        public:
        virtual void visit(LeafNode& node) = 0;
        virtual void visit(InternalNode& node) = 0;
    };
}

#endif // CLUSTER_NODEVISITOR_HPP