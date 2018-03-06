//
//  cluster.h
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef cluster_h
#define cluster_h

#include "cl/datasets/record.hpp"
#include "cl/utilities/container.h"
#include <vector>

namespace ClusLib {
class Cluster : public Container<boost::shared_ptr<Record>> {
  public:
    virtual ~Cluster() {}

    void set_id(Size id);
    Size get_id() const;

  protected:
    Size _id;
};

inline void Cluster::set_id(Size id) { _id = id; }

inline Size Cluster::get_id() const { return _id; }
} // namespace ClusLib

#endif /* cluster_h */
