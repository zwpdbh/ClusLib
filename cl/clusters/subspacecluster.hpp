//
//  subspacecluster.hpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef subspacecluster_hpp
#define subspacecluster_hpp

#include "cl/clusters/centercluster.hpp"
#include <vector>

namespace ClusLib {
    /**multi-center cluster*/
    class SubspaceCluster: public CenterCluster {
    public:
        SubspaceCluster (const boost::shared_ptr<Record>& center);
        
        std::vector<Real>& w();
        const std::vector<Real>& w() const;
        
        Real& w(Size i);
        const Real& w(Size i) const;
        
    protected:
        /**represent the relative importance of attributes for the formation of the cluster.*/
        std::vector<Real> _w;
    };
}

#endif /* subspacecluster_hpp */
