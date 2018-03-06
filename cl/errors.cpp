//
// Created by zwpdbh on 25/02/2018.
//

#include "cl/errors.hpp"
#include <stdexcept>

/**not namespace ClubLib ?*/
namespace {
std::string format(const std::string& file, long line,
                   const std::string& function, const std::string& msg) {
    std::ostringstream ss;
    ss << function << ": ";
    ss << "\n " << file << "(" << line << "): \n" << msg;
    return ss.str();
}
} // namespace

namespace boost {
void assertion_failed(char const* expr, char const* function, char const* file,
                      long line) {
    throw std::runtime_error(format(
        file, line, function, "Boost assertion failed: " + std::string(expr)));
}
} // namespace boost

namespace ClusLib {
Error::Error(const std::string& file, long line, const std::string& function,
             const std::string& msg) {
    _msg = boost::shared_ptr<std::string>(
        new std::string(format(file, line, function, msg)));
}

const char* Error::what() const throw() {
    return _msg->c_str();
}
} // namespace ClusLib
