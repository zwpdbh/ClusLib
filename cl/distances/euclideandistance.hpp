#ifndef CLUSLIB_euclideandistance_HPP
#define CLUSLIB_euclideandistance_HPP

#include "cl/distances/minkowskidistance.hpp"

namespace ClusLib {
class EuclideanDistance : public MinkowskiDistance {
  public:
    EuclideanDistance();
    Real operator()(const boost::shared_ptr<Record>&,
                    const boost::shared_ptr<Record>&) const;
};
} // namespace ClusLib

#endif // !CLUSLIB_euclideandistance_HPP