#!/usr/bin/tclsh

log_begin "/home/hong/Workplace/Verilog/Verification_files/STA_reports/PC2bit_STA.rpt"

# pre STA analysis
read_liberty sky130_fd_sc_hd__ff_100C_1v65.lib
read_verilog PC2bit_synthesized.v

# set top module
link_design PC_2bit
read_sdc PC_constraints.sdc

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
#report_check_types -max_delay -max_slew -max_capacitance -max_fanout -digits 4

puts "\n\n\n"
puts "Power"
puts "\n"
report_power -digits 4
puts "\n\n"
report_clock_properties

log_end
