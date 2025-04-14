#!/bin/bash


echo "THIS: $(dirname -- $(readlink -fn -- "$0"))"

export CURRENT_PATH=$(dirname -- $(readlink -fn -- "$0"))

if [ -z $1 ]
then
  VERBOSITY="+UVM_VERBOSITY=UVM_MEDIUM"
else
  VERBOSITY="+UVM_VERBOSITY=$1"
fi

xrun -lwdgen -access rwc $UVMHOME -sv -f file_list.f ${VERBOSITY} -input probes.tcl -ALLOWREDEFINITION