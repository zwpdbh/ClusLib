//
//  record.hpp
//  build_all
//
//  Created by zwpdbh on 27/02/2018.
//

#ifndef record_hpp
#define record_hpp

#include "cl/datasets/attrinfo.hpp"
#include "cl/datasets/schema.hpp"
#include "cl/errors.hpp"
#include "cl/types.h"
#include "cl/utilities/container.h"
#include <boost/shared_ptr.hpp>
#include <vector>

namespace ClusLib {
class Record : public Container<AttrValue> {
public:
  Record(const boost::shared_ptr<Schema> &schema);
  /**member functions are designed to manipulate the data member of the class.*/
  const boost::shared_ptr<Schema> &schema() const;
  AttrValue &labelValue();
  const AttrValue &labelValue() const;
  AttrValue &idValue();
  const AttrValue &idValue() const;
  Size get_id() const;
  Size get_label() const;

private:
  /**The schema for a dataset is shared by all the records in the dataset.
   * Hence, don not need to make a deep copy of record, so no need of copy
   * constructor or assignment operator.
   */
  boost::shared_ptr<Schema> _schema;
  AttrValue _label;
  AttrValue _id;
};

inline const boost::shared_ptr<Schema> &Record::schema() const {
  return _schema;
}

inline AttrValue &Record::labelValue() { return _label; }

inline const AttrValue &Record::labelValue() const { return _label; }

inline AttrValue &Record::idValue() { return _id; }

inline const AttrValue &Record::idValue() const { return _id; }

inline Size Record::get_id() const { return _schema->idInfo()->get_d_val(_id); }

inline Size Record::get_label() const {
  return _schema->labelInfo()->get_d_val(_label);
}
} // namespace ClusLib

#endif /* record_hpp */
