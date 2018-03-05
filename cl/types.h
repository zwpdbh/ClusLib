#ifndef TYPES_H
#define TYPES_H


#include "cl/cldefines.h"
#include <cstddef>
#include <boost/variant.hpp>

namespace ClusLib {
    typedef INTEGER Integer;
    typedef BIGINTEGER BigInteger;
    typedef unsigned INTEGER Natural;
    typedef unsigned BIGINTEGER BigNatural;
    typedef REAL Real;
    typedef std::size_t Size;
    typedef boost::variant<Real, Size> value_type;
}

#endif // TYPES_H

