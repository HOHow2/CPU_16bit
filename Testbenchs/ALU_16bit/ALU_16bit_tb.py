
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer
from cocotb.regression import TestFactory


async def ALU_16bit_tb(dut):
    # create clock
    clock = Clock(dut.clk, 20, units="ns")
    cocotb.start_soon(clock.start())


    # Khởi tạo tín hiệu đầu vào
    dut.buswires.value = 0
    dut.ain.value = 0
    dut.gin.value = 0
    dut.sub.value = 0

    
    # Chu kỳ 1:
    await RisingEdge(dut.clk)
    a = 0xFFFF  
    dut.buswires.value = a
    dut.ain.value = 1  

    await RisingEdge(dut.clk)  #
    dut.ain.value = 0  

    # Chu kỳ 2:
    b = 0x1111  
    dut.buswires.value = b
    dut.gin.value = 1  
    dut.sub.value = 0 

    Rout = (a + b) & 0xFFFF 

    await RisingEdge(dut.clk)  
    dut.gin.value = 0  
    await Timer(1, units="ns")  


    # Kiểm tra đầu ra
    assert dut.aluout.value == Rout, \
        f"Expected output: {hex(Rout)}, Got: {hex(dut.aluout.value)}, A = {hex(a)}, B = {hex(b)}"

    dut._log.info(f"Test passed! A = {hex(a)}, B = {hex(b)}, Output = {hex(dut.aluout.value)}")



    # 
    dut.buswires.value = 0xFFFF
    dut.ain.value = 0
    dut.gin.value = 0
    dut.sub.value = 0

    
    # Chu kỳ 1:
    await RisingEdge(dut.clk)
    dut.sub.value = 1
    dut.buswires.value = a
    dut.ain.value = 1  

    await RisingEdge(dut.clk)  
    dut.ain.value = 0  

    # Chu kỳ 2
    b = 0x1111  
    dut.buswires.value = b
    dut.gin.value = 1 

    Rout = (a + b) & 0xFFFF  

    await RisingEdge(dut.clk)  
    dut.gin.value = 0 
    await Timer(1, units="ns") 



# Chạy testbench
factory = TestFactory(ALU_16bit_tb)
factory.generate_tests()
