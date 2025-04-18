###############################################################################
# Created by write_sdc
# Thu Feb 27 21:51:15 2025
###############################################################################
current_design CPU
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_uncertainty 0.3000 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source 0.3000 [get_clocks {clk}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[0]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[0]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[10]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[10]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[11]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[11]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[12]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[12]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[13]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[13]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[14]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[14]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[15]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[15]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[1]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[1]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[2]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[2]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[3]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[3]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[4]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[4]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[5]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[5]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[6]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[6]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[7]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[7]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[8]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[8]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {din[9]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {din[9]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {resetn}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {resetn}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {run}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {run}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[0]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[0]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[10]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[10]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[11]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[11]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[12]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[12]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[13]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[13]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[14]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[14]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[15]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[15]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[1]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[1]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[2]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[2]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[3]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[3]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[4]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[4]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[5]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[5]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[6]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[6]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[7]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[7]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[8]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[8]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {buswires[9]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {buswires[9]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -min -add_delay [get_ports {done}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {done}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1000 [get_ports {done}]
set_load -pin_load 0.1000 [get_ports {buswires[15]}]
set_load -pin_load 0.1000 [get_ports {buswires[14]}]
set_load -pin_load 0.1000 [get_ports {buswires[13]}]
set_load -pin_load 0.1000 [get_ports {buswires[12]}]
set_load -pin_load 0.1000 [get_ports {buswires[11]}]
set_load -pin_load 0.1000 [get_ports {buswires[10]}]
set_load -pin_load 0.1000 [get_ports {buswires[9]}]
set_load -pin_load 0.1000 [get_ports {buswires[8]}]
set_load -pin_load 0.1000 [get_ports {buswires[7]}]
set_load -pin_load 0.1000 [get_ports {buswires[6]}]
set_load -pin_load 0.1000 [get_ports {buswires[5]}]
set_load -pin_load 0.1000 [get_ports {buswires[4]}]
set_load -pin_load 0.1000 [get_ports {buswires[3]}]
set_load -pin_load 0.1000 [get_ports {buswires[2]}]
set_load -pin_load 0.1000 [get_ports {buswires[1]}]
set_load -pin_load 0.1000 [get_ports {buswires[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.0000 [get_ports {resetn}]
set_max_transition 1.0000 [get_ports {run}]
set_max_transition 1.0000 [get_ports {din[15]}]
set_max_transition 1.0000 [get_ports {din[14]}]
set_max_transition 1.0000 [get_ports {din[13]}]
set_max_transition 1.0000 [get_ports {din[12]}]
set_max_transition 1.0000 [get_ports {din[11]}]
set_max_transition 1.0000 [get_ports {din[10]}]
set_max_transition 1.0000 [get_ports {din[9]}]
set_max_transition 1.0000 [get_ports {din[8]}]
set_max_transition 1.0000 [get_ports {din[7]}]
set_max_transition 1.0000 [get_ports {din[6]}]
set_max_transition 1.0000 [get_ports {din[5]}]
set_max_transition 1.0000 [get_ports {din[4]}]
set_max_transition 1.0000 [get_ports {din[3]}]
set_max_transition 1.0000 [get_ports {din[2]}]
set_max_transition 1.0000 [get_ports {din[1]}]
set_max_transition 1.0000 [get_ports {din[0]}]
set_max_capacitance 1.5000 [get_ports {buswires[0]}]
set_max_capacitance 1.5000 [get_ports {buswires[10]}]
set_max_capacitance 1.5000 [get_ports {buswires[11]}]
set_max_capacitance 1.5000 [get_ports {buswires[12]}]
set_max_capacitance 1.5000 [get_ports {buswires[13]}]
set_max_capacitance 1.5000 [get_ports {buswires[14]}]
set_max_capacitance 1.5000 [get_ports {buswires[15]}]
set_max_capacitance 1.5000 [get_ports {buswires[1]}]
set_max_capacitance 1.5000 [get_ports {buswires[2]}]
set_max_capacitance 1.5000 [get_ports {buswires[3]}]
set_max_capacitance 1.5000 [get_ports {buswires[4]}]
set_max_capacitance 1.5000 [get_ports {buswires[5]}]
set_max_capacitance 1.5000 [get_ports {buswires[6]}]
set_max_capacitance 1.5000 [get_ports {buswires[7]}]
set_max_capacitance 1.5000 [get_ports {buswires[8]}]
set_max_capacitance 1.5000 [get_ports {buswires[9]}]
set_max_capacitance 1.5000 [get_ports {done}]
