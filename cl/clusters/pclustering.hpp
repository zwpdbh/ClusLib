//
//  pclustering.hpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#ifndef pclustering_hpp
#define pclustering_hpp

#include "cl/clusters/cluster.h"
#include "cl/utilities/container.h"
#include "cl/utilities/nnmap.h"

namespace ClusLib {
/**a partitional clustering is a collection of clusters*/
class PClustering : public Container<boost::shared_ptr<Cluster>> {
public:
  friend std::ostream &operator<<(std::ostream &os, PClustering &pc);
  PClustering();

  /**remove empty clusters from a partitional clustering*/
  void removeEmptyClusters();

  /**assign a unique identifier to each cluster*/
  void createCLusterID();

  /**save a copy of the dataset to disk*/
  void save(const std::string &filename);

private:
  /**output a summary of the clustering to an output stream*/
  void print(std::ostream &os);

  /**is used to collects necessary info and calls crosstabl to create the cross
   * tabulation if the dataset contains class labels.*/
  void calculate();
  void crosstab();

  /**used to tell whether the member function calculate is called or not*/
  bool _bCalculated;

  /**represent the number of clusters contained in the inherited data member
   * _data*/
  Size _numclust;

  /**represent the number of clusters contained in the given dataset*/
  Size _numclustGiven;

  /**a vector of unsigned integers which represent the sizes of clusters in
   * _data*/
  std::vector<Size> _clustsize;

  /**used to store the class labels given in the dataset if such label exist*/
  std::vector<std::string> _clustLabel;

  /**are the cluster membership vectors*/
  std::vector<Size> _CM;
  std::vector<Size> _CMGiven;

  /**a double-key map used to store the cross tabulation of the clustering in
   * the object and the given clustering*/
  iiiMapB _crosstab;
};
} // namespace ClusLib

#endif /* pclustering_hpp */
