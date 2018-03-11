#include "cl/distances/euclideandistance.hpp"

namespace ClusLib {
EuclideanDistance::EuclideanDistance() : MinkowskiDistance(2.0) {
    _name = "Euclidean_distance";
}

Real EuclideanDistance::operator()(const boost::shared_ptr<Record>& x,
                                   const boost::shared_ptr<Record>& y) const {
    return MinkowskiDistance::operator()(x, y);
}
} // namespace ClusLib