//
//  hclustering.hpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef hclustering_hpp
#define hclustering_hpp

#include "cl/clusters/pclustering.hpp"
#include "cl/patterns/internalnode.hpp"
#include "cl/patterns/leafnode.hpp"
#include "cl/patterns/node.hpp"
#include "cl/utilities/dendrogram.hpp"

namespace ClusLib {
class HClustering {
  public:
    HClustering() {}
    HClustering(const boost::shared_ptr<Node>& root);
    boost::shared_ptr<Node>        joinWith(HClustering& hc, Real joinValue);
    const boost::shared_ptr<Node>& root() const;

    boost::shared_ptr<Node>& root();
    PClustering              get_pc(Size maxclust) const;
    void save(const std::string& filename, Size p = 100) const;

  private:
    boost::shared_ptr<Node> _root;
};

inline const boost::shared_ptr<Node>& HClustering::root() const {
    return _root;
}

inline boost::shared_ptr<Node>& HClustering::root() {
    return _root;
}

} // namespace ClusLib

#endif /* hclustering_hpp */
