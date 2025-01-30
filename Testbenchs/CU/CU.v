`timescale 1ns / 1ps

module CU(
    // input
    input run,
    input resetn,
    input [8:0]IR,      // 9 bit
    input [1:0]state,   // 2 bit, PC

    // output
    output reg IRin,        // enable IR

    output reg [7:0] rin,   // enable register r0 -> r7

    output reg [2:0]rout,   // Select register (mux)
    output reg din_enable,  // Mux
    output reg gout,        // select ALU out (Mux)

    output reg ain,         // ALU, enable a
    output reg gin,         // ALU, enable g
    output reg sub,         // ALU, select sub or add
    
    output reg clear,       // clear counter
    output reg done         // complete
);

wire [2:0] opcode = IR[8:6];
wire [2:0] rx = IR[5:3];
wire [2:0] ry = IR[2:0];
reg [15:0] buswires;


// Sequential Control 16-bit CPU

localparam mv  = 3'b000;    // move rx, ry
localparam mvi = 3'b001;    // move rx, din
localparam add_state = 3'b010;    // add rx, rx, ry
localparam sub_state = 3'b011;    // sub rx, rx, ry
// localparam mvo = 3'b100;    // move dout, rx


// chu ki hoat dong
localparam state_0 = 2'b00;
localparam state_1 = 2'b01;
localparam state_2 = 2'b10;
localparam state_3 = 2'b11;


always @(*) begin
    //

    if (!resetn) begin
        IRin = 0;
        rin = 0;
        rout = 0;
        gout = 0;
        ain = 0;
        gin = 0;
        sub = 0;
        din_enable = 0;
        clear = 1;
        done = 0;
    end

    else if (!run) begin
        IRin = IRin;
        rin = rin;
        rout = rout;
        din_enable = din_enable;
        gout = gout;
        ain = ain;
        gin = gin;
        sub = sub;
        clear = clear;
        done = done;
        end

    else begin
        clear = 0;
        done = 0;
            case (state) 
                state_0: begin
                    IRin = 1; // enable IR
                    clear = 0;
                    din_enable = 0;
                    ain = 0;
                    gin = 0;
                    gout = 0;
                    done = 0;
                    sub = 0;
                end

                state_1: begin
                            case (opcode)
                                mv: begin    
                                    rout = ry;
                                    rin  = rin_mux(rx);
                                    clear = 1;
                                    din_enable = 0;
                                    done = 1;
                                    
                                end

                                mvi: begin
                                    rout = rx;
                                    rin = rin_mux(rx);
                                    clear = 1;
                                    din_enable = 1;
                                    done = 1;
                                end

                                add_state, sub_state: begin
                                    rout = rx;
                                    rin  = rin_mux(rx);
                                    ain = 1;
                                    gin = 0;
                                    IRin = 0;
                                end

                                default: begin
                                $display("None values");
                                end

                            endcase
                end

                state_2: begin
                            // add
                        if (opcode == add_state || opcode == sub_state) begin
                                buswires = ry;
                                ain = 0;
                                rout = ry;
                                sub = (opcode == sub_state) ? 1 : 0; // if opcode == sub_state => sub = 1, else sub = 0
                                gin = 1;
                        
                        end

                        else begin
                            $display("None any values.");
                        end
                end

                state_3: begin
                        rin = rin_mux(rx);
                        gout=1;
                        clear = 1;
                        done=1;
                        ain = 0;
                        gin = 0;
                        rout = rx;
                end


                default: begin
                    $display("Invalid opcode: %b", state);
                end
            endcase
    end


end

  

// Choose registers
function [7:0] rin_mux(input [2:0]rx);
        case (rx)
        3'b000: rin_mux = 8'b00000001;
        3'b001: rin_mux = 8'b00000010;
        3'b010: rin_mux = 8'b00000100;
        3'b011: rin_mux = 8'b00001000;
        3'b100: rin_mux = 8'b00010000;
        3'b101: rin_mux = 8'b00100000;
        3'b110: rin_mux = 8'b01000000;
        3'b111: rin_mux = 8'b10000000;
        default: $display("None initial values in this module");
        endcase
endfunction


initial begin
    $dumpfile("CU_tb.vcd");
    $dumpvars(0,CU);
end

endmodule
