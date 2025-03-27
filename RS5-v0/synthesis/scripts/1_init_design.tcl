set init_pwr_net {VDD}
set init_gnd_net {VSS}

# Agregar para adicao de pads
#set init_pwr_net {VDD VDDIOR}
#set init_gnd_net {VSS VSSIOR}

set TOP_MODULE RS5
set LOCAL_PATH [pwd]

set OUT_FILES ${LOCAL_PATH}/../genus_old/results
# set OUT_FILES /home/ic/bruno.zimmer/Documents/Projeto/RS5-v0/synthesis/genus_old/results


# set init_mmmc_file ../innovus/cmn/RS5.mmmc.tcl 
# set init_mmmc_file ../genus_old/results/innovus_data/cmn/RS5.mmmc.tcl 
set init_mmmc_file ${OUT_FILES}/innovus_data/cmn/RS5.mmmc.tcl 

set init_lef_file { \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
}
# Agregar para adicao de Pads
#	../../gpdk045_workspace/giolib045_v3.3/lef/giolib045.lef }

# set init_verilog { ../innovus/rs5_netlist.v }
# set init_verilog { /home/ic/bruno.zimmer/Documents/Projeto/RS5-v0/synthesis/genus_old/results/gate_level/RS5_logic_mapped.v }
set init_verilog  ${OUT_FILES}/gate_level/RS5_logic_mapped.v 

# Agregar para adicao de pads
#set init_verilog { ../rtl/mac_TOP.v ../rtl/mac_PADS.v ../genus/outputs/mac_netlist.v  }
#set init_top_cell mac_TOP

init_design


