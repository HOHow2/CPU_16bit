`timescale 1ns / 1ps


module mux_8to1_16bit (
    /// data in
    // the data_ins of the registers 
    input [15:0]r0,
    input [15:0]r1,
    input [15:0]r2,
    input [15:0]r3,
    input [15:0]r4,
    input [15:0]r5,
    input [15:0]r6,
    input [15:0]r7,
    // the output of the ALU
    input [15:0]aluout,
     // data in
    input [15:0]din,



    /// select pints

    // select ALU out
    input gout,
    input [2:0] rout,   // select registers
    input din_enable,   // select din

    /// data out
    output reg [15:0] buswires

);

always @(*) begin
    if (din_enable) begin
        buswires = din;
    end

    else if (gout) begin
        buswires = aluout;
    end

    else begin
        case (rout)
        
            3'b000: buswires = r0;     // choose r0
            3'b001: buswires = r1;     // choose r1
            3'b010: buswires = r2;     // choose r2
            3'b011: buswires = r3;     // choose r3
            3'b100: buswires = r4;     // choose r4
            3'b101: buswires = r5;     // choose r5
            3'b110: buswires = r6;     // choose r6
            3'b111: buswires = r7;     // choose r7

            default: buswires = buswires;
        endcase
    end
end

 initial begin
    $dumpfile("mux_8to1_16bit_tb.vcd");
    $dumpvars(0,mux_8to1_16bit);
end

endmodule
