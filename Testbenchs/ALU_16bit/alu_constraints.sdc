# clock definition

create_clock -name clk -period 10 [get_ports clk] # clk = 10ns

# Input delay
set_input_delay 2 -clock clk [get_ports buswires] # input delay: 2ns

# Output delay
set_output_delay 1 -clock clk [get_ports alout] # output delay: 1ns


