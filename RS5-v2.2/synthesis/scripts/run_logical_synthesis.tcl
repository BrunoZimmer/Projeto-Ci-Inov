###############################################################################
# TOP 
###############################################################################
# set DESIGN NanoCPU

#################################################################
## library_sets (lib from library)
#################################################################

set_db init_lib_search_path /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/timing
set_db init_hdl_search_path /home/ic/bruno.zimmer/Projeto/RS5-v2.2/rtl

read_libs { fast_vdd1v0_basicCells.lib slow_vdd1v0_basicCells.lib }

read_physical -lef { \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
}



###############################################################################
# Setup
###############################################################################
set TOP_MODULE RS5

set LOCAL_PATH [pwd]

set TECH_PATH /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/

set OUT_FILES ${LOCAL_PATH}/results

###############################################################################
# Custom FLOW
###############################################################################
set load_pdk                  1
set tool_config               1
set clock_gating              1
set load_hdl                  1
set elaborate                 1
set synthesis                 1
set save_reports              1
set write_netlist             1
set export_innovus            1
set verification              0
set stop                      1


###############################################################################

if { $load_pdk == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Load the pdk using MMMC"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	# Multi-Mode Multi-Corner (MMMC)

    read_mmmc ../constraints/RS5.mmmc.tcl

}



if { $tool_config == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Configuration of the Genus"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	set_multi_cpu_usage -local_cpu 8
	# set_db super_thread_servers "localhost"

	set_db lp_default_probability 0.5
	# set_db lp_default_toggle_rate [expr 0.5 * double(1000) / ${period_clk}] --RETIRAR

	### Tool effort, default is mediun
	set_db syn_global_effort high
	set_db syn_generic_effort high
	set_db syn_map_effort high
	set_db syn_opt_effort high

	### keep hierarchy
	set_db auto_ungroup none

	### Set PLE (Generates a set of load values, which were obtained from the physical layout..
	# estimator (PLE) or wire-load model, for all the nets in the specified design)
	set_db interconnect_mode ple

	### controls the verbosity of the tool
	set_db information_level 9

	### Avoid proceeding with latche inference
	set_db hdl_error_on_latch false
	# foreach latchInst [all des seqs -level_sensitive] { puts "[vname $latchInst]" }

	#Prevent replacing synchronous part of an always feeding back flip flop
	# set_db optimize_constant_feedback_seqs false

	# set_db optimize_constant_0_flops false
	#nome depois do elaborate
    #get_db [ set_db inst:REG ] .preserve true 
}


if { $clock_gating == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Control Clock Gating "
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	set_db lp_insert_clock_gating true

}


if { $load_hdl == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Load hdl files"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	read_hdl -define SYNTH -sv "../../rtl/RS5_pkg.sv						\
								../../rtl/aes/riscv_crypto_sbox_aes_out.sv 	\
								../../rtl/aes/riscv_crypto_sbox_aes_top.sv 	\
								../../rtl/aes/riscv_crypto_sbox_inv_mid.sv 	\
								../../rtl/aes/riscv_crypto_aes_fwd_sbox.sv 	\
								../../rtl/aes/riscv_crypto_aes_sbox.sv		\					\
								../../rtl/aes_unit.sv 						\
								../../rtl/amo.sv 							\
								../../rtl/CSRBank.sv 						\
								../../rtl/decode.sv 						\
								../../rtl/decompresser.sv 					\
								../../rtl/div.sv 							\
								../../rtl/execute.sv 						\
								../../rtl/fetch.sv 							\
								../../rtl/lrsc.sv 							\
								../../rtl/mmu.sv 							\
								../../rtl/mulNbits.sv						\
								../../rtl/mul.sv 							\
								../../rtl/regbank.sv 						\
								../../rtl/retire.sv 						\
								../../rtl/vectorALU.sv						\
								../../rtl/vectorCSRs.sv						\
								../../rtl/vectorLSU.sv						\
								../../rtl/vectorRegbank.sv  				\
								../../rtl/vectorUnit.sv						\
								../../rtl/FlipFlopD.sv						\
								../../rtl/RAMFFT.sv							\
								../../rtl/RS5.sv							\
								../../rtl/fft_acc/adder3_n.sv				\
								../../rtl/fft_acc/butterfly2_n.sv		 	\
								../../rtl/fft_acc/butterfly4_n.sv		 	\ 
								../../rtl/fft_acc/butterfly8_n.sv			\ 
								../../rtl/fft_acc/butterfly16_n.sv			\ 
								../../rtl/fft_acc/butterfly32_n.sv			\ 
								../../rtl/fft_acc/clk_div.sv				\ 
								../../rtl/fft_acc/control_unit.sv			\ 
								../../rtl/fft_acc/fft_wrapper.sv			\ 
								../../rtl/fft_acc/get_negative_n.sv			\ 
								../../rtl/fft_acc/m_ram.sv					\ 
								../../rtl/fft_acc/multiplier_n.sv			\ 
								../../rtl/fft_acc/mux_n.sv					\ 
								../../rtl/fft_acc/pipling_stage_n.sv		\ 
								../../rtl/fft_acc/s_ram.sv					\	 
								../../rtl/fft_acc/top_n.sv					\	 
								../../rtl/fft_acc/twiddle_rom_imag_n.sv		\ 
								../../rtl/fft_acc/twiddle_rom_real_n.sv		"
}


