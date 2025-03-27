###############################################################################
# TOP 
###############################################################################
set DESIGN NanoCPU

#################################################################
## library_sets (lib from library)
#################################################################

set TECH_PATH /tools/pdk/cadence/gpdk045/gsclib045_all_v4.4

#LOCAL
# set TECH_PATH  /tools/pdk/cadence/gpdk045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_all_v4.4


read_libs "${TECH_PATH}/gsclib045_lvt/timing/fast_vdd1v0_basicCells_lvt.lib"

read_physical -lef "{${TECH_PATH}/gsclib045_tech/lef/gsclib045_tech.lef ${TECH_PATH}/gsclib045_lvt/lef/gsclib045_lvt_macro.lef}"

read_qrc "${TECH_PATH}/gsclib045_tech/qrc/qx/gpdk045.tch"


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Configuration of the Genus"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    set_db syn_global_effort high

    ### keep hierarchy
    set_db auto_ungroup none

    ### Set PLE (Generates a set of load values, which were obtained from the physical layout)
    set_db interconnect_mode ple

    ### controls the verbosity of the tool
    set_db information_level 7

    ### Avoid proceeding with latche inference
    set_db hdl_error_on_latch true

    set_db lp_insert_clock_gating true

puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "  Load Design   and Elaboration"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

   read_hdl -sv ../rtl/nanoCPU.sv
   elaborate $DESIGN

   read_sdc ./constraints.sdc

   ## for debug purpuses
   puts $::dc::sdc_failed_commands

   init_design 


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Synthesis - mapping and optimization"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    syn_generic
    syn_map
    syn_opt

puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write Reports"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    report_gates > ${DESIGN}_report.rpt
    report_area >> ${DESIGN}_report.rpt
    report_power -unit mW >> ${DESIGN}_report.rpt
    report_timing >> ${DESIGN}_report.rpt
    

puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write netlist"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    write_hdl > ./${DESIGN}_logic_mapped.v
    write_sdf > ./${DESIGN}_logic_mapped.sdf


