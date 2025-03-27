# SDC File for MAC Circuit

# ---------------------------------------------------------
# Define the primary clock
# ---------------------------------------------------------

# Define clock "clk" with a period of 20 ns (50 MHz)
create_clock -name clk -period 20.0 [get_ports clk]

# ---------------------------------------------------------
# Set input delays
# ---------------------------------------------------------

# Set input delay relative to the rising edge of the clock
# Assume external delay of 2 ns for inputs a, b, and acc_in
set_input_delay -clock clk -max 2.0 [get_ports {a b acc_in}]
set_input_delay -clock clk -min 0.5 [get_ports {a b acc_in}]

# ---------------------------------------------------------
# Set output delays
# ---------------------------------------------------------

# Set output delay relative to the rising edge of the clock
# Assume external delay of 1.5 ns for acc_out
set_output_delay -clock clk -max 1.5 [get_ports acc_out]
set_output_delay -clock clk -min 0.5 [get_ports acc_out]

# ---------------------------------------------------------
# Define timing exceptions
# ---------------------------------------------------------

# Set false path between registers if needed (example path)
# set_false_path -from [get_cells register_a] -to [get_cells register_b]

# Set multicycle paths (e.g., if multiplication takes multiple cycles)
# Example: multiplication takes 2 cycles
#set_multicycle_path 2 -from [get_cells mul_stage1_reg] -to [get_cells mul_stage2_reg]

# ---------------------------------------------------------
# Specify I/O delay uncertainty
# ---------------------------------------------------------

# Add uncertainty for input and output delays (e.g., due to jitter or process variations)
set_input_delay -clock clk -max 2.2 [get_ports {a b acc_in}]
set_output_delay -clock clk -max 1.7 [get_ports acc_out]

# ---------------------------------------------------------
# Set clock uncertainty
# ---------------------------------------------------------

# Define clock uncertainty (e.g., clock jitter)
set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_uncertainty -hold 0.1 [get_clocks clk]

# ---------------------------------------------------------
# Specify max delay for critical paths
# ---------------------------------------------------------

# Set maximum delay (e.g., critical path must not exceed 8 ns)
set_max_delay 8.0 -from [get_ports {a b acc_in}] -to [get_ports acc_out]

# ---------------------------------------------------------
# Specify input and output transition times
# ---------------------------------------------------------

# Set input transition times (slew rate at input ports)
set_input_transition 1.0 [get_ports {a b acc_in}]

# Set output transition times (slew rate at output ports)
set_load 0.05 [get_ports acc_out] 

# ---------------------------------------------------------
# Define clock groups
# ---------------------------------------------------------

# If there are multiple clocks, define them as mutually exclusive
# Example: asynchronous clock domains clk1 and clk2
# set_clock_groups -asynchronous -group {clk1} -group {clk2}

