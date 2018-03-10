#include "cl/datasets/record.hpp"
#include "cl/distance/minkowskidistance.hpp"
#include <cmath>

namespace ClusLib {
Real MinkowskiDistance::operator()(const boost::shared_ptr<Record>& x,
                                   const boost::shared_ptr<Record>& y) const {
    boost::shared_ptr<Schema> schema = x->schema();
    ASSERT(*schema == *(y->schema()), "schema does not match");

    Real temp = 0.0;
    for (Size i = 0; i < schema->size(); i++) {
        temp +=
            std::pow(std::fabs((*schema)[i]->distance((*x)[i], (*y)[i]), _p));
    }

    return std::pow(temp, 1 / _p);
}
} // namespace ClusLib