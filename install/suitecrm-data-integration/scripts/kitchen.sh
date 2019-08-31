#!/bin/bash

. ../configuration/config
. functions

init

cd $KETTLE_DIR
./kitchen.sh "${1+$@}" 
