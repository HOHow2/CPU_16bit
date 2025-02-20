# global  connections
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$} -power
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDDPE$}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDDCE$}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VPWR}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VPB}
add_global_connection -defer_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VSS$} -ground
add_global_connection -defer_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VSSE$}
add_global_connection -defer_connection -net {VSS} -inst_pattern {.*} -pin_pattern {VGND}
add_global_connection -defer_connection -net {VSS} -inst_pattern {.*} -pin_pattern {VNB}
add_global_connection -defer_connection -net {Control_unit_module/zero_} -inst_pattern {.*} -pin_pattern {zero_} -ground
global_connect


#add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPWR$} -power
#add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VGND$} -ground
#add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VNB$}
#add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPB$}


# Define voltage domain
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}


#Define the ring structure
define_pdn_grid -name {grid} -voltage_domains {CORE}
add_pdn_stripe -grid {grid} -layer {met1} -width {0.17} -pitch {2.4} -offset {0} -followpins
add_pdn_ring -grid {grid} -layer {met4 met5} -widths 1.6 -spacings 2.0 -core_offset 5 -extend_to_boundary
add_pdn_ring -grid {grid} -layer {met4 met5} -widths 1.6 -spacings 2.0 -core_offset 5 -extend_to_boundary

add_pdn_connect -grid {grid} -layers {met1 met4}
add_pdn_connect -grid {grid} -layers {met4 met5}


#global_connect
