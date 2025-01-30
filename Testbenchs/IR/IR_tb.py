import cocotb
import random
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def IR_tb(dut):
    # clock with duty 10ns
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # khoi tao gia tri
    dut.IRin.value = 0
    dut.din.value = random.randint(0, 65000)
    await Timer(10, units="ns")


    dut.IRin.value = 1
    expected_output = dut.din.value & 0x1FF
    await RisingEdge(dut.clk)
    await Timer(1, units="ns")
    assert dut.IR_out.value == expected_output, \
        f"Expected output: {expected_output}, Got {dut.IR_out.value}, din = {dut.din.value}"
    dut._log.info(f"PASS: din={dut.din.value}, IRin={dut.IRin.value}, IR_out={dut.IR_out.value}")


    # tat IR
    await Timer(10, units="ns")
    dut.IRin.value = 0
    await RisingEdge(dut.clk)
    if dut.IR_out.value != expected_output:
        f"IR_out changed when IR_in = 0, which is incorrect."
    
    dut._log.info("PASS: IRin={dut.IRin}, IR_out giữ nguyên giá trị = {dut.IR_out}")
