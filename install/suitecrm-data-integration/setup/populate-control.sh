#!/bin/bash

cd ../suitecrm-data-integration/scripts/
./pan.sh -file=../../install/populateControl.ktr -level=Error > ../logs/populate-control-table.log
