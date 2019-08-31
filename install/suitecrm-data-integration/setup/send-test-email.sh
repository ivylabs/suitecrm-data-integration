#!/bin/bash

cd ../scripts/
./pan.sh -file=../setup/sendTestEmail.ktr -level=Error > ../logs/smpt-test.log
