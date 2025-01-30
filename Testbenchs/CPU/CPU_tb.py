import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock


@cocotb.test()
async def CPU_tb(dut):
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Run = 0 ; Resetn = 0
    dut.din.value = 0b0000000_001_000_000
    dut.resetn.value = 0
    dut.run.value = 0
    await Timer(10, units="ns")
    # Run = 0 ; Resetn = 1
    await RisingEdge(dut.clk)
    dut.resetn.value = 1
    dut.run.value = 0



    #       \\             ....................         Mvi command : Register <- data_in           ........................              //
    # Register 0
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.resetn.value = 1
    dut.run.value = 1

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0x000A



    # Register 1
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_001_000


    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0x0008


    # Register 2
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_010_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0x0006

    # Register 3
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_011_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0x0002

    # Register 4
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_100_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0xFFFF


    # Register 5
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_101_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0xEEEE


    # Register 6
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_110_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0xCCCC


    # Register 7
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_001_111_000

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)
    dut.din.value = 0xDDDD

    await Timer(5, units="ns")

#       \\             ....................         Copy data (mv command) : Register <- other Registers          ........................              //    
    # R7 <-- R0
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_111_000


    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)




    # R6 <-- R1
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_110_001

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)



    # R5 <-- R2
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_101_010

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)




    # R4 <-- R3
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_100_011

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)




    # R3 <-- R7
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_011_111

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)




    # R2 <-- R6
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_010_110

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)





    # R1 <-- R5
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_001_101

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)




     # R0 <-- R4
    # Run = 1; Resetn = 1/ State 2'b00
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_000_000_100

    # Run = 1; Resetn = 1/ State 2'b01
    await RisingEdge(dut.clk)

    
    #       \\             ....................         Add command : Register_a <- Register_a + Register_b          ........................              //    

    # Add
    # R0 <- R0 + R1
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_000_001
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # R1 <- R1 + R2
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_001_010
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # R2 <- R2 + R3
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_010_011
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # R3 <- R3 + R4
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_011_100
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R4 <- R4 + R5
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_100_101
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # R5 <- R5 + R6
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_101_110
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # R6 <- R6 + R7
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_110_111
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R7 <- R7 + R0
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_010_111_000
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    
    #       \\             ....................         Sub command : Register_a <- Register_a - Register_b          ........................              //    



    # R7 <- R7 - R6             / R7 = 0000h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_111_110
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R6 <- R6 - R5             / R6 = 0004h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_110_101
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R5 <- R5 - R4             / R5 = 0006h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_101_100
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R3 <- R3 - R4             / R3 = 0004h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_011_100
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R4 <- R4 - R3             / R4 = 0004h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_100_011
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R2 <- R2 - R3             / R2 = 000Eh
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_010_011
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R1 <- R1 - R0             / R1 = 0006h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_001_000
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)


    # R0 <- R0 - R1             / R0 = 0002h
    await RisingEdge(dut.clk)
    dut.din.value = 0b0000000_011_000_001
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    # Delay
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)



    