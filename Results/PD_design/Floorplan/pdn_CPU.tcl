# global  connections
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPWR$} -power
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VGND$} -ground
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VNB$}
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPB$}


# Define voltage domain
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}


#Define the ring structure
define_pdn_grid -name {grid} -voltage_domains {CORE}

add_pdn_ring -grid {grid} -layer {met3 met4} -widths 1.6 -spacings 3.0 -core_offset 3
add_pdn_ring -grid {grid} -layer {met3 met4} -widths 1.6 -spacings 3.0 -core_offset 5

# Connect metal layers for power and ground
add_pdn_connect -grid {grid} -layers {met3 met4}

global_connect
