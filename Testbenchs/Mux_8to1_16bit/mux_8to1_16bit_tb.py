import cocotb
from cocotb.regression import TestFactory
from cocotb.triggers import Timer
from cocotb.result import TestFailure

async def mux_8to1_16bit_tb(dut):
    """
    Testbench for 8-to-1 16-bit multiplexer.
    """

    # Define input values for the registers and ALU
    r_values = [0xAAAA, 0xBBBB, 0xCCCC, 0xDDDD, 0xEEEE, 0xFFFF, 0x1234, 0x5678]
    aluout = 0xABCD
    din = 0x1111

    # Apply initial values to the DUT (Device Under Test)
    dut.r0.value = r_values[0]
    dut.r1.value = r_values[1]
    dut.r2.value = r_values[2]
    dut.r3.value = r_values[3]
    dut.r4.value = r_values[4]
    dut.r5.value = r_values[5]
    dut.r6.value = r_values[6]
    dut.r7.value = r_values[7]
    dut.aluout.value = aluout
    dut.din.value = din

    # Test all combinations of din_enable, gout, and rout
    for din_enable in [0, 1]:
        for gout in [0, 1]:
            for rout in range(8):  # rout ranges from 0 to 7
                # Nếu cả din_enable và gout đều = 1, bỏ qua vòng lặp này
                if din_enable == 1 and gout == 1:
                    continue  # Bỏ qua vòng lặp này

                # Apply control signals
                dut.din_enable.value = din_enable
                dut.gout.value = gout
                dut.rout.value = rout

                # Wait for a short period to allow the circuit to stabilize
                await Timer(2, units="ns")  # Small delay for signal propagation

                # Determine expected output based on control signals
                if din_enable:
                    output = din
                elif gout:
                    output = aluout
                else:
                    output = r_values[rout]

                # Check if the output matches the expected value
                if dut.buswires.value != output:
                    # Raise TestFailure if output doesn't match expected
                    raise TestFailure(f"Test failed: din_enable={din_enable}, gout={gout}, rout={rout}, "
                                      f"buswires={hex(dut.buswires.value)}, expected={hex(output)}")

                # Log the result for debugging
                dut._log.info(f"PASS: din_enable={din_enable}, gout={gout}, rout={rout}, "
                              f"buswires={hex(dut.buswires.value)}, expected={hex(output)}")
tf = TestFactory(mux_8to1_16bit_tb)

tf.generate_tests()