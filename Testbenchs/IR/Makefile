# Ngon ngu cua mach muon kiem tra testbench
TOPLEVEL_LANG = verilog

PWD = $(shell pwd)
# Source file (file nguon muon chay testbench)
VERILOG_SOURCES = $(PWD)/IR.v

# module chinh trong source file
TOPLEVEL = IR

# file name cua testbench
MODULE = IR_tb

# designate app mo phong
SIM = icarus

# bien dich file
include $(shell cocotb-config --makefiles)/Makefile.sim
