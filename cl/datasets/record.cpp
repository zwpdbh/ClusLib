//
//  record.cpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#include "cl/datasets/record.hpp"
#include "cl/utilities/null.h"
#include <boost/variant/get.hpp>

namespace ClusLib {
    Record::Record(const boost::shared_ptr<Schema>& schema): _schema(schema) {
        _data.resize(schema->size());
        for (Size i = 0; i < _schema->size(); i++) {
            (*_schema)[i]->set_unknown(_data[i]);
        }
    }
    
    /**The two member functions of class Schema are defined in this file because the two functions depend on member functions of class Record.*/
    
    /**This function of Schema set the label of an object of record*/
    void Schema::set_label(boost::shared_ptr<Record> &r, const std::string &val) {
        
        Size label = _labelInfo->add_value(val);
        _labelInfo->set_d_val(r->labelValue(), label);
    }
    
    /**This function of Schema set the identifier of an object of record*/
    void Schema::set_id(boost::shared_ptr<Record> &r, const std::string &val) {
        Size id = _idInfo->add_value(val, false);
        _idInfo->set_d_val(r->idValue(), id);
    }
}

