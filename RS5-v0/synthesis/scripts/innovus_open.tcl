set LOCAL_PATH [pwd]

set OUT_FILES ${LOCAL_PATH}/../genus_2ns_indelay/results
# set OUT_FILES /home/ic/bruno.zimmer/Documents/Projeto/RS5-v0/synthesis/genus_old/results


# set init_mmmc_file ../innovus/cmn/RS5.mmmc.tcl 
# set init_mmmc_file ../genus_old/results/innovus_data/cmn/RS5.mmmc.tcl 
set init_mmmc_file ${OUT_FILES}/innovus_data/cmn/RS5.mmmc.tcl 

set init_lef_file { \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
}


defIn outpts/def/rs5.def