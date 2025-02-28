#Design


#source "/home/seaky/chip_design/OpenLane/configuration/checkers.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/general.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/synthesis.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/floorplan.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/placement.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/cts.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/routing.tcl"
#source "/home/seaky/chip_design/OpenLane/configuration/extraction.tcl"


#set ::env(VERILOG_FILES_BLACKBOX) "/home/seaky/chip_design/OpenLane/designs/CPU_16bit/src/synthesized.v"
set ::env(STA_MULTICORNER) "0"
set ::env(RUN_LINTER) 0
set ::env(DESIGN_NAME) {CPU}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(SYNTH_STRATEGY) "AREA 3"
set ::env(IO_PCT) 0.1


set ::env(PNR_SDC_FILE) "/home/seaky/chip_design/OpenLane/designs/CPU_16bit/src/CPU_constraints.sdc"
#set ::env(SIGNOFF_SDC_FILE) "/home/seaky/chip_design/OpenLane/designs/CPU_16bit/src/CPU_constraints.sdc"



#set ::env(STA_REPORT_POWER) "1"

set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}


