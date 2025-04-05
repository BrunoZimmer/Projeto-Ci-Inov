#############################################################
## library_sets (lib from library)
#################################################################

set_db init_lib_search_path /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/timing
set_db init_hdl_search_path /home/ic/bruno.zimmer/Documents/Projeto/RS5-v0/rtl

# read_libs { fast_vdd1v0_basicCells.lib slow_vdd1v0_basicCells.lib }

read_mmmc ../constraints/RS5.mmmc.tcl

read_physical -lef { \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
}

read_netlist results/gate_level/RS5_logic_mapped.v

init_design

###############################################################################
# Setup
###############################################################################
set TOP_MODULE RS5

set LOCAL_PATH [pwd]

set OUT_FILES ${LOCAL_PATH}/results



set CURRENT_VIEW AV1
set_analysis_view -setup ${CURRENT_VIEW}  -hold ${CURRENT_VIEW}

report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power.rpt
report_power -unit mW -by_leaf_instance > ${OUT_FILES}/reports/${TOP_MODULE}_power_leaf.rpt



