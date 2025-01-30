`timescale 1ns/1ps

`include "/home/hong/Workplace/Verilog/Verification_files/reg_16bit/register_16bit.v"



module AddSub(
    input [15:0] buswires_A,
    input [15:0] raout,

    // select
    input sub,
    output [15:0] result
);
    wire [15:0]b_xor_sub;
    wire carry_in;


    assign b_xor_sub = buswires_A ^ {16{sub}}; // 16'b sub, so bu 2 0xFFFF
    assign carry_in = sub;
    assign result = (raout + b_xor_sub + carry_in);   // raout +- buswires

endmodule



// Toan tu cong hoac tru
module ALU_16bit(
    input clk,
    input [15:0] buswires,

    // control
    input ain, // enable A
    input gin, // enable B
    input sub,        // Control: 0 (Add), 1 (Sub)

    output [15:0] aluout // Output 
);
    wire [15:0] raout, result;
    


    register_16bit reg_a (
            .clk(clk),
            .rin(ain),
            .buswires(buswires),
            .Rout(raout)
        );


    // AddSub
    AddSub addsub (
        .buswires_A(buswires),
        .raout(raout),
        .sub(sub),
        .result(result)
    );

    

    register_16bit reg_g (
            .clk(clk),
            .rin(gin),
            .buswires(result),
            .Rout(aluout)
        );

initial begin
    $dumpfile("ALU_16bit_tb.vcd");
    $dumpvars(0,ALU_16bit);
end

endmodule


