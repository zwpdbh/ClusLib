//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_NULL_H
#define DATA_CLUSTERING_NULL_H

#include "cl/types.h"

namespace ClusLib {
    template <class Type>
    class Null;
    
    template <>
    class Null<Integer > {
    public:
        Null() {}
        operator Integer() const {
            return Integer(NULL_INTEGER);
        }
    };
    
    template <>
    class Null<Size> {
    public:
        Null() {}
        operator Size() const {
            return Size(NULL_SIZE);
        }
    };
    
    template <>
    class Null<Real> {
    public:
        Null() {}
        operator Real() const {
            return Real(NULL_REAL);
        }
    };
}

#endif //DATA_CLUSTERING_NULL_H

