//
// Created by zwpdbh on 25/02/2018.
//

#include "cl/datasets/dattrinfo.hpp"
#include "cl/errors.hpp"

namespace ClusLib {
    
    DAttrInfo::DAttrInfo(const std::string &name) : AttrInfo(name, Discrete) {
        
    }
    
    Size DAttrInfo::num_value() const {
        return _values.size();
    }
    
    const std::string &DAttrInfo::int_to_str(Size i) const {
        ASSERT((i >= 0) && (i < _values.size()), "index out of range");
        return _values[i];
    }
    
    Size DAttrInfo::str_to_int(const std::string &s) const {
        for (Size i = 0; i < _values.size(); i++) {
            if (_values[i] == s) {
                return i;
            }
        }
        
        return Null<Size>();
    }
    
    /**add a value to a DAttrInfo object and returns the index of the value
     * two arguments: if boolean is true and add a value to a DAttrInfo object that already exists in the DAttrInfo object,
     * then the function just returns the index of the value. If boolean is false and we try to add a value to a DAttrInfo object that
     * already existis in the DAttrInfo object, the function throws an exception.
     */
    Size DAttrInfo::add_value(const std::string &s, bool bAllowDuplicate) {
        Size ind = Null<Size>();
        for (Size i = 0; i < _values.size(); i++) {
            if (_values[i] == s) {
                ind = i;
                break;
            }
        }
        
        if (ind == Null<Size>()) {
            _values.push_back(s);
            return _values.size() - 1;
        } else {
            if (bAllowDuplicate) {
                return ind;
            } else {
                FAIL("value " << " already exists");
                return Null<Size>();
            }
        }
    }
    
    void DAttrInfo::remove_value(const std::string &val) {
        iterator it = std::find(_values.begin(), _values.end(), val);
        if (it != _values.end()) {
            _values.erase(it);
        }
    }
    
    void DAttrInfo::remove_value(Size i) {
        if ((i >= 0) || (i < _values.size())) {
            _values.erase(_values.begin() + 1);
        }
    }
    
    
    bool DAttrInfo::equal(const AttrInfo &info) const {
        if (!equal_shallow(info)) {
            return false;
        }
        
        const DAttrInfo &nai = info.cast_to_d();
        if (nai.num_value() != _values.size()) {
            return false;
        }
        
        for (Size i = 0; i < _values.size(); i++) {
            if (_values[i] != nai.int_to_str(i)) {
                return false;
            }
        }
        
        return true;
    }
    
    DAttrInfo* DAttrInfo::clone() const {
        return new DAttrInfo(*this);
    }
    
    Real DAttrInfo::distance(const AttrValue& av1, const AttrValue& av2) const {
        if (is_unknown(av1) && is_unknown(av2)) {
            return 0.0;
        }
        if (is_unknown(av1) ^ is_unknown(av2)) {
            return 1.0;
        }
        
        if (boost::get<Size>(av1._value) == boost::get<Size>(av2._value)) {
            return 0.0;
        } else {
            return 1.0;
        }
    }
    
    void DAttrInfo::set_d_val(AttrValue &av, Size value) const {
        ASSERT((value < _values.size()) && (value >= 0), "invalid value " << value);
        av._value = value;
    }
    
    
    
    
    void DAttrInfo::set_unknown(ClusLib::AttrValue &av) const {
        av._value = Null<Size>();
    }
    
    bool DAttrInfo::is_unknown(const ClusLib::AttrValue &av) const {
        return (boost::get<Size>(av._value) == Null<Size>());
    }
}

