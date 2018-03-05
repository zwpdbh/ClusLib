//
//  centercluster.hpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef centercluster_hpp
#define centercluster_hpp

#include "cl/clusters/cluster.h"
#include "cl/datasets/record.hpp"

namespace ClusLib {
    class CenterCluster: public Cluster {
    public:
        CenterCluster() {}
        CenterCluster(const boost::shared_ptr<Record>& center);
        
        const boost::shared_ptr<Record>& center() const;
        boost::shared_ptr<Record>& center();
        
    protected:
        boost::shared_ptr<Record> _center;
    };
}

#endif /* centercluster_hpp */
