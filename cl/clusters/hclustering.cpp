//
//  hclustering.cpp
//  ClusLib
//
//  Created by zwpdbh on 04/03/2018.
//  Copyright © 2018 Otago. All rights reserved.
//

#include "cl/clusters/hclustering.hpp"
#include "cl/errors.hpp"
#include "cl/patterns/joinvaluevisitor.hpp"
#include "cl/patterns/pcvisitor.hpp"
#include "cl/patterns/dendrogramvisitor.hpp"
#include <algorithm>

namespace ClusLib {
    HClustering::HClustering(const boost::shared_ptr<Node>& root) : _root(root) {}
    
    boost::shared_ptr<Node> HClustering::joinWith(ClusLib::HClustering &hc, Real joinValue) {
        InternalNode* p = new InternalNode(joinValue);
        boost::shared_ptr<Node> node(p);
        
        boost::shared_ptr<Node>& cn1 = _root;
        const boost::shared_ptr<Node>& cn2 = hc.root();
        
        cn1->set_parent(node);
        cn2->set_parent(node);
        p->add(cn1);
        p->add(cn2);
        
        return node;
    }
    
    PClustering HClustering::get_pc(Size maxclust) const {
        ASSERT(maxclust > 0, "invalid maxclust");
        Size cutlevel = _root->get_level() - maxclust + 2;
        PClustering pc;
        PCVisitor pcv(pc, cutlevel);
        _root->accept(pcv);
        
        return pc;
    }
    
    void HClustering::save(const std::string &filename, Size p) const {
        JoinValueVisitor jvv;
        _root->accept(jvv);
        std::set<iirMapA::value_type, compare_iir> joinValues = jvv.get_joinValue();
        std::set<iirMapA::value_type, compare_iir>::iterator it;
        Real ljv, hjv;
        Size llevel, hlevel;
        it = joinValues.end();
        it--;
        hjv = it->second;
        hlevel = _root->get_level();
        if (p == 0) {
            it = joinValues.begin();
            ljv = it->second;
            llevel = 0;
        } else {
            it = joinValues.begin();
            for (Size i = 0; i < joinValues.size() - p + 1; i++) {
                it++;
            }
            ljv = it->second;
            llevel = _root->get_level() -p + 1;
        }
        DendrogramVisitor dgv(hjv, llevel, hlevel);
        _root->accept(dgv);
        dgv.save(filename);
    }
}
