#ifndef CLUSLIB_DENDROGRAM_HPP
#define CLUSLIB_DENDROGRAM_HPP

#include "cl/types.h"
#include <sstream>
#include <string>

namespace ClusLib {
class Dendrogram {
  public:
    Dendrogram();
    void setbox(Real x1, Real y1, Real x2, Real y2);
    void drawDot(Real x, Real y);
    void drawCircle(Real x, Real y, Real r);
    void drawLine(Real x1, Real y1, Real x2, Real y2);
    void drawText(Real x, Real y, const std::string& txt);
    void save(const std::string& filename) const;

  private:
    std::stringstream _ss;
    Real              _x1;
    Real              _y1;
    Real              _x2;
    Real              _y2;
};
} // namespace ClusLib

#endif // !CLUSLIB_DENDROGRAM_HPP
