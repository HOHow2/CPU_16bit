source "/home/hong/Workplace/CPU/PD_design/routing_cpu.tcl"



################################################################
# Filler placement

filler_placement $filler_cells
check_placement -verbose


################################################################
# Extraction

#if { $rcx_rules_file != "" } {
#  define_process_corner -ext_model_index 0 X
#  extract_parasitics -ext_model_file $rcx_rules_file
#
#  set spef_file "/home/hong/Workplace/CPU/PD_design/Finish/finished_cpu.spef"
#  write_spef $spef_file
#
#  read_spef $spef_file
#}
#
#else {
  # Use global routing based parasitics inlieu of rc extraction
  estimate_parasitics -global_routing
#}

################################################################
# Final Report

report_checks -path_delay min_max -format full_clock_expanded \
  -fields {input_pin slew capacitance} -digits 4
report_worst_slack -min -digits 4
report_worst_slack -max -digits 4
report_tns -digits 4
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 4
report_clock_skew -digits 4
report_power -corner $power_corner

report_floating_nets -verbose
report_design_area

utl::metric "DRT::worst_slack_min" [sta::worst_slack -min]
utl::metric "DRT::worst_slack_max" [sta::worst_slack -max]
utl::metric "DRT::tns_max" [sta::total_negative_slack -max]
utl::metric "DRT::clock_skew" [expr abs([sta::worst_clock_skew -setup])]

# slew/cap/fanout slack/limit
utl::metric "DRT::max_slew_slack" [expr [sta::max_slew_check_slack_limit] * 100]
utl::metric "DRT::max_fanout_slack" [expr [sta::max_fanout_check_slack_limit] * 100]
utl::metric "DRT::max_capacitance_slack" [expr [sta::max_capacitance_check_slack_limit] * 100];
# report clock period as a metric for updating limits
utl::metric "DRT::clock_period" [get_property [lindex [all_clocks] 0] period]

