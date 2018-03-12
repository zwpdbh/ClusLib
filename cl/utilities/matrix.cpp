#include "cl/errors.hpp"
#include "cl/types.h"
#include "cl/utilities/matrix.hpp"
#include <cmath>

namespace ClusLib {
Size chol(const ublas::symmetric_matrix<Real>& A,
          ublas::triangular_matrix<Real>&      L) {
    using namespace ublas;
    A.size1();
    ASSERT((A.size1() == A.size2()), "matrix A is not square");
    ASSERT((L.size1() == L.size2()), "matrix L is not square");
    ASSERT((A.size1() == L.size1()),
           "matrix A and matrix L have different dimensions");
    const Size n = A.size1();
    for (Size k = 0; k < n; k++) {
        double ql_kk = A(k, k) - inner_prod(project(row(L, k), range(0, k)),
                                            project(row(L, k), range(0, k)));

        if (ql_kk <= 0) {
            return 1 + k;
        }

        double L_kk = sqrt(ql_kk);
        L(k, k)     = L_kk;

        matrix_column<triangular_matrix<Real>> clk(L, k);
        project(clk, range(k + 1, n)) =
            (project(column(A, k), range(k + 1, n)) -
             prod(project(L, range(k + 1, n), range(0, k)),
                  project(row(L, k), range(0, k)))) /
            L_kk;
    }

    return 0;
}

Size triangular_matrix_inverse(const ublas::triangular_matrix<Real>& L,
                               ublas::triangular_matrix<Real>&       iL) {

    return 0;
}

} // namespace ClusLib
