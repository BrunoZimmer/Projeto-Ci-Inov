#################################################################################
#
# Created by Genus(TM) Synthesis Solution 23.12-s086_1 on Thu Feb 27 17:01:57 -03 2025
#
#################################################################################

set TECH_DIR /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4

## library_sets
create_library_set -name Fast1.0 -timing $TECH_DIR/gsclib045/timing/fast_vdd1v0_basicCells.lib 

#create_opcond

create_rc_corner -name QX -qrc_tech $TECH_DIR/gsclib045_tech/qrc/qx/gpdk045.tch 
create_timing_condition -name Cond1 -library_sets Fast1.0

create_delay_corner -name Corner1 -timing_condition Cond1  -rc_corner QX

create_constraint_mode -name Functional -sdc_files ../constraints/functional.sdc

create_analysis_view -name AV1 -constraint_mode Functional -delay_corner Corner1

set_analysis_view -setup AV1 -hold AV1 