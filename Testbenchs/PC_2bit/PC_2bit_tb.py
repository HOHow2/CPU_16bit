import cocotb
from cocotb.regression import TestFactory
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock

async def test_counter_2bit(dut):
   
   #initiate clock
   clock = Clock(dut.clk, 10,units="ns")
   cocotb.start_soon(clock.start())

   # generate the initial values of inputs
   dut.clr.value = 0
   dut.clr.value = 1
   await Timer(10,units="ns")
   dut.clr.value = 0
   assert dut.state.value == 0, \
   f"Counter khong duoc reset ve 0, gia tri hien tai: {dut.state.value}"

   for output in range(4):
      await RisingEdge(dut.clk)
      assert dut.state.value == output, \
      f"Sai output: Expected {output}, got {dut.state.value}"


   dut.clr.value = 1
   await RisingEdge(dut.clk)
   dut.clr.value = 0
   await Timer(50,units="ns")
   assert dut.state.value == 0, \
   f"Counter khong duoc reset ve 0 khi clear active, the current value: {dut.state.value}"

   #done
   dut._log.info("Pass test!")


tf = TestFactory(test_counter_2bit)
tf.generate_tests()