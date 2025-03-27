
setPlaceMode -place_global_max_density 100
setPlaceMode -congEffort high
setMultiCpuUsage -localCpu 8
place_design

scanReorder

assignIoPins

