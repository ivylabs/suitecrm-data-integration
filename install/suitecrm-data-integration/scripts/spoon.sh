#!/bin/bash


. ../configuration/config

echo " Loading Properties "
echo " - JVM Memory Allocation : "$KETTLE_JVM_MEM
echo "-----------------------------------------"
echo ""

. functions

init

OPT="-Dorg.eclipse.swt.browser.DefaultType=mozilla $OPT"
export OPT=$OPT
cd $KETTLE_DIR
./spoon.sh "${1+$@}"
