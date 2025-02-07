`timescale 1ns / 1ps

module IR(
    input [15:0] din,
    input IRin,
    input clk,
    output reg [8:0] IR_out
);

    always @(posedge clk) begin
        if (IRin) begin
          IR_out <= din[8:0];
        end
        
        else begin
            IR_out <= IR_out;
        end
    end

endmodule
