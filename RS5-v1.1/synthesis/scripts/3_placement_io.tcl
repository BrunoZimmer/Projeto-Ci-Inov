
setPlaceMode -place_global_max_density 30
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_auto_blockage_in_channel soft
setPlaceMode -place_detail_preroute_as_obs true
# setPlaceMode -congEffort 
# congRepair
# setOptMode -effort
place_opt_design
# place_design

scanReorder

assignIoPins

