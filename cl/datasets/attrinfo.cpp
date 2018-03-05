//
// Created by zwpdbh on 25/02/2018.
//

#include "cl/datasets/attrinfo.hpp"
#include "cl/errors.hpp"

namespace ClusLib {
    AttrInfo::AttrInfo(const std::string &name, AttrType type): _name(name), _type(type) {}
    
    bool AttrInfo::equal_shallow(const AttrInfo& info) const {
        if (_name != info.name()) {
            return false;
        }
        
        if (_type != info.type()) {
            return false;
        }
        
        return true;
    }
    
    
    void AttrInfo::set_d_val(AttrValue&, Size) const {
        FAIL("can not be called");
    }
    
    Size AttrInfo::get_d_val(const AttrValue &) const {
        FAIL("can not be called");
        return 0;
    }
    
    void AttrInfo::set_c_val(AttrValue &, Real) const {
        FAIL("can not be called");
    }
    
    Real AttrInfo::get_c_val(const AttrValue &) const {
        FAIL("can not be called");
        return 0.0;
    }
    
    DAttrInfo& AttrInfo::cast_to_d() {
        FAIL("can not cast an AttrInfo to DAttrInfo");
        return *(DAttrInfo*)nullptr;
    }
    
    const DAttrInfo& AttrInfo::cast_to_d() const {
        FAIL("can not cast an AttrInfo to DAttrInfo");
        return *(DAttrInfo*)nullptr;
    }
    
    CAttrInfo& AttrInfo::cast_to_c() {
        FAIL("can not cast an AttrInfo to CAttrInfo");
        return *(CAttrInfo*) nullptr;
    }
    
    const CAttrInfo& AttrInfo::cast_to_c() const {
        FAIL("can not cast an AttrInfo to CAttrInfo");
        return *(CAttrInfo*) nullptr;
    }
}

