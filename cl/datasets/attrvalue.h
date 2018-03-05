//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_ATTRVALUE_H
#define DATA_CLUSTERING_ATTRVALUE_H

#include <boost/variant.hpp>
#include "cl/types.h"
#include "cl/utilities/null.h"

namespace ClusLib {
    /**This class can store discrete value or continuous value*/
    class AttrValue {
    private:
        /**attri value_type _value is defined to be: boost::variant<Real, Size>*/
        value_type _value;
        
    public:
        friend class DAttrInfo;
        friend class CAttrInfo;
        AttrValue();
    };
    
    /**Inline constructor*/
    inline AttrValue::AttrValue(): _value(Null<Size>()) {}
}

#endif //DATA_CLUSTERING_ATTRVALUE_H

