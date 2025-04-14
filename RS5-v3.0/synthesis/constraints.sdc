##############################################################
## Logical / Physical synthesis constraints ##
##############################################################

### CONFIGS
set sdc_version 1.5
set_load_unit -femtofarads
set_time_unit -nanoseconds

### Creating the clock of 500 MHz 
set period_clock 2;
create_clock -name {ck} -period $period_clock [get_ports {ck}]

# Define clock uncertainty (e.g., clock jitter)
set_clock_uncertainty -setup 0.1 [get_clocks ck]
set_clock_uncertainty -hold 0.1 [get_clocks ck]

### Ignoring the time analysis for the Reset
set_false_path -from [get_ports {rst}] 

### OUTPUTS
set_load 0.05 [all_outputs]

# input and output delay
set_input_delay -clock ck [expr ${period_clock}/4] [all_inputs]
set_output_delay -clock ck [expr ${period_clock}/4] [all_outputs]
