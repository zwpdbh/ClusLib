//
//  pclustering.cpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#include "cl/clusters/pclustering.hpp"
#include "cl/errors.hpp"
#include <algorithm>
#include <fstream>
#include <iomanip>

namespace ClusLib {

PClustering::PClustering()
    : _bCalculated(false), _numclustGiven(Null<Size>()) {}

std::ostream &operator<<(std::ostream &os, PClustering &pc) {
  pc.print(os);
  return os;
}

void PClustering::removeEmptyClusters() {
  std::vector<boost::shared_ptr<Cluster>> temp(_data.begin(), _data.end());
  _data.clear();
  for (iterator it = temp.begin(); it != temp.end(); it++) {
    if ((*it)->size() == 0) {
      continue;
    }
    _data.push_back(*it);
  }
}

void PClustering::createCLusterID() {
  removeEmptyClusters();
  for (Size i = 0; i < _data.size(); i++) {
    _data[i]->set_id(i);
  }
}

void PClustering::print(std::ostream &os) {
  calculate();

  os << "Clustering summary:\n";
  os << "Number of clusters " << _numclust << '\n';

  for (Size i = 0; i < _numclust; i++) {
    os << "Size of Cluster " << i << ": " << _clustsize[i] << '\n';
  }

  os << '\n';
  if (_numclustGiven != Null<Size>()) {
    os << "Number of given cluster: " << _numclustGiven << '\n';
    os << "Cross Tabulation:\n";
    std::vector<Size> w;
    w.push_back(13);
    os << std::setw(w[0]) << std::left << "Cluster ID";
    for (Size j = 0; j < _numclustGiven; j++) {
      w.push_back(_clustLabel[j].size() + 3);
      os << std::setw(w[j + 1]) << std::left << _clustLabel[j];
    }
    os << '\n';
    for (Size i = 0; i < _numclust; i++) {
      os << std::setw(w[0]) << std::left << i;
      for (Size j = 0; j < _numclustGiven; j++) {
        if (_crosstab.contain_key(i, j)) {
          os << std::setw(w[j + i]) << std::left << _crosstab(i, j);
        } else {
          os << std::setw(w[j + 1]) << std::left << 0;
        }
      }
      os << "\n";
    }
  }
}

void PClustering::save(const std::string &filename) {
  std::ofstream of;
  of.open(filename.c_str());
  print(of);

  of << "\nCluster Membership\n";
  of << "Record ID, Cluster Index, Cluster Index Given\n";
  for (Size i = 0; i < _CM.size(); i++) {
    of << i + 1 << ", " << _CM[i];
    if (_numclustGiven == Null<Size>()) {
      of << ", _NA\n";
      continue;
    }
    of << ", " << _CMGiven[i] << "\n";
  }
  of.close();
}

void PClustering::crosstab() {
  Size c1, c2;
  for (Size i = 0; i < _CM.size(); i++) {
    c1 = _CM[i];
    c2 = _CMGiven[i];
    if (_crosstab.contain_key(c1, c2)) {
      _crosstab(c1, c2) += 1;
    } else {
      _crosstab.add_item(c1, c2, 1);
    }
  }
}

void PClustering::calculate() {
  if (_bCalculated) {
    return;
  }
  createCLusterID();
  _numclust = _data.size();
  boost::shared_ptr<Cluster> c;
  boost::shared_ptr<Record> r;

  _CM.resize((*_data[0])[0]->schema()->idInfo()->num_value());
  for (Size i = 0; i < _numclust; i++) {
    c = _data[i];
    _clustsize.push_back(c->size());
    for (Size j = 0; j < c->size(); j++) {
      r = (*c)[j];
      _CM[r->get_id()] = c->get_id();
    }
  }

  boost::shared_ptr<DAttrInfo> info = (*_data[0])[0]->schema()->labelInfo();
  if (!info) {
    _bCalculated = true;
    return;
  }

  _CMGiven.resize(_CM.size());
  for (Size i = 0; i < _numclust; i++) {
    c = _data[i];
    for (Size j = 0; j < c->size(); j++) {
      r = (*c)[j];
      _CMGiven[r->get_id()] = r->get_label();
    }
  }
  crosstab();
  _bCalculated = true;
}

} // namespace ClusLib