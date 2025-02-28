# Thời gian trễ lối vào/ra bằng 10% chu kỳ clock
# Latency, transition và uncertainty 3% chu kỳ clock
set_units -time ns

set time_scale 10
set delay_IO [expr (0.1 * $time_scale)]
set tran [expr (0.03*$time_scale)]

create_clock -period 10 -name clk [get_ports clk]
set_propagated_clock [all_clocks]

# Operating condition
#set_operating_conditions -min_library sky130_fd_sc_hd__ss_n40C_1v44.lib -max_library sky130_fd_sc_hd__ff_100C_1v95.lib \
			-analysis_type on_chip_variation

#set clock_tran [expr (0.03*$time_scale)]
#set tran_io [expr (0.02*$time_scale)]

# System interface
#### Set driving cell constraint
#set_driving_cell -library sky130_fd_sc_hd__ff_100C_1v65 -lib_cell sky130_fd_sc_hd__buf_1 [get_ports clr]

#### Set output load
set_load 0.1 [all_outputs]




# Timing Constraints
#### Clock

####  Define clock uncertainty
set_clock_uncertainty $tran [get_clocks clk]

####  Define input delay
set_input_delay $delay_IO -rise -clock clk [get_ports run]
set_input_delay $delay_IO -rise -clock clk [get_ports resetn]
set_input_delay $delay_IO -rise -clock clk [get_ports din[*]]



####  Define output delay
set_output_delay $delay_IO -rise -clock clk [get_ports buswires[*]]
set_output_delay $delay_IO -rise -clock clk [get_ports done]


####  Latency
set_clock_latency -source $tran [get_clocks clk]




# Design Rule Constraints
####  Transition constraint
set_max_transition 1 [get_ports run]
set_max_transition 1 [get_ports resetn]
set_max_transition 1 [get_ports din[*]]

#set_clock_transition $clock_tran [get_clocks clk]
set_max_capacitance 1.5 [all_outputs]
####  Fanout

# Timing Exceptions


