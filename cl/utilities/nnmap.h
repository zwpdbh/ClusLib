//
//  nnmap.h
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef nnmap_h
#define nnmap_h

#include "cl/types.h"
#include "cl/errors.hpp"
#include <map>
#include <algorithm>

namespace ClusLib {
    typedef std::pair<Size, Size> nnPair;

    class compare_a {
    public:
        bool operator() (const nnPair& a, const nnPair &b) const {
            Size amin = std::min(a.first, a.second);
            Size amax = std::max(a.first, a.second);
            Size bmin = std::min(b.first, b.second);
            Size bmax = std::max(b.first, b.second);

            if (amin < bmin) {
                return true;
            } else if (amin == bmin) {
                if (amax < bmax) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }; // end of class compare_a

    class comare_b {
    public: 
        bool operator() (const nnPair& a, const nnPair& b) const {
            if (a.first < b.first) {
                return true;
            } else if (a.first == b.first) {
                if (a.second < b.second) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }; // end of class compare_b
}


#endif /* nnmap_h */
