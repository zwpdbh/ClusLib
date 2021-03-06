#ifndef cluslib_minkowskidistance_hpp
#define cluslib_minkowskidistance_hpp

#include "cl/distances/distance.hpp"
#include "cl/errors.hpp"

namespace ClusLib {
class MinkowskiDistance : public Distance {
  public:
    MinkowskiDistance();
    MinkowskiDistance(Real p);
    Real operator()(const boost::shared_ptr<Record>&,
                    const boost::shared_ptr<Record>&) const;

  protected:
    Real _p;
};

inline MinkowskiDistance::MinkowskiDistance()
    : Distance("Minkowski distance"), _p(2.0) {}

inline MinkowskiDistance::MinkowskiDistance(Real p)
    : Distance("Minkowski distance"), _p(p) {
    ASSERT((_p >= -1), "invalide parameter");
}

} // namespace ClusLib

#endif // minkowskidistance
