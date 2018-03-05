//
//  dataset.hpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#ifndef dataset_hpp
#define dataset_hpp

#include "cl/datasets/record.hpp"
#include "cl/datasets/schema.hpp"
#include "cl/utilities/container.h"
#include <vector>
#include <iostream>

namespace ClusLib {
    class Dataset: public Container<boost::shared_ptr<Record> > {
    public:
        /**stream operators are overloaded as friend function. The friend function actually calls the protected member function
         * print to output the dataset.*/
        friend std::ostream& operator<<(std::ostream& os, const Dataset& ds);
        
        /**we can create an object of Dataset eigther with a schema or from another object of Dataset; Dataset has no default constructor.*/
        Dataset(const boost::shared_ptr<Schema>&);
        /**copy constructor*/
        Dataset(const Dataset&);
        
        /**get the number of attributes of a dataset*/
        Size num_attr() const;
        /**The number of records of a dataset can be obtained by the function size defined in class Container*/
        
        /**declare this function as const because the schema of a dataset should not be changed once the dataset is initialized.*/
        const boost::shared_ptr<Schema>& schema() const;
        
        /**access and modify an individual component of a record in a dataset*/
        AttrValue& operator()(Size i, Size j);
        const AttrValue& operator()(Size i, Size j) const;
        
        /**tell whether a dataset is numerical or categorical*/
        bool is_numeric() const;
        bool is_categorical() const;
        
        void save(const std::string& filename) const;
        std::vector<Size> get_CM() const;
        Dataset& operator=(const Dataset&);
        
    protected:
        void print(std::ostream& os) const;
        boost::shared_ptr<Schema> _schema;
    };
    
    inline Size Dataset::num_attr() const {
        return _schema->size();
    }
    
    inline const boost::shared_ptr<Schema>& Dataset::schema() const {
        return _schema;
    }
    
    inline AttrValue& Dataset::operator()(Size i, Size j) {
        return (*_data[i])[j];
    }
    
    inline const AttrValue& Dataset::operator()(Size i, Size j) const {
        return (*_data[i])[j];
    }
    
    
}

#endif /* dataset_hpp */

