#ifndef cluslib_dendrogramvisitor_hpp
#define cluslib_dendrogramvisitor_hpp

#include "cl/patterns/internalnode.hpp"
#include "cl/patterns/leafnode.hpp"
#include "cl/patterns/nodevisitor.hpp"
#include "cl/utilities/dendrogram.hpp"
#include <iostream>
#include <map>

namespace ClusLib {
class DendrogramVisitor : public NodeVisitor {
  public:
    DendrogramVisitor(Real hjv, Size llevel, Size hlevel);
    void visit(LeafNode& node);
    void visit(InternalNode& node);
    void save(const std::string& filename);

  private:
    Dendrogram                            _dg;
    Size                                  _cutLevel;
    Size                                  _count;
    Real                                  _leftMargin;
    Real                                  _bottomMargin;
    Real                                  _boxx;
    Real                                  _boxy;
    Real                                  _height;
    Real                                  _width;
    Real                                  _hjv;
    Real                                  _gap;
    bool                                  _drawLabel;
    std::map<Size, std::pair<Size, Size>> _lines;
    std::map<Size, std::pair<Real, Real>> _points;

    Real get_x(Size id);
    void drawLink(Size id0, Size id1);
};
} // namespace ClusLib

#endif // !cluslib_dendrogramvisitor_hpp