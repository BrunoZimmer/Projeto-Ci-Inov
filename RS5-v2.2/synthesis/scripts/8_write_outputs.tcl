
#report_timing

saveDesign outputs/innovus_db/rs5_placed.tcl

#saveDesign -cellview {dut rs5 layout}
#help defOut

defOut outputs/def/rs5.def

#streamOut outputs/gds/rs5.gds -libName DesignLib -units 2000 -mode ALL
#
##write_parasitics -spf_file filter.spf -rc_corner default_emulate_rc_corner
#write_db Final

