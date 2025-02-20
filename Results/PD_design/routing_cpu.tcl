catch {source "/home/hong/Workplace/CPU/PD_design/cts_cpu.tcl"}


################################################################
# Global routing
pin_access -bottom_routing_layer met1 -top_routing_layer met5

set guide_file "/home/hong/Workplace/CPU/PD_design/Routing/cpu.route_guide"
global_route -guide_file $guide_file \
	    -congestion_iterations 100

#
set verilog_file "/home/hong/Workplace/CPU/PD_design/Routing/CPU_route.v"
write_verilog $verilog_file


################################################################
# Repair antennas post-Global Routing

utl::set_metrics_stage "grt__{}"
repair_antennas -iterations 5

check_antennas
utl::clear_metrics_stage
utl::metric "GRT::ANT::errors" [ant::antenna_violation_count]



################################################################
# Detailed routing

# Run pin access again after inserting diodes and moving cells
pin_access -bottom_routing_layer $min_routing_layer \
           -top_routing_layer $max_routing_layer

set route_drc "/home/hong/Workplace/CPU/PD_design/Routing/CPU_route_drc.rpt"
detailed_route -output_drc $route_drc \
	       -no_pin_access \
               -save_guide_updates \
               -bottom_routing_layer $min_routing_layer \
               -top_routing_layer $max_routing_layer \
               -verbose 0


################################################################
# Repair antennas post-DRT

set repair_antennas_iters 0
utl::set_metrics_stage "drt__repair_antennas__pre_repair__{}"
while {[check_antennas] && $repair_antennas_iters < 5} {
  utl::set_metrics_stage "drt__repair_antennas__iter_${repair_antennas_iters}__{}"

  repair_antennas

  detailed_route -save_guide_updates \
                 -bottom_routing_layer $min_routing_layer \
                 -top_routing_layer $max_routing_layer \
                 -verbose 0

  incr repair_antennas_iters
}

utl::set_metrics_stage "drt__{}"
check_antennas

utl::clear_metrics_stage
utl::metric "DRT::ANT::errors" [ant::antenna_violation_count]

if {![design_is_routed]} {
  error "Design has unrouted nets."
}


set repair_antennas_db "/home/hong/Workplace/CPU/PD_design/Routing/CPU_repaired_route.odb"
write_db $repair_antennas_db
