//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_CATTRINFO_H
#define DATA_CLUSTERING_CATTRINFO_H

#include "cl/datasets/attrinfo.hpp"

namespace ClusLib {
    /**for continous value*/
    class CAttrInfo: public AttrInfo {
        
        
    public:
        CAttrInfo(const std::string& name);
        
        /**redifne parent class for continous value*/
        CAttrInfo& cast_to_c() override;
        const CAttrInfo& cast_to_c() const override;
        bool can_cast_to_c() const override;
        CAttrInfo* clone() const override;
        Real distance(const AttrValue&, const AttrValue&) const override;
        void set_c_val(AttrValue&, Real) const override;
        Real get_c_val(const AttrValue&) const override;
        void set_unknown(AttrValue &value) const override;
        bool is_unknown(const AttrValue &value) const override;
        
        /**set and get min and max values of the attribute*/
        void set_min(Real);
        void set_max(Real);
        Real get_min() const;
        Real get_max() const;
        
        /**checks whether two attributes are equal or not interms of the attribute name and the type*/
        bool equal(const AttrInfo&) const;
        
    protected:
        /**These two data memebers are used to store the minimum value and the maximum value of a continuous attribute of a data set.*/
        Real _min;
        Real _max;
    };
    
    inline Real CAttrInfo::get_c_val(const AttrValue &av) const {
        return boost::get<Real>(av._value);
    }
    
    inline CAttrInfo& CAttrInfo::cast_to_c() {
        return *this;
    }
    
    inline const CAttrInfo& CAttrInfo::cast_to_c() const {
        return *this;
    }
    
    inline bool CAttrInfo::can_cast_to_c() const {
        return true;
    }
    
    inline void  CAttrInfo::set_min(Real min) {
        _min = min;
    }
    
    inline void CAttrInfo::set_max(Real max) {
        _max = max;
    }
    
    inline Real CAttrInfo::get_min() const {
        return _min;
    }
    
    inline Real CAttrInfo::get_max() const {
        return _max;
    }
}


#endif //DATA_CLUSTERING_CATTRINFO_H

