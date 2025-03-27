set DESIGN riscv
set HDL4SYNTHESIS [concat [glob ../../rtl/*.sv] [glob ../../rtl/fft_acc/*.sv]]

set_db init_lib_search_path /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/timing
set_db init_hdl_search_path /home/ic/bruno.zimmer/Projeto/RS5-v1.1/rtl

read_libs { fast_vdd1v0_basicCells.lib slow_vdd1v0_basicCells.lib }

read_physical -lef { \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef \
	/home/ic/bruno.zimmer/FLP/gpdk045_workspace/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef \
}

read_mmmc ../constraints/mac.mmmc.tcl

# []
read_hdl -sv ${HDL4SYNTHESIS} 
# read_hdl -f file_list_new.f -incdir ../../rtl
# read_hdl mac.f
elaborate RS5
#read_sdc ../constraints/constraints.sdc

set_db dft_scan_style muxed_scan
set_db dft_identify_top_level_test_clocks true 
set_db dft_identify_test_signals true 
# define_dft shift_enable -name test_signal1 -active high scan_en
# define_dft scan_chain -name scan_chain_1 -sdi scanin -sdo scanout -shift_enable test_signal1
set_compatible_test_clocks -all
check_dft_rules > dft/${DESIGN}-DFTcheck
check_design -multiple_driver
report dft_registers > dft/${DESIGN}-DFTregs
report_dft_violations > dft/${DESIGN}-DFTViols

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

init_design

syn_generic

syn_map

# connect_scan_chain 
# report dft_chains >dft/chains.log
# report dft_registers > dftreg.rpt
# report dft_chains > dftchains.rpt

syn_opt

#reports
report_timing > reports/report_timing.rpt
report_power  > reports/report_power.rpt
report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt

#Outputs
write_hdl > outputs/rs5_netlist.v
write_sdc -view AV1 > outputs/rs5_netlist_constraints_AV1.sdc
write_sdc -view AV2 > outputs/rs5_netlist_constraints_AV2.sdc 
write_sdc -view AV3 > outputs/rs5_netlist_constraints_AV3.sdc
write_sdc -view AV4 > outputs/rs5_netlist_constraints_AV4.sdc 

write_sdf -view AV1 -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays_AV1.sdf
write_sdf -view AV2 -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays_AV2.sdf
write_sdf -view AV3 -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays_AV3.sdf
write_sdf -view AV4 -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays_AV4.sdf

# write_scandef > outputs/scan_chain.def

#xrun -f ../scripts/Verification_script.f 

#read_vcd rs5_tb.vcd 

report_timing > low_power/report_timing.rpt
report_power  > low_power/report_power.rpt
report_area   > low_power/report_area.rpt
report_qor    > low_power/report_qor.rpt

write_db -common -legacy -all_root_attributes ../innovus/



