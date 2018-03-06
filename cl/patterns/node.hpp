
#ifndef CLUSLIB_NODE_HPP
#define CLUSLIB_NODE_HPP

#include "cl/errors.hpp"
#include "cl/types.h"
#include "cl/patters/nodevisitor.hpp"
#include <boost/shared_ptr.hpp>

namespace ClusLib {
    class Node {
        public:
        virtual ~Node() {}

        Size get_id() const;
        void set_id(Size id);
        Size get_level() const;
        void set_level(Size level);
        
    };
}

#endif // !CLUSLIB_NODE_HPP
