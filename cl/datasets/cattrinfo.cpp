//
// Created by zwpdbh on 25/02/2018.
//

#include "cl/datasets/cattrinfo.hpp"
#include "cl/errors.hpp"
#include "cl/utilities/null.h"
#include <boost/variant/get.hpp>

namespace ClusLib {
CAttrInfo::CAttrInfo(const std::string& name) : AttrInfo(name, Continuous) {
    _min = Null<Real>();
    _max = Null<Real>();
}

bool CAttrInfo::equal(const AttrInfo& ai) const {
    if (!equal_shallow(ai)) {
        return false;
    }

    if (!ai.can_cast_to_c()) {
        return false;
    }

    return true;
}

/**create a copy of the underlying object by using the default copy constructor
 * of class*/
CAttrInfo* CAttrInfo::clone() const { return new CAttrInfo(*this); }

Real CAttrInfo::distance(const AttrValue& av1, const AttrValue& av2) const {
    if (is_unknown(av1) && is_unknown(av2)) {
        return 0.0;
    }
    /**operator ^ is the exclusive or operator, it is true if and only only one
     * operand is true*/
    if (is_unknown(av1) ^ is_unknown(av2)) {
        return 1.0;
    }

    return boost::get<Real>(av1._value) - boost::get<Real>(av2._value);
}

void CAttrInfo::set_c_val(AttrValue& av, Real value) const {
    av._value = value;
}

void CAttrInfo::set_unknown(AttrValue& av) const { av._value = Null<Real>(); }

bool CAttrInfo::is_unknown(const AttrValue& av) const {
    return (boost::get<Real>(av._value) == Null<Real>());
}

} // namespace ClusLib
