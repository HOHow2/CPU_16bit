catch {source "/home/hong/Workplace/CPU/PD_design/placement_cpu.tcl"}

################################################################
# Clock Tree Synthesis
repair_clock_inverters

clock_tree_synthesis -root_buf $cts_buffer -buf_list $cts_buffer \
  -sink_clustering_enable \
  -sink_clustering_max_diameter $cts_cluster_diameter

# CTS leaves a long wire from the pad to the clock tree root.
repair_clock_net

# place clock buffers
detailed_placement


# Report timing
report_worst_slack -min -digits 4
report_worst_slack -max -digits 4
report_tns -digits 4
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 4


################################################################
# Setup/hold timing repair

set_propagated_clock [all_clocks]

set repair_timing_use_grt_parasitics 0
if { $repair_timing_use_grt_parasitics } {
  # Global route for parasitics
  global_route -congestion_iterations 50
  estimate_parasitics -global_routing
} else {
  estimate_parasitics -placement
}



repair_timing -skip_gate_cloning

# Post timing repair.
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3

utl::metric "RSZ::worst_slack_min" [sta::worst_slack -min]
utl::metric "RSZ::worst_slack_max" [sta::worst_slack -max]
utl::metric "RSZ::tns_max" [sta::total_negative_slack -max]
utl::metric "RSZ::hold_buffer_count" [rsz::hold_buffer_count]


# checkpoint
write_db "/home/hong/Workplace/CPU/PD_design/CTS/cts_db.db"
write_def "/home/hong/Workplace/CPU/PD_design/CTS/cts_cpu.def"
