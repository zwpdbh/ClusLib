//
//  dataset_example.cpp
//  Data_Clustering
//
//  Created by zwpdbh on 27/02/2018.
//

#include "cl/datasets/cattrinfo.hpp"
#include "cl/datasets/dataset.hpp"
#include <iomanip>
#include <iostream>
#include <sstream>

using namespace ClusLib;
using namespace std;

int main(int argc, char* argv[]) {
    try {
        /*an object of Schema is responsible to set the label and the identifier
         * of an object of Record.*/
        boost::shared_ptr<Schema> schema(new Schema());

        boost::shared_ptr<DAttrInfo> labelInfo(new DAttrInfo("Label"));
        boost::shared_ptr<DAttrInfo> idInfo(new DAttrInfo("Identifier"));

        schema->labelInfo() =
            labelInfo; // labelInfo is a shared pointer pointing
                       // to an object of DAttrInfo can contains
                       // the categories of the input dataset.
        schema->idInfo() = idInfo;

        stringstream                ss;
        boost::shared_ptr<AttrInfo> ai;
        for (Size j = 0; j < 4; j++) {
            ss.str("");
            ss << "Attr" << j + 1;
            if (j == 0 || j == 2) {
                ai = boost::shared_ptr<CAttrInfo>(new CAttrInfo(ss.str()));
            } else {
                ai = boost::shared_ptr<DAttrInfo>(new DAttrInfo(ss.str()));
            }
            //            cout << "schema is about to add: " << ai->name() <<
            //            endl;
            schema->add(ai);
        }

        boost::shared_ptr<Dataset> ds(new Dataset(schema));
        Size                       val;
        boost::shared_ptr<Record>  r;
        r = boost::shared_ptr<Record>(new Record(schema));

        schema->set_id(r, "r1");
        schema->set_label(r, "1");
        /**use each record is set by method from schema*/
        (*schema)[0]->set_c_val((*r)[0], 1.2);
        val = (*schema)[1]->cast_to_d().add_value("A");
        (*schema)[1]->set_d_val((*r)[1], val);
        (*schema)[2]->set_c_val((*r)[2], -0.5);
        val = (*schema)[3]->cast_to_d().add_value("X");
        (*schema)[3]->set_d_val((*r)[3], val);
        ds->add(r);

        r = boost::shared_ptr<Record>(new Record(schema));
        schema->set_id(r, "r2");
        schema->set_label(r, "2");
        (*schema)[0]->set_c_val((*r)[0], -2.1);
        val = (*schema)[1]->cast_to_d().add_value("A");
        (*schema)[1]->set_d_val((*r)[1], val);
        (*schema)[2]->set_c_val((*r)[2], 1.5);
        val = (*schema)[3]->cast_to_d().add_value("Y");
        (*schema)[3]->set_d_val((*r)[3], val);
        ds->add(r);

        r = boost::shared_ptr<Record>(new Record(schema));
        schema->set_id(r, "r3");
        schema->set_label(r, "1");
        (*schema)[0]->set_c_val((*r)[0], 1.5);
        val = (*schema)[1]->cast_to_d().add_value("B");
        (*schema)[1]->set_d_val((*r)[1], val);
        (*schema)[2]->set_c_val((*r)[2], -0.1);
        val = (*schema)[3]->cast_to_d().add_value("X");
        (*schema)[3]->set_d_val((*r)[3], val);
        ds->add(r);

        r = boost::shared_ptr<Record>(new Record(schema));
        schema->set_id(r, "r4");
        schema->set_label(r, "2");
        (*schema)[0]->set_c_val((*r)[0], -1.8);
        val = (*schema)[1]->cast_to_d().add_value("B");
        (*schema)[1]->set_d_val((*r)[1], val);
        (*schema)[2]->set_c_val((*r)[2], 1.1);
        val = (*schema)[3]->cast_to_d().add_value("Y");
        (*schema)[3]->set_d_val((*r)[3], val);
        ds->add(r);

        ds->save("example_dataset.csv");
        cout << *ds << endl;
        cout << "Data: \n";
        cout << setw(10) << left << "RecordID";
        //        cout << "num_attr = " << ds->num_attr() << endl;
        for (Size j = 0; j < ds->num_attr(); ++j) {
            stringstream ss;
            ss << "Attr(" << j + 1 << ")";
            cout << setw(10) << left << ss.str();
        }

        cout << setw(6) << left << "Label" << endl;
        for (Size i = 0; i < ds->size(); i++) {
            cout << setw(10) << left << (*ds)[i]->get_id();
            for (Size j = 0; j < ds->num_attr(); j++) {
                if ((*schema)[j]->can_cast_to_c()) {
                    cout << setw(10) << left
                         << (*schema)[j]->get_c_val((*ds)(i, j));
                } else {
                    cout << setw(10) << left
                         << (*schema)[j]->get_d_val((*ds)(i, j));
                }
            }
            cout << setw(6) << left << (*ds)[i]->get_label() << endl;
        }

        return 0;
    } catch (exception& e) {
        cout << e.what() << endl;
        return 1;
    } catch (...) {
        cout << "unknow_error" << endl;
        return 2;
    }
}
