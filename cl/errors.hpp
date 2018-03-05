//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_ERRORS_H
#define DATA_CLUSTERING_ERRORS_H

#include <boost/assert.hpp>
#include <boost/current_function.hpp>
#include <boost/shared_ptr.hpp>
#include <exception>
#include <sstream>

namespace ClusLib {
    class Error: public std::exception {
    private:
        boost::shared_ptr<std::string> _msg;
    public:
        Error(const std::string& file, long line, const std::string& function, const std::string& msg = "");
        ~Error() throw() {}
        const char* what() const throw();
    };
}

#define FAIL(msg) \
std::ostringstream ss; \
ss << msg; \
throw ClusLib::Error (__FILE__, __LINE__, \
BOOST_CURRENT_FUNCTION, ss.str());

#define ASSERT(condition, msg) \
if (!condition) { \
std::ostringstream ss; \
ss << msg; \
throw ClusLib::Error (__FILE__, __LINE__, \
BOOST_CURRENT_FUNCTION, ss.str()); \
}

#endif //DATA_CLUSTERING_ERRORS_H

