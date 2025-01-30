package require openlane
prep -design full_adder -tag run1 -overwrite
run_synthesis
run_floorplan
run_placement
run_routing
run_magic

