//
//  centercluster.cpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#include "centercluster.hpp"

namespace ClusLib {
    /**constructor: we should create a new object of Record as the center when we create a new object of CenterCluster.
     * If we just use the shared pointer pointing to a record in a dataset as the center,
     * the record will be changed when we update the center during clustering.*/
    CenterCluster::CenterCluster(const boost::shared_ptr<Record>& center) : _center(center) {}
    
    const boost::shared_ptr<Record>& CenterCluster::center() const {
        return _center;
    }
    
    boost::shared_ptr<Record>& CenterCluster::center() {
        return _center;
    }
}
