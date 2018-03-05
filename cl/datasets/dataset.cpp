//
//  dataset.cpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#include "cl/datasets/dataset.hpp"
#include <boost/lexical_cast.hpp>
#include <fstream>
#include <sstream>

namespace ClusLib {
    std::ostream& operator<<(std::ostream& os, const Dataset& ds) {
        ds.print(os);
        return os;
    }
    
    void Dataset::print(std::ostream& os) const {
        os << "Number of records: " << size() << '\n';
        os << "Number of attributes: " << num_attr() << '\n';
        Integer n = 0;
        for (Size i = 0;  i < num_attr(); i++) {
            if ((*_schema)[i]->can_cast_to_c()) {
                n++;
            }
        }
        os << "Number of numerical attributes: " << n << '\n';
        os << "Number of categorical attributes " << num_attr() - n << '\n';
    }
    
    Dataset::Dataset(const boost::shared_ptr<Schema>& schema): _schema(schema) {}
    
    Dataset::Dataset(const Dataset& other) {
        _schema = boost::shared_ptr<Schema>(other.schema()->clone());
        
        for (Size i=0; i < other.size(); i++) {
            boost::shared_ptr<Record> tmp = boost::shared_ptr<Record>(new Record(_schema));
            for (Size j = 0; j<_schema->size(); j++) {
                (*tmp)[j] = other(i, j);
            }
            _data.push_back(tmp);
        }
    }
    
    Dataset& Dataset::operator=(const ClusLib::Dataset& other) {
        if (this != &other) {
            _schema = boost::shared_ptr<Schema>(other.schema()->clone());
            for (Size i = 0; i < other.size(); i++) {
                boost::shared_ptr<Record> tmp = boost::shared_ptr<Record>(new Record(_schema));
                for (Size j = 0; j < _schema->size(); j++) {
                    (*tmp)[j] = other(i, j);
                }
                _data.push_back(tmp);
            }
        }
        return *this;
    }
    
    bool Dataset::is_numeric() const {
        bool ret = true;
        for (Size i = 0; i < _schema->size(); i++) {
            if (!(*_schema)[i]->can_cast_to_c()) {
                ret = false;
                // why not break ?
            }
        }
        return ret;
    }
    
    bool Dataset::is_categorical() const {
        bool ret = true;
        for (Size i = 0; i < _schema->size(); i++) {
            if (!(*_schema)[i]->can_cast_to_d()) {
                ret = false;
            }
        }
        return ret;
    }
    
    void Dataset::save(const std::string &filename) const {
        boost::shared_ptr<DAttrInfo> label = _schema->labelInfo();
        boost::shared_ptr<DAttrInfo> id = _schema->idInfo();
        std::stringstream ss;
        for (Size i = 0; i < _data.size(); i++) {
            ss << id->int_to_str(_data[i]->get_id());
            for (Size j = 0; j < _schema->size(); j++) {
                ss << ",";
                if ((*_schema)[j]->can_cast_to_c()) {
                    ss << (*_schema)[j]->get_c_val((*_data[i])[j]);
                } else {
                    Size val = (*_schema)[j]->get_d_val((*_data[i])[j]);
                    ss << (*_schema)[j]->cast_to_d().int_to_str(val);
                }
            }
            if (label) {
                ss << "," << label->int_to_str(_data[i]->get_label());
            }
            ss << std::endl;
        }
        std::ofstream of(filename.c_str());
        ASSERT(of.good(), "can not openfile " << filename);
        of << ss.str();
        of.close();
        
        ss.str("");
        ss << "This is the schema file for dataset " << filename << std::endl;
        ss << "///: schema" << std::endl;
        ss << "1, RecordID" << std::endl;
        for (Size j = 0; j < _schema->size(); j++) {
            ss << j + 2 << ", ";
            if ((*_schema)[j]->can_cast_to_c()) {
                ss << "Continouse";
            } else {
                ss << "Discrete";
            }
            ss << std::endl;
        }
        if (label) {
            ss << _schema->size() + 2 << ", Class" << std::endl;
        }
        
        Size ind = filename.find_last_of(".");
        ASSERT((ind != std::string::npos), filename << " is an invalid file name");
        std::string schemafile = filename.substr(0, ind + 1) + "names";
        
        of.open(schemafile.c_str());
        ASSERT(of.good(), "can not open file " << schemafile);
        of << ss.str();
        of.close();
    }
    
    std::vector<Size> Dataset::get_CM() const {
        std::vector<Size> CM;
        boost::shared_ptr<DAttrInfo> label = _schema->labelInfo();
        if (!label) {
            return CM;
        }
        
        for (Size i = 0; i < _data.size(); i++) {
            CM.push_back(label->get_d_val(_data[i]->labelValue()));
        }
        
        return CM;
    }
}

