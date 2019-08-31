#!/bin/bash
. ../configuration/config
. functions

init

cd $KETTLE_DIR
./pan.sh "${1+$@}" -level "$KETTLE_LOG_LEVEL"
