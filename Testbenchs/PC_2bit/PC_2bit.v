`timescale 1ns / 1ps


module PC_2bit (
    input clk,
    input clr,
    output reg [1:0] state
);
    
    always @(posedge clk) begin
        if (clr) begin
            state <= 2'b00;
        end 

        else begin
            state <= state + 1'b1;
        end
    end

   
initial begin
    $dumpfile("PC_2bit_tb.vcd");
    $dumpvars(0,PC_2bit);
end

endmodule