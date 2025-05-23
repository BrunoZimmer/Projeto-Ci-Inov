##############################################################
## Logical / Physical synthesis constraints ##
##############################################################

### CONFIGS
set sdc_version 1.5
set_load_unit -femtofarads
set_time_unit -nanoseconds

### Creating the clock of 500 MHz
set period_clock 4;
create_clock -name {clk} -period $period_clock [get_ports {clk}]

### Ignoring the time analysis for the Reset
set_false_path -from [get_ports {reset_n}]
set_false_path -from [get_ports {sys_reset_i}]

### INPUTS
set_input_transition 0.1 [all_inputs]
set_max_fanout 1 [all_inputs]

### OUTPUTS
# set_load 1000 [all_outputs]
# set_load 500 [all_outputs]
set_load 50 [all_outputs]

# input and output delay
set_input_delay -clock ck [expr ${period_clock}/4] [all_inputs]
set_output_delay -clock ck [expr ${period_clock}/4] [all_outputs]


# não funcionou, ali no report timing to innovus ele reclama que:
    # ideal_clock_waveform     Clock waveform is ideal                    1
    # no_drive                 No drive assertion                         5
    # no_input_delay           No input delay assertion with respect to clock   4
    # uncons_endpoint          Unconstrained signal arriving at end point 1974

    # tentei usar esse comando mas deu ruim, uma hora volto nisso.
# set_input_delay -clock [get_ports {clk}] -add_delay 1 [all_inputs]
