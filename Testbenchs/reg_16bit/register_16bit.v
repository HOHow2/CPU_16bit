`timescale 1ns / 1ps

module register_16bit(
    input clk,
    // enable pins
    input rin,
    // data in
    input [15:0] buswires,
    // data out
    output reg [15:0] Rout
);

    always @(posedge clk) begin
       if (rin) begin
         Rout <= buswires;  // Gán giá trị từ buswires vào Rout
       end

       else begin
         Rout <= Rout;
       end
    end 

  initial begin
    $dumpfile("register_16bit_tb.vcd");
    $dumpvars(0,register_16bit);
end

  
    
endmodule