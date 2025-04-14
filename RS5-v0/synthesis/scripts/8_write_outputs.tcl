
# report_timing
# report_timing -physical


saveDesign outputs/innovus_db/rs5_placed.tcl

defOut outputs/def/rs5.def


report_area -include_physical > results/area_physical.txt
report_area > results/area.txt
report_timing  > results/timing.txt
report_power > results/power.txt
reportDensity > results/density.txt
