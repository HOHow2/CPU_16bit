source "/home/hong/Workplace/CPU/PD_design/Placement_CPU.tcl"

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


write_db "/home/hong/Workplace/CPU/PD_design/CTS/cts_db.db"
write_def "/home/hong/Workplace/CPU/PD_design/CTS/cts_cpu.def"
