# Thời gian trễ lối vào/ra bằng 20% chu kỳ clock
# Latency, transition và uncertainty 2% chu kỳ clock
# 100Mhz CPU


# Operating condition
set_operating_conditions -library sky130_fd_sc_hd__ff_100C_1v95.lib  -analysis_type single

set time_scale 10
set delay_IO [expr (0.2 * $time_scale)]
set tran [expr (0.02*$time_scale)]

# System interface
#### Set driving cell constraint
#set_driving_cell -library sky130_fd_sc_hd__ff_100C_1v65 -lib_cell sky130_fd_sc_hd__buf_1 [get_ports clr]

#### Set output load
set_load 0.1 [all_outputs]






# Timing Constraints
#### Clock
create_clock -period $time_scale -name clk -waveform {0 5} [get_ports clk]

####  Define clock uncertainty
set_clock_uncertainty $tran [get_clocks clk]

####  Define input delay
set_input_delay $delay_IO -rise -clock clk [get_ports run]
set_input_delay $delay_IO -rise -clock clk [get_ports resetn]
set_input_delay $delay_IO -rise -clock clk [get_ports din[*]]
#set_input_delay $delay_IO -rise -clock clk [get_ports Control_Unit/all_inputs]



####  Define output delay
set_output_delay $delay_IO -rise -clock clk [get_ports buswires[*]]
set_output_delay $delay_IO -rise -clock clk [get_ports done]
#set_output_delay $delay_IO -rise -clock clk [get_ports Control_Unit/all_outputs]


####  Latency
set_clock_latency -source $tran [get_clocks clk]




# Design Rule Constraints
####  Transition constraint

set_max_transition 1.5 [get_ports run]
set_max_transition 1.5 [get_ports resetn]
set_max_transition 1.5 [get_ports din[*]]
set_clock_transition $tran [get_clocks clk]
set_max_capacitance 1.5 [all_outputs]

####  Fanout
set_max_fanout 50 [all_inputs]




# Timing Exceptions

# Area
set_max_area 2000
