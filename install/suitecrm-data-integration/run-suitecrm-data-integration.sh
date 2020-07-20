#!/bin/bash

today=`date +%Y-%m-%d.%H:%M:%S`

echo ""
echo " The data extraction process is running..."
echo " You can see the output in the logs directory"

cd scripts/
./kitchen.sh -file=../solution/suitecrm.kjb -level=Basic
