# Import important files
set tech_lef "/home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__max.tlef"
set std_cell_lef "/home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef"
set liberty_file "/home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v95.lib"
set site "unithd"

source "/home/hong/Workplace/test/helpers.tcl"
source "/home/hong/Workplace/test/flow_helpers.tcl"

# Design
set design "CPU"
set top_module "CPU_16bit"
set synth_verilog "/home/hong/Workplace/CPU/CPU_synthesized.v"
set sdc_file "/home/hong/Workplace/CPU/CPU_constraints.sdc"

#Pad
set io_pads "/home/hong/Chip_design/OpenROAD-flow-scripts/flow/platforms/sky130io/lef/sky130_ef_io__gpiov2_pad_wrapped.lef"
set corner_pads "/home/hong/Chip_design/OpenROAD-flow-scripts/flow/platforms/sky130io/lef/sky130_ef_io__corner_pad.lef"
set power_pads "/home/hong/Chip_design/OpenROAD-flow-scripts/flow/platforms/sky130io/lef/sky130_ef_io__vccd_hvc_pad.lef"
set ground_pads "/home/hong/Chip_design/OpenROAD-flow-scripts/flow/platforms/sky130io/lef/sky130_ef_io__vssd_hvc_pad.lef"

set die_area {0 0 150 150}
set core_area {20 20 130 130}

read_lef $tech_lef
read_lef $std_cell_lef
read_liberty "/home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v95.lib"
read_verilog $synth_verilog
link_design CPU_16bit
read_sdc $sdc_file


set_thread_count [exec getconf _NPROCESSORS_ONLN]
# Temporarily disable sta's threading due to random failures
sta::set_thread_count 1

utl::metric "IFP::ord_version" [ord::openroad_git_describe]
# Note that sta::network_instance_count is not valid after tapcells are added.
utl::metric "IFP::instance_count" [sta::network_instance_count]


initialize_floorplan -site unithd \
		-die_area $die_area \
       		-core_area $core_area


source -echo "/home/hong/Workplace/CPU/PD_design/tracks_CPU.tracks"

remove_buffers

######################################################
### IO placement
place_pin -pin_name run -layer met3 -location {0 20} -pin_size {0.3 0.3} -force_to_die_boundary
place_pin -pin_name resetn -layer met3 -location {0 25} -pin_size {0.3 0.3} -force_to_die_boundary
place_pin -pin_name clk -layer met3 -location {0 30} -pin_size {0.3 0.3} -force_to_die_boundary

# Place pin din
for {set i 0} {$i < 16} {incr i} {
	set j [expr int(5 * ($i + 7))];
	place_pin -pin_name "din[$i]" -layer met3 -location "0 $j" -pin_size {0.3 0.3} -force_to_die_boundary;
}


place_pin -pin_name done -layer met3 -location {150 20} -pin_size {0.3 0.3} -force_to_die_boundary


# Place pin Buswires
for {set a 0} {$a < 16} {incr a} {
         set b [expr int(5 * ($a + 5))];
	 place_pin -pin_name "buswires[$a]" -layer met3 -location "150 $b" -pin_size {0.3 0.3} -force_to_die_boundary;
 }



set tapcell_args "-distance 120 \
     -tapcell_master sky130_fd_sc_hd__tap_1 \
      -endcap_master sky130_fd_sc_hd__tap_1"


################################################################
# Macro Placement
if { [have_macros] } {
	global_placement -density 0.7
	rtl_macro_placer -halo_width 15 -halo_height 15 
}

# Tapcell insertion
eval tapcell $tapcell_args


# PDN generation
source -echo "/home/hong/Workplace/CPU/PD_design/pdn_CPU.tcl"
pdngen


report_design_area
write_def "/home/hong/Workplace/CPU/PD_design/CPU_fp.def"
write_db "/home/hong/Workplace/CPU/PD_design//CPU_fp.db"



