#ifndef cluslib_matrix_hpp
#define cluslib_matrix_hpp

#include "cl/types.h"
#include <boost/numeric/ublas/io.hpp>
#include <boost/numeric/ublas/matrix.hpp>
#include <boost/numeric/ublas/matrix_proxy.hpp>
#include <boost/numeric/ublas/operation.hpp>
#include <boost/numeric/ublas/symmetric.hpp>
#include <boost/numeric/ublas/triangular.hpp>
#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/vector_proxy.hpp>

namespace ClusLib {
namespace ublas = boost::numeric::ublas;

Size chol(const ublas::symmetric_matrix<Real>& A,
          ublas::triangular_matrix<Real>&      L);

Size triangular_matrix_inverse(const ublas::triangular_matrix<Real>& L,
                               ublas::triangular_matrix<Real>&       il);
} // namespace ClusLib

#endif // !cluslib_matrix_hpp
