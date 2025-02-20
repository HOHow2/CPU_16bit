
catch {source "/home/hong/Workplace/CPU/PD_design/floorplan_CPU.tcl"}
source "/home/hong/Workplace/CPU/PD_design/tracks_CPU.tracks"

##################################################################
### Global placement

# Log file
 foreach layer_adjustment $global_routing_layer_adjustments {
  	lassign $layer_adjustment layer adjustment
  	set_global_routing_layer_adjustment $layer $adjustment
  	
 }


set_routing_layers -signal $global_routing_layers \
  -clock $global_routing_clock_layers
#set_macro_extension 2

global_placement -routability_driven -density 0.8 -pad_lef 3 -pad_right 3





################################################################
# Repair max slew/cap/fanout violations and normalize slews
source $layer_rc_file
set_wire_rc -signal -layer met1
set_wire_rc -clock  -layer met5
estimate_parasitics -placement
#set_dont_use $dont_use
buffer_ports -inputs -outputs


repair_design -slew_margin $slew_margin -cap_margin $cap_margin
repair_tie_fanout -separation $tie_separation $tielo_port
repair_tie_fanout -separation $tie_separation $tiehi_port
repair_timing

set_placement_padding -global -left 1 -right 1

# Detailed Placement
detailed_placement
check_placement


# post resize timing report (ideal clocks)
report_worst_slack -min -digits 4
report_worst_slack -max -digits 4
report_tns -digits 4
# Check slew repair
report_check_types -max_slew -max_capacitance -max_fanout -violators



utl::metric "DPL::utilization" [format %.1f [expr [rsz::utilization] * 100]]
utl::metric "DPL::design_area" [sta::format_area [rsz::design_area] 0]


# checkpoint
write_db "/home/hong/Workplace/CPU/PD_design//Placement/placement_cpu.db"
write_def "/home/hong/Workplace/CPU/PD_design/Placement/placement.def"


