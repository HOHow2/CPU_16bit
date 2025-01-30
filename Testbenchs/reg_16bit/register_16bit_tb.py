import cocotb
import random
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock

@cocotb.test()
async def register_16bit_tb(dut):
    # Tạo clock
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Khởi tạo tín hiệu
    dut.rin.value = 0
    dut.buswires.value = random.randint(0, 10000)
    await Timer(20, units="ns")  # Đợi clock ổn định



    # Test ghi dữ liệu vào register
    dut.rin.value = 1
    
    await RisingEdge(dut.clk)  # Chờ cạnh lên của clock
    await Timer(1, units="ns")  # Thêm thời gian chờ nhỏ để Rout cập nhật
    assert dut.Rout.value == dut.buswires.value, (
        f"Expected Rout = {hex(dut.buswires.value)}, Got {hex(dut.Rout.value)}"
    )
    dut._log.info(f"PASS: Rin={dut.rin.value}, Buswires={dut.buswires.value}, Rout={dut.Rout.value}")
    


    # Test giữ nguyên giá trị khi Rin = 0
    dut.rin.value = 0
    prev_value = dut.Rout.value
    await RisingEdge(dut.clk)
    await Timer(1, units="ns")
    assert dut.Rout.value == prev_value, "Rout changed when Rin = 0, which is incorrect."
    dut._log.info(f"PASS: Rin={dut.rin.value}, Rout giữ nguyên giá trị = {dut.Rout.value}")
