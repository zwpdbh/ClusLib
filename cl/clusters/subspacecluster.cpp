//
//  subspacecluster.cpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#include "cl/clusters/subspacecluster.hpp"
namespace ClusLib {
    SubspaceCluster::SubspaceCluster (const boost::shared_ptr<Record>& center) : CenterCluster(center) {
        _w.resize(_center->size(), 1.0 / _center->size());
    }
    
    std::vector<Real>& SubspaceCluster::w() {
        return _w;
    }
    
    const std::vector<Real>& SubspaceCluster::w() const {
        return _w;
    }
    
    Real& SubspaceCluster::w(Size i) {
        ASSERT((i>=0) && (i < _w.size()), "index out of range");
        return _w[i];
    }
    
    const Real& SubspaceCluster::w(Size i) const {
        ASSERT((i>=0) && (i < _w.size()), "index out of range");
        return _w[i];
    }
}
