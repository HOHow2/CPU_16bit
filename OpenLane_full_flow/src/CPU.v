`timescale 1ns / 1ps

module register_16bitA(
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
    
endmodule

module register_16bitB(
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
    
endmodule


module register_16bit0(
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
    
endmodule


module register_16bit1(
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
    
endmodule


module register_16bit2(
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
    
endmodule


module register_16bit3(
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
    
endmodule


module register_16bit4(
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
    
endmodule


module register_16bit5(
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
    
endmodule


module register_16bit6(
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
    
endmodule

module register_16bit7(
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
    
endmodule






module PC_2bit1 (
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

endmodule

module mux_8to1_16_bit (
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
    output wire [15:0] buswires

);
reg [15:0] buswires_reg;

assign buswires = buswires_reg;

always @(*) begin
    if (din_enable) begin
        buswires_reg = din;
    end

    else if (gout) begin
        buswires_reg = aluout;
    end

    else begin
        case (rout)
        
            3'b000: buswires_reg = r0;     // choose r0
            3'b001: buswires_reg = r1;     // choose r1
            3'b010: buswires_reg = r2;     // choose r2
            3'b011: buswires_reg = r3;     // choose r3
            3'b100: buswires_reg = r4;     // choose r4
            3'b101: buswires_reg = r5;     // choose r5
            3'b110: buswires_reg = r6;     // choose r6
            3'b111: buswires_reg = r7;     // choose r7

            default: buswires_reg = buswires_reg;
        endcase
    end
end

endmodule


module IR_1(
    input [15:0] din,
    input IR_in,
    input clk,
    output reg [8:0] IR_out
);
    always @(posedge clk) begin
        if (IR_in) begin
          IR_out <= din[8:0];
        end

        else begin
            IR_out <= IR_out;
        end
    end
endmodule


module CU(
    // input
    input run,
    input resetn,
    input [8:0]IR,      // 9 bit
    input [1:0]state,   // 2 bit, PC

    // output
    output IRin,        // enable IR

    output [7:0] rin,   // enable register r0 -> r7

    output reg [2:0]rout,   // Select register (mux)
    output din_enable,  // Mux
    output gout,        // select ALU out (Mux)

    output reg ain,         // ALU, enable a
    output reg gin,         // ALU, enable g
    output reg sub,         // ALU, select sub or add
    
    output clear,       // clear counter
    output done         // complete
);
reg IRin_CU;
reg [7:0] rin_CU;
reg din_enable_CU;
reg gout_CU;
reg clear_CU;
reg done_CU;

assign IRin = IRin_CU;
assign rin = rin_CU;
assign din_enable = din_enable_CU;
assign gout = gout_CU;
assign clear = clear_CU;
assign done = done_CU;



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
        IRin_CU = 0;
        rin_CU = 0;
        rout = 0;
        gout_CU = 0;
        ain = 0;
        gin = 0;
        sub = 0;
        din_enable_CU = 0;
        clear_CU = 1;
        done_CU = 0;

    if (!resetn) begin

        clear_CU = 1;

    end

    else if (run) begin
        clear_CU = 0;
            case (state) 
                state_0: begin
                    IRin_CU = 1; // enable IR
                    clear_CU = 0;
                    din_enable_CU = 0;
                    ain = 0;
                    gin = 0;
                    gout_CU = 0;
                    done_CU = 0;
                    sub = 0;
                end

                state_1: begin
                            case (opcode)
                                mv: begin    
                                    rout = ry;
                                    rin_CU  = rin_mux(rx);
                                    clear_CU = 1;
                                    din_enable_CU = 0;
                                    done_CU = 1;
                                    
                                end

                                mvi: begin
                                    rout = rx;
                                    rin_CU = rin_mux(rx);
                                    clear_CU = 1;
                                    din_enable_CU = 1;
                                    done_CU = 1;
                                end

                                add_state, sub_state: begin
                                    rout = rx;
                                    rin_CU  = rin_mux(rx);
                                    ain = 1;
                                    gin = 0;
                                    IRin_CU = 0;
                                end

                                default: begin
                                    clear_CU = 1;
                                    done_CU = 1;
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
                                buswires = buswires;
                                ain = ain;
                                rout = rout;
                                sub = sub;
                                gin = gin;
                        end
                end

                state_3: begin
                        rin_CU = rin_mux(rx);
                        gout_CU=1;
                        clear_CU = 1;
                        done_CU=1;
                        ain = 0;
                        gin = 0;
                        rout = rx;
                end


                default: begin
                    clear_CU = 1;
                    done_CU = 1;
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
        default: rin_mux = rin_mux;
        endcase
endfunction

endmodule

module AddSub_(
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
module ALU_16bit_md(
    input clk,
    input [15:0] buswires,

    // control
    input ain, // enable A
    input gin, // enable B
    input sub,        // Control: 0 (Add), 1 (Sub)

    output [15:0] aluout // Output 
);
    wire [15:0] raout, result;
    


    register_16bitA reg_a (
            .clk(clk),
            .rin(ain),
            .buswires(buswires),
            .Rout(raout)
        );


    // AddSub
    AddSub_ addsub (
        .buswires_A(buswires),
        .raout(raout),
        .sub(sub),
        .result(result)
    );

    

    register_16bitB reg_g (
            .clk(clk),
            .rin(gin),
            .buswires(result),
            .Rout(aluout)
        );


endmodule



module CPU(
    input run,
    input resetn,
    input clk,
    input [15:0] din,

    output [15:0] buswires,
    output done
);


// Multiplexer 8 to 1
wire [2:0] rout;
wire din_enable_CPU;
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

ALU_16bit_md ALU_16bit(
    .clk(clk),
    .buswires(buswires),
    .ain(ain),
    .gin(gin),
    .sub(sub),
    .aluout(aluout)
);

IR_1 intr_reg(
    .clk(clk),
    .din(din),
    .IR_in(IRin),
    .IR_out(IR)
);

mux_8to1_16_bit Mux(
    .rout(rout),
    .gout(gout),
    .din_enable(din_enable_CPU),
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
register_16bit0 register0(
    .clk(clk),
    .rin(rin[0]),
    .buswires(buswires),
    .Rout(r0)
);
// Register 1
register_16bit1 register1(
    .clk(clk),
    .rin(rin[1]),
    .buswires(buswires),
    .Rout(r1)
);
// Register 2
register_16bit2 register2(
    .clk(clk),
    .rin(rin[2]),
    .buswires(buswires),
    .Rout(r2)
);
// Register 3
register_16bit3 register3(
    .clk(clk),
    .rin(rin[3]),
    .buswires(buswires),
    .Rout(r3)
);
// Register 4
register_16bit4 register4(
    .clk(clk),
    .rin(rin[4]),
    .buswires(buswires),
    .Rout(r4)
);
// Register 5
register_16bit5 register5(
    .clk(clk),
    .rin(rin[5]),
    .buswires(buswires),
    .Rout(r5)
);
// Register 6
register_16bit6 register6(
    .clk(clk),
    .rin(rin[6]),
    .buswires(buswires),
    .Rout(r6)
);
// Register 7
register_16bit7 register7(
    .clk(clk),
    .rin(rin[7]),
    .buswires(buswires),
    .Rout(r7)
);


PC_2bit1 counter_2bit(
    .clk(clk),
    .clr(clear),
    .state(state)
);

CU Control_unit_module(
    .run(run),
    .resetn(resetn),
    .IR(IR),
    .state(state),
    .IRin(IRin),
    .rin(rin),
    .rout(rout),
    .din_enable(din_enable_CPU),
    .gout(gout),
    .ain(ain),
    .gin(gin),
    .sub(sub),
    .clear(clear),
    .done(done)
);



endmodule

