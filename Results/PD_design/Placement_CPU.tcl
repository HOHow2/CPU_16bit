source "/home/hong/Workplace/CPU/PD_design/floorplan_CPU.tcl"
source "/home/hong/Workplace/CPU/PD_design/tracks_CPU.tracks"
# Define all variables
set global_routing_layer_adjustments {{met1 0} {met2 0} {met3 0} {met4 0} {met5 0}}
set global_routing_layers met1-met5
set global_routing_clock_layers met3-met5
set global_place_pad 2
set io_placer_hor_layer met3
set io_placer_ver_layer met2
set layer_rc_file "/home/hong/Workplace/CPU/PD_design/RC_CPU.rc"
set slew_margin 0
set cap_margin 0
set tie_separation 2
set tielo_port "sky130_fd_sc_hd__conb_1/LO"
set tiehi_port "sky130_fd_sc_hd__conb_1/HI"
set dont_use {sky130_fd_sc_hd__probe_p_* sky130_fd_sc_hd__probec_p_*}
set cts_buffer "sky130_fd_sc_hd__clkbuf_1"
set cts_cluster_diameter 10

##################################################################
### Global placement
 foreach layer_adjustment $global_routing_layer_adjustments {
  	lassign $layer_adjustment layer adjustment
  	set_global_routing_layer_adjustment $layer $adjustment
  	
 }


set_routing_layers -signal $global_routing_layers \
  -clock $global_routing_clock_layers


global_placement -routability_driven -density 0.8 -pad_lef 2 -pad_right 2



################################################################
# Repair max slew/cap/fanout violations and normalize slews
source $layer_rc_file
set_wire_rc -signal -layer met2
set_wire_rc -clock  -layer met5
estimate_parasitics -placement
set_dont_use $dont_use
buffer_ports -inputs -outputs


repair_design -slew_margin $slew_margin -cap_margin $cap_margin
repair_tie_fanout -separation $tie_separation $tielo_port
repair_tie_fanout -separation $tie_separation $tiehi_port
repair_timing

set_placement_padding -global -left 1 -right 1

# Detailed Placement
detailed_placement
# Improve placement
improve_placement
#Check placement
check_placement


# post resize timing report (ideal clocks)
report_worst_slack -min -digits 4
report_worst_slack -max -digits 4
report_tns -digits 4
# Check slew repair
report_check_types -max_slew -max_capacitance -max_fanout -violators


# Capture utilization before fillers make it 100%
utl::metric "DPL::utilization" [format %.1f [expr [rsz::utilization] * 100]]
utl::metric "DPL::design_area" [sta::format_area [rsz::design_area] 0]

# checkpoint
write_db "/home/hong/Workplace/CPU/PD_design//Placement/placement_cpu.db"
write_def "/home/hong/Workplace/CPU/PD_design/Placement/placement.def"



