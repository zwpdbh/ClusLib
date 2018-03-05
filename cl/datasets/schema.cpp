//
//  schema.cpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#include "cl/datasets/schema.hpp"
#include "cl/errors.hpp"

namespace ClusLib {
    Schema* Schema::clone() const {
        Schema* ret = new Schema();
        for (Size i = 0; i < _data.size(); i++) {
            ret->add(boost::shared_ptr<AttrInfo>(_data[i]->clone()));
        }
        ret->labelInfo() = boost::shared_ptr<DAttrInfo>(_labelInfo->clone());
        ret->idInfo() = boost::shared_ptr<DAttrInfo>(_idInfo->clone());
        
        return ret;
    }
    
    bool Schema::is_labelled() const {
        if (_labelInfo) {
            return true;
        } else {
            return false;
        }
    }
    
    bool Schema::equal(const Schema& o) const {
        if (is_labelled() ^ o.is_labelled()) {
            return false;
        }
        if (is_labelled() && *_labelInfo != *(o.labelInfo())) {
            return false;
        }
        return equal_no_label(o);
    }
    
    bool Schema::equal_no_label(const Schema& o) const {
        if (_data.size() != o.size()) {
            return false;
        }
        
        for (Size i = 0; i<_data.size(); i++) {
            if (*(_data[i]) != *(o[i])) {
                return false;
            }
        }
        
        return true;
    }
    
    bool Schema::is_member(const ClusLib::AttrInfo &info) const {
        for (Size i = 0; i < _data.size(); i++) {
            if (*(_data[i]) == info) {
                return true;
            }
        }
        return false;
    }
    
}

