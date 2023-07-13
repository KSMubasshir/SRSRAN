#!/bin/bash
cd ..
mkdir build
sudo cmake ../
cd build
sudo cmake ../
sudo make -j `nproc`
cd srsepc/src/
sudo cp ../../../srsepc/epc.conf.example epc.conf
sudo cp ../../../srsepc/user_db.csv.example user_db.csv
sudo cp ../../../srsepc/mbms.conf.example mbms.conf
cd ../../srsenb/src/
sudo cp ../../../srsenb/enb.conf.example enb.conf
sudo cp ../../../srsenb/rr.conf.example rr.conf
sudo cp ../../../srsenb/rb.conf.example rb.conf
sudo cp ../../../srsenb/sib.conf.example sib.conf
sudo cp ../../../srsenb/sib.conf.mbsfn.example sib.conf.mbsfn
cd ../../srsue/src/
sudo cp ../../../srsue/ue.conf.example ue.conf