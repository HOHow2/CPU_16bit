# Thời gian trễ lối vào/ra bằng 40% chu kỳ clock
# Latency, transition và uncertainty 5% chu kỳ clock



# Operating condition
set_operating_conditions -library sky130_fd_sc_hd__ff_100C_1v65.lib -analysis_type single

set time_scale 4
set tran [expr (0.05*$time_scale)]

# System interface
#### Set driving cell constraint
#set_driving_cell -library sky130_fd_sc_hd__ff_100C_1v65 -lib_cell sky130_fd_sc_hd__buf_1 [get_ports clr]

#### Set output load
set_load 0.1 [all_outputs]





# Timing Constraints
#### Clock
create_clock -period $time_scale -name clk -waveform {0 2} [get_ports clk]

####  Define clock uncertainty
set_clock_uncertainty $tran [get_clocks clk]

####  Define input delay
set_input_delay [expr (0.4*$time_scale)] -rise -clock clk [get_ports clr]

####  Define output delay
set_output_delay [expr (0.4*$time_scale)] -rise -clock clk [get_ports state[*]]

####  Latency
set_clock_latency -source $tran [get_ports clk]





# Design Rule Constraints
####  Transition constraint

set_max_transition 1.5 [all_inputs]
set_clock_transition $tran [get_clocks clk]
set_max_capacitance 1.5 [all_outputs]

####  Fanout
set_max_fanout 10 [all_inputs]




# Timing Exceptions

# Area
set_max_area 500
