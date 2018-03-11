#include "cl/errors.hpp"
#include "cl/patterns/dendrogramvisitor.hpp"
#include <sstream>

namespace ClusLib {
DendrogramVisitor::DendrogramVisitor(Real hjv, Size llevel, Size hlevel)
    : _cutLevel(llevel), _count(0), _leftMargin(30), _bottomMargin(20),
      _hjv(hjv), _gap(15), _drawLabel(true) {
    ASSERT((hlevel >= llevel), "hlevel must >= llevel");

    Real x1, y1, x2, y2;
    _boxx          = 100;
    _boxy          = 100;
    _width         = 390;
    _height        = 540;
    Size numLeaves = hlevel - llevel + 1;
    if (numLeaves > 60) {
        _drawLabel = false;
    }

    if (_gap * numLeaves > _height - _bottomMargin) {
        _gap = (_height - _bottomMargin) / numLeaves;
    } else {
        _height = _gap * numLeaves + _bottomMargin;
    }

    _dg.setbox(_boxx, _boxy, _boxx + _width, _boxy + _height);
}

void DendrogramVisitor::visit(LeafNode& node) {
    Real x = _boxx + _leftMargin;
    Real y = _bottomMargin + _boxy + _gap * _count;
    _count++;
    _dg.drawCircle(x, y, 1.5);
    if (_drawLabel) {
        std::stringstream ss;
        ss << node.get_id();
        _dg.drawText(x, y, ss.str());
    }
    _points.insert(std::pair<Size, std::pair<Real, Real>>(
        node.get_id(), std::pair<Real, Real>(x, y)));
}

void DendrogramVisitor::visit(InternalNode& node) {
    if (node.num_children() != 2) {
        FAIL("DendrogramVisitor only handels node with 2 children");
    }
    Real x, y;
    if (node.get_level() > _cutLevel) {
        _lines.insert(std::pair<Size, std::pair<Size, Size>>(
            node.get_id(),
            std::pair<Size, Size>(node[0]->get_id(), node[1]->get_id())));
        x = (node.get_joinValue()) * (_width - _leftMargin) / _hjv +
            _leftMargin + _boxx;
        _points.insert(std::pair<Size, std::pair<Real, Real>>(
            node.get_id(), std::pair<Real, Real>(x, Null<Real>())));
        node[0]->accept(*this);
        node[1]->accept(*this);
    } else {
        x = _boxx + _leftMargin;
        y = _bottomMargin + _boxy + _gap * _count;
        _count++;
        _dg.drawDot(x, y);
        if (_drawLabel) {
            std::stringstream ss;
            ss << node.get_id();
            _dg.drawText(x, y, ss.str());
        }

        _points.insert(std::pair<Size, std::pair<Real, Real>>(
            node.get_id(), std::pair<Real, Real>(x, y)));
    }
}

} // namespace ClusLib