#!/bin/bash

cd ../scripts/
./kitchen.sh -file=../setup/executeDDLScripts.kjb -level=Error > ../logs/create-tables.log
