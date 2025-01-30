#!/usr/bin/tclsh


read_liberty sky130_fd_sc_hd__ff_100C_1v65.lib

read_verilog synth.v

read_sdc alu_constraints.sdc

current_design ALU_16bit

report_checks -path_delay min_max -fields {slew input_pin output_pin}

write_sdc sta_output.sdc
