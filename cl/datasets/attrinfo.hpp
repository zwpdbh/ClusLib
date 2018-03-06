//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_ATTRINFO_H
#define DATA_CLUSTERING_ATTRINFO_H

#include "cl/datasets/attrvalue.h"
#include <string>

namespace ClusLib {
enum AttrType { Unknown, Continuous, Discrete };

/**This is called forward declaration to avoid including the headers of classes
 * DAttrInfo and CAttrInfo, since such inclusion will result in cyclic inclusion
 * of headers*/
class DAttrInfo;
class CAttrInfo;

class AttrInfo {
  public:
    /**constructor requires two arguments:
     *@para1 name is the name of the attribute
     *@para2 type is the the type of the attribute*/
    AttrInfo(const std::string& name, AttrType type);
    virtual ~AttrInfo() {}

    /**is used to access and modify the name of the attribute*/
    const std::string& name() const;
    /**is used to access and modify the name of the attribute*/
    std::string& name();
    /**is used to get the type of the attribute. Once an attribute is created,
     * we cannot change its type. Hence, this function is declared as const
     * function*/
    AttrType type() const;

    /**Those two overloaded operators are used to compare two objects of class
     * AttrInfo If two attributes have the same name and the same type, they are
     * deemed equal.*/
    virtual bool operator==(const AttrInfo& info) const;
    virtual bool operator!=(const AttrInfo& info) const;

    /**classes derived from this class must override this function by
     * implementing a deep copy*/
    virtual AttrInfo* clone() const = 0;

    /**It provides a uniform approach to calculate the distances for different
     * types of data*/
    virtual Real distance(const AttrValue&, const AttrValue&) const = 0;

    /**get and set discrete value or continuous value, the derived classes are
     * supposed to implement some of these functions*/
    virtual void set_d_val(AttrValue&, Size) const;
    virtual Size get_d_val(const AttrValue&) const;
    virtual void set_c_val(AttrValue&, Real) const;
    virtual Real get_c_val(const AttrValue&) const;

    /**are used to deal with missing values as missing values are very common in
     * data sets. Missing values of different types are represented by different
     * values, hence we leave the definition of these function to derived
     * classes*/
    virtual void set_unknown(AttrValue&) const      = 0;
    virtual bool is_unknown(const AttrValue&) const = 0;

    /**are used to do type conversion*/
    virtual DAttrInfo&       cast_to_d();
    virtual const DAttrInfo& cast_to_d() const;
    virtual CAttrInfo&       cast_to_c();
    virtual const CAttrInfo& cast_to_c() const;
    virtual bool             can_cast_to_d() const;
    virtual bool             can_cast_to_c() const;

  protected:
    bool equal_shallow(const AttrInfo&) const;

  private:
    /**The name of the attribute*/
    std::string _name;
    /**The type of the attribute which is an enum, could be unknown, continuous
     * or discrete*/
    AttrType _type;
};

inline const std::string& AttrInfo::name() const { return _name; }

inline std::string& AttrInfo::name() { return _name; }

inline AttrType AttrInfo::type() const { return _type; }

inline bool AttrInfo::operator==(const AttrInfo& info) const {
    return equal_shallow(info);
}

inline bool AttrInfo::operator!=(const AttrInfo& info) const {
    return !equal_shallow(info);
}

inline bool AttrInfo::can_cast_to_d() const { return false; }

inline bool AttrInfo::can_cast_to_c() const { return false; }
} // namespace ClusLib

#endif // DATA_CLUSTERING_ATTRINFO_H
