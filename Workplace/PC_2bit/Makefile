
# Ngon ngu cua mach muon kiem tra testbench
TOPLEVEL_LANG ?= verilog

# Source file (file nguon muon chay testbench)
VERILOG_SOURCES = PC_2bit.v

# module chinh trong source file
TOPLEVEL = PC_2bit

# file name cua testbench
MODULE = PC_2bit_tb

# designate app mo phong
SIM ?= icarus

# bien dich file
include $(shell cocotb-config --makefiles)/Makefile.sim
