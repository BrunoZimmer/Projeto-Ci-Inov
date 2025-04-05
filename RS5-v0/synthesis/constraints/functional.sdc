# SDC File for MAC Circuit

# ---------------------------------------------------------
# Define the primary clock
# ---------------------------------------------------------
set_load_unit -femtofarads
set_time_unit -nanoseconds

# Define clock "clk" with a period of 4 ns (250 MHz)
create_clock -name clk -period 2.0 [get_ports clk]

# ---------------------------------------------------------
# Set clock uncertainty
# ---------------------------------------------------------
set_input_delay -clock clk -max 2.0 [all_inputs]
set_input_delay -clock clk -min 0.5 [all_inputs]

# ---------------------------------------------------------
# Set output delays
# ---------------------------------------------------------

# Set output delay relative to the rising edge of the clock
# Assume external delay of 1.5 ns for acc_out
set_input_delay -clock clk -max 0.6 [all_inputs]
set_input_delay -clock clk -min 0.2 [all_inputs]

# ---------------------------------------------------------
# Set output delays
# ---------------------------------------------------------

# Set output delay relative to the rising edge of the clock
# Assume external delay of 1.5 ns for acc_out
set_output_delay -clock clk -max 0.5 [all_outputs]
set_output_delay -clock clk -min 0.15 [all_outputs]

### Ignoring the time analysis for the Reset
set_false_path -from [get_ports {reset_n}]

set_clock_latency -source 0.06 {clk}

### INPUTS
set_input_transition 0.1 [all_inputs]
set_max_fanout 1 [all_inputs]

### OUTPUTS
# set_load 1000 [all_outputs]
set_load 5 [all_outputs]
