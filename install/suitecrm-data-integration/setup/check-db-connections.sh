#!/bin/bash

cd ../scripts/
./kitchen.sh -file=../setup/checkDBConnections.kjb -level=Error > ../logs/check-database-connections.log
