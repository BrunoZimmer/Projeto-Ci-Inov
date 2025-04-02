
verifyConnectivity -type regular -geomConnect -error 1000 -warning 50
verifyConnectivity -nets {VDD VSS} -type all -error 1000 -warning 50
verifyGeometry -allowDiffCellViol 
#
verify_drc
#

#timeDesign -postRoute
#timeDesign -postRoute -hold
