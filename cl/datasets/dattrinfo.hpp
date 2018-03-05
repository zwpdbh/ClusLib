//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_DATTRINFO_H
#define DATA_CLUSTERING_DATTRINFO_H

#include"cl/datasets/attrinfo.hpp"
#include<vector>

namespace ClusLib {
    /**for discrete value*/
    class DAttrInfo : public AttrInfo {
    public:
        DAttrInfo(const std::string &name);
        
        /**get the number of distinct values stored in a DAttrInfo object*/
        Size num_value() const;
        
        /**convert a string to its corresponding index*/
        const std::string &int_to_str(Size i) const;
        
        /**convert an index to its underlying string*/
        Size str_to_int(const std::string &) const;
        
        
        Size add_value(const std::string &, bool bAllowDuplicate = true);
        
        void remove_value(const std::string &);
        void remove_value(Size i);
        
        DAttrInfo *clone() const override;
        
        Real distance(const AttrValue &, const AttrValue &) const override;
        
        void set_d_val(AttrValue& av, Size value) const override;
        Size get_d_val(const AttrValue &) const override;
        
        void set_unknown(AttrValue &) const override;
        bool is_unknown(const AttrValue &) const override;
        
        DAttrInfo &cast_to_d() override;
        const DAttrInfo &cast_to_d() const override;
        bool can_cast_to_d() const override;
        
        bool operator==(const AttrInfo &info) const override;
        bool operator!=(const AttrInfo &info) const override;
        
    protected:
        typedef std::vector<std::string>::iterator iterator;
        typedef std::vector<std::string>::const_iterator const_iterator;
        
        bool equal(const AttrInfo &) const;
        
        /**hold the discrete values of an attribute. Discrete data is represented by string.
         * Store only the distinct strings in a DAttrInfo object. AttrValue store unsigned integers that
         * are indexes to the distinct strings stored in DAttrInfo objects.
         */
        std::vector<std::string> _values;
    };
    
    inline Size DAttrInfo::get_d_val(const AttrValue &av) const {
        return boost::get<Size>(av._value);
    }
    
    inline DAttrInfo &DAttrInfo::cast_to_d() {
        return *this;
    }
    
    inline const DAttrInfo& DAttrInfo::cast_to_d() const {
        return *this;
    }
    
    inline bool DAttrInfo::can_cast_to_d() const {
        return true;
    }
    
    inline bool DAttrInfo::operator==(const AttrInfo &info) const {
        return equal(info);
    }
    
    inline bool DAttrInfo::operator!=(const AttrInfo &info) const {
        return !equal(info);
    }
}


#endif //DATA_CLUSTERING_DATTRINFO_H

