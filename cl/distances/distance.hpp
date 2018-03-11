#ifndef CLUSLIB_DISTANCE_HPP
#define CLUSLIB_DISTANCE_HPP

#include "cl/datasets/record.hpp"
#include "cl/errors.hpp"
#include "cl/types.h"
#include <boost/shared_ptr.hpp>
#include <functional>
#include <vector>

namespace ClusLib {
class Distance : std::binary_function<boost::shared_ptr<Record>,
                                      boost::shared_ptr<Record>,
                                      Real> {
  public:
    virtual ~Distance() {}
    Distance(const std::string& name);

    const std::string& name() const;
    virtual Real       operator()(const boost::shared_ptr<Record>&,
                            const boost::shared_ptr<Record>&) const = 0;

  protected:
    std::string _name;
};

inline Distance::Distance(const std::string& name) : _name(name) {}

inline const std::string& Distance::name() const {
    return _name;
}

} // namespace ClusLib

#endif // CLUSLIB_DISTANCE_HPP