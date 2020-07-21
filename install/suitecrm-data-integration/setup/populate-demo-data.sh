#!/bin/bash

cd ../scripts/
./kitchen.sh -file=../setup/populateDemoData.kjb -level=Error > ../logs/populate-demo-data.log