if { $elaborate == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Elaboration"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	elaborate ${TOP_MODULE}
	set_db optimize_constant_feedback_seqs false
	# Applying the constraints
	init_design

	### The following example shows how to set max_fanout attribute for all input ports
	# this has already been defined in the constraints file
	# set_db [get_ports -filter direction==in] .max_fanout 1

}



if { $synthesis == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Synthesis - mapping and optimization"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	# init_design
	syn_generic

	syn_map

	syn_opt

	# syn_generic -create_floorplan -physical
	# syn_map -physical
	# syn_opt

}



if { $save_reports == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write Reports"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	# Reports clock-gating information for the design
	report_clock_gating > ${OUT_FILES}/reports/${TOP_MODULE}_clock_gating.rpt

	# Returns the physical layout estimation (ple) information for the specified design
	report_ple > ${OUT_FILES}/reports/${TOP_MODULE}_ple.rpt

	# Report area
	report_gates > ${OUT_FILES}/reports/${TOP_MODULE}_gates.rpt
	report_area >  ${OUT_FILES}/reports/${TOP_MODULE}_area.rpt

	### report timing and power
	###################################
	set CURRENT_VIEW AV1
	set_analysis_view -setup ${CURRENT_VIEW}  -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	#---
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	##################################
	set CURRENT_VIEW AV2
	set_analysis_view -setup ${CURRENT_VIEW}  -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	#---
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	# ###################################
	set CURRENT_VIEW AV3
	set_analysis_view -setup ${CURRENT_VIEW}  -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	#---
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	# ###################################
	set CURRENT_VIEW AV4
	set_analysis_view -setup ${CURRENT_VIEW}  -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	#---
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt


	### Report timming -unconstrained amd -verbose
	report timing -lint -verbose > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}_verbose.rpt
	report_timing -unconstrained > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}_verbose_unconstrained.rpt

}


if { $write_netlist == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write netlist"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	write_hdl > ${OUT_FILES}/gate_level/${TOP_MODULE}_logic_mapped.v

	## nominal
	set CURRENT_VIEW AV1
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

	## worst setup
	set CURRENT_VIEW AV2
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

	## worst hold
	set CURRENT_VIEW AV3
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

	## worst hold
	set CURRENT_VIEW AV4
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

}


if { $export_innovus == 1 } {
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Export design to Innovus"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	# ### default view
	set_analysis_view -setup AV4 AV2 -hold AV1 AV3 


	### To generate all files needed to be loaded in an Innovus session, use the following command:

	# write_design -innovus -base_name ${OUT_FILES}/physical_synthesis/work/data

	# set CURRENT_VIEW AV1
	write_db -common -legacy -all_root_attributes ${OUT_FILES}/innovus_data/
}


if { $verification == 1 } {

	xrun -f ./Verification_script.f -gui
#   xrun -f -smartorder -work work -define USE_NETLIST -top mac_tb -access +rw -maxdelays -sdf_cmd_file ../scripts/sdf.cmd

# 	${TECH_PATH}/gsclib045/verilog/slow_vdd1v0_basicCells.v
# 	./outputs/rs5_netlist.v
# 	../../tb/testbench.sv

}

if { $stop == 0 } {

  exit

}
