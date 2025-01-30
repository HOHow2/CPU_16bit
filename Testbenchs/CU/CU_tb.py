import cocotb
from cocotb.triggers import Timer


def check(signal, name, expected):
    assert signal.value == expected, f"{name} failed, expected {expected}, got {signal.value}"


@cocotb.test()
async def CU_tb(dut):
   
    # intiate the values of the Control unit
    # Reset 1
    dut.resetn.value = 0
    dut.run.value = 0
    dut.IR.value = 0b001_000_000 # opcode = 001 / rx = 010

        # IRin = 0;
        # rin = 0;
        # rout = 0;
        # din_enable = 0;
        # gout = 0;
        # ain = 0;
        # gin = 0;
        # sub = 0;
        # clear = 1;
        # done = 0;


    await Timer(10, units="ns")  # Next
    assert dut.clear.value == 1, "Reset failed, clear should be 1"
    assert dut.done.value == 0, "Reset failed, done should be 0"
    dut.resetn.value = 1
    dut.run.value = 0
    dut._log.info(f"Reset successful!")

    # 1T / mvi command
    await Timer(10, units="ns")             # Next
    dut.run.value = 1
    dut.state.value = 0  
    await Timer(1, units="ns")             
    assert dut.IRin.value == 1, f"IRin now: {dut.IRin.value}"
    dut._log.info("State_0 PASS!")



    # 2T / mvi command
    await Timer(10, units="ns")  # Next
    dut.state.value = 1
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.opcode, "Opcode", 0b001)
    check(dut.rx, "Rx", 0b000)
    check(dut.rin, "rin", 0b00000001)
    check(dut.done, "done", 1)
    dut._log.info("State_1 PASS!")
    dut._log.info("mvi command PASS!\n\n")


    # Reset 2
    await Timer(10, units="ns")             # Next
    dut.resetn.value = 0
    await Timer(1, units="ns")
    assert dut.clear.value == 1, "Reset failed, clear should be 1"
    assert dut.done.value == 0, "Reset failed, done should be 0"
    dut._log.info(f"Reset 2 successful!")


    # 1T / mv command
    await Timer(10, units="ns")             # Next
    dut.state.value = 0
    dut.resetn.value = 1
    await Timer(1, units="ns")
    assert dut.IRin.value == 1, f"IRin now: {dut.IRin.value}"
    dut.IR.value = 0b000_001_001 # opcode = 000 / rx = 001 / ry = 001
    dut._log.info("State_0 PASS!")


    # 2T / mv command
    await Timer(10, units="ns")             # Next
    dut.state.value = 1
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.opcode, "Opcode", 0b000)
    check(dut.rx, "Rx", 0b001)
    check(dut.rout, "Rout", 0b001)
    check(dut.rin, "rin", 0b00000010)
    check(dut.done, "done", 1)
    dut._log.info("State_1 PASS!")
    dut._log.info("mv command PASS!\n\n")


    # Reset 3
    await Timer(10, units="ns")             # Next
    dut.resetn.value = 0
    await Timer(1, units="ns")
    assert dut.clear.value == 1, "Reset failed, clear should be 1"
    assert dut.done.value == 0, "Reset failed, done should be 0"
    dut._log.info(f"Reset 3 successful!")

    # 1T / add command
    await Timer(10, units="ns")             # Next
    dut.resetn.value = 1
    dut.state.value = 0
    await Timer(1, units="ns")
    assert dut.IRin.value == 1, f"IRin now: {dut.IRin.value}"
    dut.IR.value = 0b010_011_100 # opcode = 010 / rx = 011 / ry = 100
    dut._log.info("State_0 PASS!")

    # 2T / add command
    await Timer(10, units="ns")
    dut.state.value = 1
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.opcode, "Opcode", 0b010)
    check(dut.rout, "Rout", 0b011)
    check(dut.ain, "done", 1)
    dut._log.info("State_1 PASS!")

    # 3T / add command
    await Timer(10, units="ns")
    dut.state.value = 2
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.buswires, "buswires", 0b100)
    check(dut.rout, "Rout", 0b100)
    check(dut.sub, "Rout", 0)
    check(dut.gin, "done", 1)
    dut._log.info("State_2 PASS!")

    # 4T / add command
    await Timer(10, units="ns")
    dut.state.value = 3
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.rin, "Rin", 0b00001000)
    check(dut.gout, "Gout", 1)
    check(dut.done, "done", 1)
    dut._log.info("State_3 PASS!")
    dut._log.info("add command PASS!\n\n")

    await Timer(10, units="ns")


    # Reset 4
    await Timer(10, units="ns")             # Next
    dut.resetn.value = 0
    await Timer(1, units="ns")
    assert dut.clear.value == 1, "Reset failed, clear should be 1"
    assert dut.done.value == 0, "Reset failed, done should be 0"
    dut._log.info(f"Reset 4 successful!")

    # 1T / sub command
    await Timer(10, units="ns")             # Next
    dut.resetn.value = 1
    dut.state.value = 0
    await Timer(1, units="ns")
    assert dut.IRin.value == 1, f"IRin now: {dut.IRin.value}"
    dut.IR.value = 0b011_100_101 # opcode = 010 / rx = 011 / ry = 100
    dut._log.info("State_0 PASS!")

    # 2T / sub command
    await Timer(10, units="ns")
    dut.state.value = 1
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.opcode, "Opcode", 0b011)
    check(dut.rout, "Rout", 0b100)
    check(dut.ain, "done", 1)
    dut._log.info("State_1 PASS!")

    # 3T / sub command
    await Timer(10, units="ns")
    dut.state.value = 2
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.buswires, "Buswires", 0b101)
    check(dut.rout, "Rout", 0b101)
    check(dut.sub, "Rout", 1)
    check(dut.gin, "done", 1)
    dut._log.info("State_2 PASS!")

    # 4T / sub command
    await Timer(10, units="ns")
    dut.state.value = 3
    await Timer(1, units="ns")  # delay
    # Check
    check(dut.rin, "Rin", 0b00010000)
    check(dut.gout, "Gout", 1)
    check(dut.done, "done", 1)
    dut._log.info("State_3 PASS!")
    dut._log.info("sub command PASS!\n\n")
    await Timer(10, units="ns")
