//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_CLDEFINES_H
#define DATA_CLUSTERING_CLDEFINES_H


#include <boost/config.hpp>
#include <boost/version.hpp>
#include <limits>


#define CL_VERSION "1.0.0"
#define CL_LIB_VERSION "1.0.0"

#if defined(HAVE_CONFIG_H)
#include "cl/config.h"
#endif

#define INTEGER int
#define BIGINTEGER long
#define REAL double

#define MIN_INTEGER std::numeric_limits<INTEGER>::min()
#define MAX_INTEGER std::numeric_limits<INTEGER>::max()

#define MIN_REAL -std::numeric_limits<REAL>::max()
#define MAX_REAL std::numeric_limits<REAL>::max()

#define MIN_POSITIVE_REAL std::numeric_limits<REAL>::min()

#define EPSILON std::numeric_limits<REAL>::epsilon()

#define NULL_INTEGER std::numeric_limits<INTEGER>::max()
#define NULL_SIZE std::numeric_limits<unsigned INTEGER>::max()
#define NULL_REAL std::numeric_limits<REAL>::max()

#endif //DATA_CLUSTERING_CLDEFINES_H

