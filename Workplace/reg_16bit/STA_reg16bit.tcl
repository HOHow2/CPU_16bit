#!/usr/bin/tclsh

log_begin "/home/hong/Workplace/Verilog/Verification_files/STA_reports/Reg_16bit_STA.rpt"

# pre STA analysis
read_liberty sky130_fd_sc_hd__ff_100C_1v65.lib
read_verilog reg16bit_synthesized.v

# set top module
link_design register_16bit
read_sdc reg_constraints.sdc

puts "\n\n"
puts "Units:"
report_units
puts "\n\n\n"

puts "Check timing"
puts "\n"
report_checks -path_delay max -digits 4 -fields [list capacitance, slew, input_pins, net, fanout]
report_checks -path_delay min -digits 4 -fields [list capacitance, slew, input_pins, net, fanout]

puts "\n\n\n"
puts "Check violators"
puts "\n"
report_check_types -violators

puts "\n\n\n"
puts "Power"
puts "\n"
report_power -digits 4
puts "\n\n"
report_clock_properties

log_end
