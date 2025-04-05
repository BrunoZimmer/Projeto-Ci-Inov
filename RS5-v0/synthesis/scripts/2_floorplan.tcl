
# Agregar para adicao de pads
#loadIoFile ../io/mac_TOP.io

globalNetConnect  VDD -type pgpin -pin VDD 
globalNetConnect  VSS -type pgpin -pin VSS  

# Agregar para adicao de pads
#globalNetConnect  VDDIOR -type pgpin -pin VDDIOR 
#globalNetConnect  VSSIOR -type pgpin -pin VSSIOR

# defIn ../genus/outputs/scan_chain.def

# A corrigir -- somente para adicao de pads

#floorPlan -site CoreSite -s 66.2 64.98 776.8 750 776.8 755.02
#floorPlan -site CoreSite -s 66.2 64.98 1553.8 1555.02 1553.8 1555.02

#createRegion dut 930 930 1000 1000
#
#definePartition \
#  -hinst dut \
#  -coreSpacing 0 0 0 0 \
#  -railWidth 0.16 \
#  -minPitchLeft 2 \
#  -minPitchRight 2 \
#  -minPitchTop 2 \
#  -minPitchBottom 2 \
#  -reservedLayer {1 2 3 4} \
#  -pinLayerTop {2 4} \
#  -pinLayerLeft {3} \
#  -pinLayerBottom {2 4} \
#  -pinLayerRight {3} \
#  -placementHalo 1 1 1 1 \
#  -routingHalo 1.0 \
#  -routingHaloTopLayer 11 \
#  -routingHaloBottomLayer 1

floorPlan -adjustToSite -su 1 0.7 5.0 5.0 5.0 5.0

#addIoFiller -cell {padIORINGFEED1 padIORINGFEED3 padIORINGFEED5 padIORINGFEED10 padIORINGFEED60}

addRing \
  -nets {VDD VSS} \
  -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} \
  -width 0.3 \
  -spacing 0.6

#  -type {core_rings block_rings} \
#  -around {default_power_domain user_defined} \

sroute

#addWellTap -cell FILL1 -cellInterval 6

#addStripe \
#  -nets {VDD VSS} \
#  -layer Metal4 \
#  -width 0.12 \
#  -spacing 0.4 \
#  -number_of_sets 4 \
#  -start 10 \
#  -stop 60

setDesignMode -topRoutingLayer 10
setDesignMode -bottomRoutingLayer 2

