# read library
read_liberty -min sky130_fd_sc_hd__ff_100C_1v65.lib
read_liberty -max sky130_fd_sc_hd__ff_100C_1v65.lib

# read synthesized file
read_verilog synthesized.v

# set top module
link_design IR

# set constraints
create_clock -name clk -period 10 {clk}

set_input_delay -clock clk 1 {din[*]}

set_input_delay -clock clk 1 {IRin}

#
set_drive 2 {get_ports din[*]}
set_load -rise 0.1 {IR_outp[*]}

report_checks -path_delay min_max



