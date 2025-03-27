
add_ndr \
  -name CTS_2W1S \
  -width_multiplier {Metal1:Metal5 1.0}

create_route_type \
  -name top_rule \
  -non_default_rule CTS_2W1S \
  -top_preferred_layer Metal6 \
  -bottom_preferred_layer Metal9

create_route_type \
  -name trunk_rule \
  -non_default_rule CTS_2W1S \
  -top_preferred_layer Metal7 \
  -bottom_preferred_layer Metal10

#create_route_type \
#  -name leaf_rule \
#  -non_default_rule CTS_2W1S \
#  -top_preferred_layer Metal3 \
#  -bottom_preferred_layer Metal1

set_ccopt_property \
  -net_type trunk route_type trunk_rule

set_ccopt_property \
  -net_type top route_type top_rule

  #set_ccopt_property \
#  -net_type leaf route_type leaf_rule

set_ccopt_property routing_top_min_fanout 10000

optDesign -preCTS
clock_opt_design -cts  
ccopt_design -outDir clk_report
optDesign -postCTS

