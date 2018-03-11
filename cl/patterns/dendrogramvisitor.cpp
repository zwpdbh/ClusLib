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

void DendrogramVisitor::save(const std::string& filename) {
    std::map<Size, std::pair<Size, Size>>::iterator it;
    Size                                            topid = 0;
    for (it = _lines.begin(); it != _lines.end(); ++it) {
        if (it->first > topid) {
            topid = it->first;
        }
    }

    _points[topid].second = get_x(topid);
    for (it = _lines.begin(); it != _lines.end(); ++it) {
        drawLink(it->second.first, it->first);
        drawLink(it->second.second, it->first);
    }
    _dg.save(filename);
}

Real DendrogramVisitor::get_x(Size id) {
    Size id0 = _lines[id].first;
    Size id1 = _lines[id].second;

    Real x1, x2;
    if (_points[id0].second == Null<Real>()) {
        x1                  = get_x(id0);
        _points[id0].second = x1;
        if (_points[id1].second == Null<Real>()) {
            x2                  = get_x(id1);
            _points[id1].second = x2;
        } else {
            x2 = _points[id].second;
        }
    } else {
        x1 = _points[id0].second;
        if (_points[id1].second == Null<Real>()) {
            x2                  = get_x(id1);
            _points[id1].second = x2;
        } else {
            x2 = _points[id1].second;
        }
    }

    return 0.5 * (x1 + x2);
}

void DendrogramVisitor::drawLink(Size id0, Size id1) {
    Real x1 = _points[id0].first;
    Real y1 = _points[id0].second;
    Real x2 = _points[id1].first;
    Real y2 = _points[id1].second;
    if (x1 == _boxx + _leftMargin) {
        x1 += 1.5;
    }

    _dg.drawLine(x1, y1, x2, y1);
    _dg.drawLine(x2, y1, x2, y2);
}
} // namespace ClusLib
