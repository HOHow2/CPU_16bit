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

set die_area {0 0 160 160}
set core_area {12 12 148 148}

read_lef $tech_lef
read_lef $std_cell_lef
read_lef  "/home/hong/Workplace/CPU/PD_design/Lib/sky130_ef_io.lef"
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


###########################################################
initialize_floorplan -site unithd \
		-die_area $die_area \
       		-core_area $core_area


source "/home/hong/Workplace/CPU/PD_design/tracks_CPU.tracks"

remove_buffers

######################################################
### IO placementset
  place_pin -pin_name run -layer met2 -location {60 160} -pin_size {0.3 0.3} -force_to_die_boundary
  place_pin -pin_name clk -layer met2 -location {80 180} -pin_size {0.3 0.3} -force_to_die_boundary
  place_pin -pin_name resetn -layer met2 -location {100 160} -pin_size {0.3 0.3} -force_to_die_boundary

  #Place pin din
  set x_location 0
  for {set i 0} {$i < 16} {incr i} {
	set k [expr int((8.5 * $i) + 15.0)]
        place_pin -pin_name din[$i] -layer met3 -location [list $x_location $k] -pin_size {0.3 0.3} -force_to_die_boundary;
  }


  place_pin -pin_name done -layer met2 -location {80 0} -pin_size {0.3 0.3} -force_to_die_boundary


    # Place pin Buswires
    set x_location 180
    for {set a 0} {$a < 16} {incr a} {
             set b [expr int((8.5 * $a) + 15.0)];
             place_pin -pin_name buswires[$a] -layer met3 -location [list $x_location $b] -pin_size {0.3 0.3} -force_to_die_boundary;
     }



# Place pads
#place_bondpad -bond sky130_ef_io__gpiov3_pad -offset {0 20} 

#place_corners sky130_ef_io__corner_pad -ring_index 1
set tapcell_args "-distance 148 \
     -tapcell_master sky130_fd_sc_hd__tap_1 \
      -endcap_master sky130_fd_sc_hd__tap_1"


################################################################
### Macro Placement
#if { [have_macros] } {
#	global_placement -density 0.7
#	rtl_macro_placer -halo_width 1 -halo_height 1
#}


# Tapcell insertion
eval tapcell $tapcell_args



##################################################
### PDN generation
source -echo "/home/hong/Workplace/CPU/PD_design/pdn_CPU.tcl"
pdngen


report_design_area
write_def "/home/hong/Workplace/CPU/PD_design/CPU_fp.def"
write_db "/home/hong/Workplace/CPU/PD_design//CPU_fp.db"



