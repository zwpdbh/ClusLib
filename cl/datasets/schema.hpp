//
//  schema.hpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#ifndef schema_hpp
#define schema_hpp

#include "cl/types.h"
#include "cl/datasets/attrinfo.hpp"
#include "cl/datasets/dattrinfo.hpp"
#include "cl/utilities/container.h"
#include <boost/shared_ptr.hpp>
#include <vector>

namespace ClusLib {
    /**forward-declare class Record*/
    class Record;
    
    
    class Schema: public Container<boost::shared_ptr<AttrInfo> > {
        /**The member _data is inherited from class Container and is a vector of shared pointer pointing to the objects of AttrInfo
         * template on boost::shared_ptr<AttrInfo>
         */
    public:
        /**Since Schema contains virtual functions, its destructor is also virtual.*/
        virtual ~Schema() {}
        
        Schema* clone() const;
        boost::shared_ptr<DAttrInfo>& labelInfo();
        const boost::shared_ptr<DAttrInfo>& labelInfo() const;
        boost::shared_ptr<DAttrInfo>& idInfo();
        const boost::shared_ptr<DAttrInfo>& idInfo() const;
        
        /**since those function depends on Record class, we implement those two methods in the source file of class Record*/
        void set_label(boost::shared_ptr<Record>& r, const std::string& val);
        void set_id(boost::shared_ptr<Record>& r, const std::string& val);
        
        bool is_labelled() const;
        
        virtual bool equal(const Schema& o) const;
        virtual bool equal_no_label(const Schema& o) const;
        virtual bool operator==(const Schema& o) const;
        virtual bool operator!=(const Schema& o) const;
        virtual bool is_member(const AttrInfo& info) const;
        
    protected:
        boost::shared_ptr<DAttrInfo> _labelInfo;
        boost::shared_ptr<DAttrInfo> _idInfo;
    };
    
    inline bool Schema::operator==(const ClusLib::Schema &o) const {
        return equal(o);
    }
    
    inline bool Schema::operator!=(const ClusLib::Schema &o) const {
        return !equal(o);
    }
    
    inline boost::shared_ptr<DAttrInfo>& Schema::labelInfo() {
        return _labelInfo;
    }
    
    inline const boost::shared_ptr<DAttrInfo>& Schema::labelInfo() const {
        return _labelInfo;
    }
    
    inline boost::shared_ptr<DAttrInfo>& Schema::idInfo() {
        return _idInfo;
    }
    
    inline const boost::shared_ptr<DAttrInfo>& Schema::idInfo() const {
        return _idInfo;
    }
    
}

#endif /* schema_hpp */


