`timescale 1ns / 1ps

`include "/home/hong/Workplace/Verilog/Verification_files/ALU_16bit/ALU_16bit.v"
`include "/home/hong/Workplace/Verilog/Verification_files/reg_16bit/register_16bit.v"
`include "/home/hong/Workplace/Verilog/Verification_files/PC_2bit/PC_2bit.v"
`include "/home/hong/Workplace/Verilog/Verification_files/IR/IR.v"
`include "/home/hong/Workplace/Verilog/Verification_files/Mux_8to1_16bit/mux_8to1_16bit.v"
`include "/home/hong/Workplace/Verilog/Verification_files/CU/CU.v"


module CPU_16bit(
    input run,
    input resetn,
    input clk,
    input [15:0] din,

    output [15:0] buswires,
    output done
);


// Multiplexer 8 to 1
wire [2:0] rout;
wire din_enable;
wire gout;
wire [15:0] r0;
wire [15:0] r1;
wire [15:0] r2;
wire [15:0] r3;
wire [15:0] r4;
wire [15:0] r5;
wire [15:0] r6;
wire [15:0] r7;


// ALU
wire ain;
wire sub;
wire gin;
wire [15:0] aluout;

// register
wire [7:0]rin;


// intrustion register
wire IRin;
wire [8:0] IR;

// Counter
wire clear;
wire [1:0] state;

ALU_16bit ALU_16bit(
    .clk(clk),
    .buswires(buswires),
    .ain(ain),
    .gin(gin),
    .sub(sub),
    .aluout(aluout)
);

IR intr_reg(
    .clk(clk),
    .din(din),
    .IRin(IRin),
    .IR_out(IR)
);

mux_8to1_16bit mux(
    .rout(rout),
    .gout(gout),
    .din_enable(din_enable),
    .r0(r0),
    .r1(r1),
    .r2(r2),
    .r3(r3),
    .r4(r4),
    .r5(r5),
    .r6(r6),
    .r7(r7),
    .din(din),
    .aluout(aluout),
    .buswires(buswires)
);

// Register 0
register_16bit register0(
    .clk(clk),
    .rin(rin[0]),
    .buswires(buswires),
    .Rout(r0)
);
// Register 1
register_16bit register1(
    .clk(clk),
    .rin(rin[1]),
    .buswires(buswires),
    .Rout(r1)
);
// Register 2
register_16bit register2(
    .clk(clk),
    .rin(rin[2]),
    .buswires(buswires),
    .Rout(r2)
);
// Register 3
register_16bit register3(
    .clk(clk),
    .rin(rin[3]),
    .buswires(buswires),
    .Rout(r3)
);
// Register 4
register_16bit register4(
    .clk(clk),
    .rin(rin[4]),
    .buswires(buswires),
    .Rout(r4)
);
// Register 5
register_16bit register5(
    .clk(clk),
    .rin(rin[5]),
    .buswires(buswires),
    .Rout(r5)
);
// Register 6
register_16bit register6(
    .clk(clk),
    .rin(rin[6]),
    .buswires(buswires),
    .Rout(r6)
);
// Register 7
register_16bit register7(
    .clk(clk),
    .rin(rin[7]),
    .buswires(buswires),
    .Rout(r7)
);


PC_2bit counter_2bit(
    .clk(clk),
    .clr(clear),
    .state(state)
);

CU control_unit(
    .run(run),
    .resetn(resetn),
    .IR(IR),
    .state(state),
    .IRin(IRin),
    .rin(rin),
    .rout(rout),
    .din_enable(din_enable),
    .gout(gout),
    .ain(ain),
    .gin(gin),
    .sub(sub),
    .clear(clear),
    .done(done)
);



initial begin
    $dumpfile("CPU_tb.vcd");
    $dumpvars(0,CPU_16bit);
end


endmodule

