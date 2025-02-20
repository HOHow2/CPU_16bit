module CPU_16bit (clk,
    done,
    resetn,
    run,
    buswires,
    din,
    VDD,
    VSS);
 input clk;
 output done;
 input resetn;
 input run;
 output [15:0] buswires;
 input [15:0] din;
 inout VDD;
 inout VSS;

 wire IRin;
 wire ain;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire clear;
 wire din_enable_CPU;
 wire net35;
 wire gin;
 wire gout;
 wire sub;
 wire \ALU_16bit/addsub/_000_ ;
 wire \ALU_16bit/addsub/_001_ ;
 wire \ALU_16bit/addsub/_002_ ;
 wire \ALU_16bit/addsub/_003_ ;
 wire \ALU_16bit/addsub/_004_ ;
 wire \ALU_16bit/addsub/_005_ ;
 wire \ALU_16bit/addsub/_006_ ;
 wire \ALU_16bit/addsub/_007_ ;
 wire \ALU_16bit/addsub/_008_ ;
 wire \ALU_16bit/addsub/_009_ ;
 wire \ALU_16bit/addsub/_010_ ;
 wire \ALU_16bit/addsub/_011_ ;
 wire \ALU_16bit/addsub/_012_ ;
 wire \ALU_16bit/addsub/_013_ ;
 wire \ALU_16bit/addsub/_014_ ;
 wire \ALU_16bit/addsub/_015_ ;
 wire \ALU_16bit/addsub/_016_ ;
 wire \ALU_16bit/addsub/_017_ ;
 wire \ALU_16bit/addsub/_018_ ;
 wire \ALU_16bit/addsub/_019_ ;
 wire \ALU_16bit/addsub/_020_ ;
 wire \ALU_16bit/addsub/_021_ ;
 wire \ALU_16bit/addsub/_022_ ;
 wire \ALU_16bit/addsub/_023_ ;
 wire \ALU_16bit/addsub/_024_ ;
 wire \ALU_16bit/addsub/_025_ ;
 wire \ALU_16bit/addsub/_026_ ;
 wire \ALU_16bit/addsub/_027_ ;
 wire \ALU_16bit/addsub/_028_ ;
 wire \ALU_16bit/addsub/_029_ ;
 wire \ALU_16bit/addsub/_030_ ;
 wire \ALU_16bit/addsub/_031_ ;
 wire \ALU_16bit/addsub/_032_ ;
 wire \ALU_16bit/addsub/_033_ ;
 wire \ALU_16bit/addsub/_034_ ;
 wire \ALU_16bit/addsub/_035_ ;
 wire \ALU_16bit/addsub/_036_ ;
 wire \ALU_16bit/addsub/_037_ ;
 wire \ALU_16bit/addsub/_038_ ;
 wire \ALU_16bit/addsub/_039_ ;
 wire \ALU_16bit/addsub/_040_ ;
 wire \ALU_16bit/addsub/_041_ ;
 wire \ALU_16bit/addsub/_042_ ;
 wire \ALU_16bit/addsub/_043_ ;
 wire \ALU_16bit/addsub/_044_ ;
 wire \ALU_16bit/addsub/_045_ ;
 wire \ALU_16bit/addsub/_046_ ;
 wire \ALU_16bit/addsub/_047_ ;
 wire \ALU_16bit/addsub/_048_ ;
 wire \ALU_16bit/addsub/_049_ ;
 wire \ALU_16bit/addsub/_050_ ;
 wire \ALU_16bit/addsub/_051_ ;
 wire \ALU_16bit/addsub/_052_ ;
 wire \ALU_16bit/addsub/_053_ ;
 wire \ALU_16bit/addsub/_054_ ;
 wire \ALU_16bit/addsub/_055_ ;
 wire \ALU_16bit/addsub/_056_ ;
 wire \ALU_16bit/addsub/_057_ ;
 wire \ALU_16bit/addsub/_058_ ;
 wire \ALU_16bit/addsub/_059_ ;
 wire \ALU_16bit/addsub/_060_ ;
 wire \ALU_16bit/addsub/_061_ ;
 wire \ALU_16bit/addsub/_062_ ;
 wire \ALU_16bit/addsub/_063_ ;
 wire \ALU_16bit/addsub/_064_ ;
 wire \ALU_16bit/addsub/_065_ ;
 wire \ALU_16bit/addsub/_066_ ;
 wire \ALU_16bit/addsub/_067_ ;
 wire \ALU_16bit/addsub/_068_ ;
 wire \ALU_16bit/addsub/_069_ ;
 wire \ALU_16bit/addsub/_070_ ;
 wire \ALU_16bit/addsub/_071_ ;
 wire \ALU_16bit/addsub/_072_ ;
 wire \ALU_16bit/addsub/_073_ ;
 wire \ALU_16bit/addsub/_074_ ;
 wire \ALU_16bit/addsub/_075_ ;
 wire \ALU_16bit/addsub/_076_ ;
 wire \ALU_16bit/addsub/_077_ ;
 wire \ALU_16bit/addsub/_078_ ;
 wire \ALU_16bit/addsub/_079_ ;
 wire \ALU_16bit/addsub/_080_ ;
 wire \ALU_16bit/addsub/_081_ ;
 wire \ALU_16bit/addsub/_082_ ;
 wire \Control_unit_module/_00_ ;
 wire \Control_unit_module/_01_ ;
 wire \Control_unit_module/_02_ ;
 wire \Control_unit_module/_03_ ;
 wire \Control_unit_module/_04_ ;
 wire \Control_unit_module/_05_ ;
 wire \Control_unit_module/_06_ ;
 wire \Control_unit_module/_07_ ;
 wire \Control_unit_module/_08_ ;
 wire \Control_unit_module/_09_ ;
 wire \Control_unit_module/_10_ ;
 wire \Control_unit_module/_11_ ;
 wire \Control_unit_module/_12_ ;
 wire \Control_unit_module/_13_ ;
 wire \Control_unit_module/_14_ ;
 wire \Control_unit_module/_15_ ;
 wire \Control_unit_module/_16_ ;
 wire \Control_unit_module/_17_ ;
 wire \Control_unit_module/_18_ ;
 wire \Control_unit_module/_19_ ;
 wire \Control_unit_module/_20_ ;
 wire \Control_unit_module/_21_ ;
 wire \Control_unit_module/_22_ ;
 wire \Control_unit_module/_23_ ;
 wire \Mux/_000_ ;
 wire \Mux/_001_ ;
 wire \Mux/_002_ ;
 wire \Mux/_003_ ;
 wire \Mux/_004_ ;
 wire \Mux/_005_ ;
 wire \Mux/_006_ ;
 wire \Mux/_007_ ;
 wire \Mux/_008_ ;
 wire \Mux/_009_ ;
 wire \Mux/_010_ ;
 wire \Mux/_011_ ;
 wire \Mux/_012_ ;
 wire \Mux/_013_ ;
 wire \Mux/_014_ ;
 wire \Mux/_015_ ;
 wire \Mux/_016_ ;
 wire \Mux/_017_ ;
 wire \Mux/_018_ ;
 wire \Mux/_019_ ;
 wire \Mux/_020_ ;
 wire \Mux/_021_ ;
 wire \Mux/_022_ ;
 wire \Mux/_023_ ;
 wire \Mux/_024_ ;
 wire \Mux/_025_ ;
 wire \Mux/_026_ ;
 wire \Mux/_027_ ;
 wire \Mux/_028_ ;
 wire \Mux/_029_ ;
 wire \Mux/_030_ ;
 wire \Mux/_031_ ;
 wire \Mux/_032_ ;
 wire \Mux/_033_ ;
 wire \Mux/_034_ ;
 wire \Mux/_035_ ;
 wire \Mux/_036_ ;
 wire \Mux/_037_ ;
 wire \Mux/_038_ ;
 wire \Mux/_039_ ;
 wire \Mux/_040_ ;
 wire \Mux/_041_ ;
 wire \Mux/_042_ ;
 wire \Mux/_043_ ;
 wire \Mux/_044_ ;
 wire \Mux/_045_ ;
 wire \Mux/_046_ ;
 wire \Mux/_047_ ;
 wire \Mux/_048_ ;
 wire \Mux/_049_ ;
 wire \Mux/_050_ ;
 wire \Mux/_051_ ;
 wire \Mux/_052_ ;
 wire \Mux/_053_ ;
 wire \Mux/_054_ ;
 wire \Mux/_055_ ;
 wire \Mux/_056_ ;
 wire \Mux/_057_ ;
 wire \Mux/_058_ ;
 wire \Mux/_059_ ;
 wire \Mux/_060_ ;
 wire \Mux/_061_ ;
 wire \Mux/_062_ ;
 wire \Mux/_063_ ;
 wire \Mux/_064_ ;
 wire \Mux/_065_ ;
 wire \Mux/_066_ ;
 wire \Mux/_067_ ;
 wire \Mux/_068_ ;
 wire \Mux/_069_ ;
 wire \Mux/_070_ ;
 wire \Mux/_071_ ;
 wire \Mux/_072_ ;
 wire \Mux/_073_ ;
 wire \Mux/_074_ ;
 wire \Mux/_075_ ;
 wire \Mux/_076_ ;
 wire \Mux/_077_ ;
 wire \Mux/_078_ ;
 wire \Mux/_079_ ;
 wire \Mux/_080_ ;
 wire \Mux/_081_ ;
 wire \Mux/_082_ ;
 wire \Mux/_083_ ;
 wire \Mux/_084_ ;
 wire \Mux/_085_ ;
 wire \Mux/_086_ ;
 wire \Mux/_087_ ;
 wire \Mux/_088_ ;
 wire \Mux/_089_ ;
 wire \Mux/_090_ ;
 wire \Mux/_091_ ;
 wire \Mux/_092_ ;
 wire \Mux/_093_ ;
 wire \Mux/_094_ ;
 wire \Mux/_095_ ;
 wire \Mux/_096_ ;
 wire \Mux/_097_ ;
 wire \Mux/_098_ ;
 wire \Mux/_099_ ;
 wire \Mux/_100_ ;
 wire \Mux/_101_ ;
 wire \Mux/_102_ ;
 wire \Mux/_103_ ;
 wire \Mux/_104_ ;
 wire \Mux/_105_ ;
 wire \Mux/_106_ ;
 wire \Mux/_107_ ;
 wire \Mux/_108_ ;
 wire \Mux/_109_ ;
 wire \Mux/_110_ ;
 wire \Mux/_111_ ;
 wire \Mux/_112_ ;
 wire \Mux/_113_ ;
 wire \Mux/_114_ ;
 wire \Mux/_115_ ;
 wire \Mux/_116_ ;
 wire \Mux/_117_ ;
 wire \Mux/_118_ ;
 wire \Mux/_119_ ;
 wire \Mux/_120_ ;
 wire \Mux/_121_ ;
 wire \Mux/_122_ ;
 wire \Mux/_123_ ;
 wire \Mux/_124_ ;
 wire \Mux/_125_ ;
 wire \Mux/_126_ ;
 wire \Mux/_127_ ;
 wire \Mux/_128_ ;
 wire \Mux/_129_ ;
 wire \Mux/_130_ ;
 wire \Mux/_131_ ;
 wire \Mux/_132_ ;
 wire \Mux/_133_ ;
 wire \Mux/_134_ ;
 wire \Mux/_135_ ;
 wire \counter_2bit/_0_ ;
 wire \counter_2bit/_1_ ;
 wire \counter_2bit/_2_ ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire clknet_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire [15:0] \ALU_16bit/raout ;
 wire [15:0] \ALU_16bit/result ;
 wire [8:0] IR;
 wire [15:0] aluout;
 wire [15:0] r0;
 wire [15:0] r1;
 wire [15:0] r2;
 wire [15:0] r3;
 wire [15:0] r4;
 wire [15:0] r5;
 wire [15:0] r6;
 wire [15:0] r7;
 wire [7:0] rin;
 wire [2:0] rout;
 wire [1:0] state;

 sky130_fd_sc_hd__inv_1 \ALU_16bit/addsub/_083_  (.A(\ALU_16bit/raout [0]),
    .Y(\ALU_16bit/addsub/_039_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_084_  (.A(net19),
    .B(sub),
    .X(\ALU_16bit/addsub/_040_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_085_  (.A(\ALU_16bit/raout [0]),
    .B(\ALU_16bit/addsub/_040_ ),
    .Y(\ALU_16bit/addsub/_041_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_086_  (.A(\ALU_16bit/raout [0]),
    .SLEEP(\ALU_16bit/addsub/_040_ ),
    .X(\ALU_16bit/addsub/_042_ ));
 sky130_fd_sc_hd__nand3_1 \ALU_16bit/addsub/_087_  (.A(sub),
    .B(\ALU_16bit/addsub/_041_ ),
    .C(\ALU_16bit/addsub/_042_ ),
    .Y(\ALU_16bit/addsub/_043_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_088_  (.A(sub),
    .B(net26),
    .X(\ALU_16bit/addsub/_044_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_089_  (.A(\ALU_16bit/raout [1]),
    .B(\ALU_16bit/addsub/_044_ ),
    .Y(\ALU_16bit/addsub/_045_ ));
 sky130_fd_sc_hd__xnor3_1 \ALU_16bit/addsub/_090_  (.A(sub),
    .B(net26),
    .C(\ALU_16bit/raout [1]),
    .X(\ALU_16bit/addsub/_046_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_091_  (.A(\ALU_16bit/addsub/_043_ ),
    .SLEEP(\ALU_16bit/addsub/_046_ ),
    .X(\ALU_16bit/addsub/_047_ ));
 sky130_fd_sc_hd__or3b_1 \ALU_16bit/addsub/_092_  (.A(\ALU_16bit/addsub/_039_ ),
    .B(\ALU_16bit/addsub/_046_ ),
    .C_N(\ALU_16bit/addsub/_040_ ),
    .X(\ALU_16bit/addsub/_048_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_093_  (.A(\ALU_16bit/addsub/_041_ ),
    .B(\ALU_16bit/addsub/_046_ ),
    .Y(\ALU_16bit/addsub/_049_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_094_  (.A(\ALU_16bit/addsub/_048_ ),
    .B(\ALU_16bit/addsub/_049_ ),
    .Y(\ALU_16bit/addsub/_050_ ));
 sky130_fd_sc_hd__a21boi_0 \ALU_16bit/addsub/_095_  (.A1(\ALU_16bit/addsub/_043_ ),
    .A2(\ALU_16bit/addsub/_050_ ),
    .B1_N(\ALU_16bit/addsub/_047_ ),
    .Y(\ALU_16bit/result [1]));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_096_  (.A(sub),
    .B(net27),
    .X(\ALU_16bit/addsub/_051_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_097_  (.A(\ALU_16bit/raout [2]),
    .B(\ALU_16bit/addsub/_051_ ),
    .Y(\ALU_16bit/addsub/_052_ ));
 sky130_fd_sc_hd__a21oi_1 \ALU_16bit/addsub/_098_  (.A1(\ALU_16bit/addsub/_045_ ),
    .A2(\ALU_16bit/addsub/_048_ ),
    .B1(\ALU_16bit/addsub/_052_ ),
    .Y(\ALU_16bit/addsub/_053_ ));
 sky130_fd_sc_hd__nand3_1 \ALU_16bit/addsub/_099_  (.A(\ALU_16bit/addsub/_045_ ),
    .B(\ALU_16bit/addsub/_048_ ),
    .C(\ALU_16bit/addsub/_052_ ),
    .Y(\ALU_16bit/addsub/_054_ ));
 sky130_fd_sc_hd__nand2b_1 \ALU_16bit/addsub/_100_  (.A_N(\ALU_16bit/addsub/_053_ ),
    .B(\ALU_16bit/addsub/_054_ ),
    .Y(\ALU_16bit/addsub/_055_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_101_  (.A(\ALU_16bit/addsub/_047_ ),
    .SLEEP(\ALU_16bit/addsub/_055_ ),
    .X(\ALU_16bit/addsub/_056_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_102_  (.A(\ALU_16bit/addsub/_047_ ),
    .B(\ALU_16bit/addsub/_055_ ),
    .X(\ALU_16bit/result [2]));
 sky130_fd_sc_hd__a21oi_1 \ALU_16bit/addsub/_103_  (.A1(\ALU_16bit/raout [2]),
    .A2(\ALU_16bit/addsub/_051_ ),
    .B1(\ALU_16bit/addsub/_053_ ),
    .Y(\ALU_16bit/addsub/_057_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_104_  (.A(sub),
    .B(net28),
    .X(\ALU_16bit/addsub/_058_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_105_  (.A(\ALU_16bit/raout [3]),
    .B(\ALU_16bit/addsub/_058_ ),
    .Y(\ALU_16bit/addsub/_059_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_106_  (.A(\ALU_16bit/raout [3]),
    .B(\ALU_16bit/addsub/_058_ ),
    .Y(\ALU_16bit/addsub/_060_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_107_  (.A(\ALU_16bit/addsub/_057_ ),
    .B(\ALU_16bit/addsub/_060_ ),
    .X(\ALU_16bit/addsub/_061_ ));
 sky130_fd_sc_hd__nor2b_1 \ALU_16bit/addsub/_108_  (.A(\ALU_16bit/addsub/_056_ ),
    .B_N(\ALU_16bit/addsub/_061_ ),
    .Y(\ALU_16bit/addsub/_062_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_109_  (.A(\ALU_16bit/addsub/_056_ ),
    .B(\ALU_16bit/addsub/_061_ ),
    .Y(\ALU_16bit/result [3]));
 sky130_fd_sc_hd__o21ai_0 \ALU_16bit/addsub/_110_  (.A1(\ALU_16bit/addsub/_057_ ),
    .A2(\ALU_16bit/addsub/_060_ ),
    .B1(\ALU_16bit/addsub/_059_ ),
    .Y(\ALU_16bit/addsub/_063_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_111_  (.A(sub),
    .B(net29),
    .X(\ALU_16bit/addsub/_064_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_112_  (.A(\ALU_16bit/raout [4]),
    .B(\ALU_16bit/addsub/_064_ ),
    .Y(\ALU_16bit/addsub/_065_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_113_  (.A(\ALU_16bit/addsub/_063_ ),
    .B(\ALU_16bit/addsub/_065_ ),
    .Y(\ALU_16bit/addsub/_066_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_114_  (.A(\ALU_16bit/addsub/_062_ ),
    .B(\ALU_16bit/addsub/_066_ ),
    .Y(\ALU_16bit/addsub/_067_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_115_  (.A(\ALU_16bit/addsub/_062_ ),
    .B(\ALU_16bit/addsub/_066_ ),
    .X(\ALU_16bit/result [4]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_116_  (.A(\ALU_16bit/raout [4]),
    .B(\ALU_16bit/addsub/_063_ ),
    .C(\ALU_16bit/addsub/_064_ ),
    .X(\ALU_16bit/addsub/_068_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_117_  (.A(sub),
    .B(net30),
    .X(\ALU_16bit/addsub/_069_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_118_  (.A(\ALU_16bit/raout [5]),
    .B(\ALU_16bit/addsub/_069_ ),
    .Y(\ALU_16bit/addsub/_070_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_119_  (.A(\ALU_16bit/addsub/_068_ ),
    .B(\ALU_16bit/addsub/_070_ ),
    .X(\ALU_16bit/addsub/_071_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_120_  (.A(\ALU_16bit/addsub/_067_ ),
    .SLEEP(\ALU_16bit/addsub/_071_ ),
    .X(\ALU_16bit/addsub/_072_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_121_  (.A(\ALU_16bit/addsub/_067_ ),
    .B(\ALU_16bit/addsub/_071_ ),
    .X(\ALU_16bit/result [5]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_122_  (.A(\ALU_16bit/raout [5]),
    .B(\ALU_16bit/addsub/_068_ ),
    .C(\ALU_16bit/addsub/_069_ ),
    .X(\ALU_16bit/addsub/_073_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_123_  (.A(sub),
    .B(net31),
    .X(\ALU_16bit/addsub/_074_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_124_  (.A(\ALU_16bit/raout [6]),
    .B(\ALU_16bit/addsub/_074_ ),
    .Y(\ALU_16bit/addsub/_075_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_125_  (.A(\ALU_16bit/addsub/_073_ ),
    .B(\ALU_16bit/addsub/_075_ ),
    .X(\ALU_16bit/addsub/_076_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_126_  (.A(\ALU_16bit/addsub/_072_ ),
    .SLEEP(\ALU_16bit/addsub/_076_ ),
    .X(\ALU_16bit/addsub/_077_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_127_  (.A(\ALU_16bit/addsub/_072_ ),
    .B(\ALU_16bit/addsub/_076_ ),
    .X(\ALU_16bit/result [6]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_128_  (.A(\ALU_16bit/raout [6]),
    .B(\ALU_16bit/addsub/_073_ ),
    .C(\ALU_16bit/addsub/_074_ ),
    .X(\ALU_16bit/addsub/_078_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_129_  (.A(sub),
    .B(net32),
    .X(\ALU_16bit/addsub/_079_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_130_  (.A(\ALU_16bit/raout [7]),
    .B(\ALU_16bit/addsub/_079_ ),
    .Y(\ALU_16bit/addsub/_080_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_131_  (.A(\ALU_16bit/addsub/_078_ ),
    .B(\ALU_16bit/addsub/_080_ ),
    .X(\ALU_16bit/addsub/_081_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_132_  (.A(\ALU_16bit/addsub/_077_ ),
    .SLEEP(\ALU_16bit/addsub/_081_ ),
    .X(\ALU_16bit/addsub/_082_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_133_  (.A(\ALU_16bit/addsub/_077_ ),
    .B(\ALU_16bit/addsub/_081_ ),
    .X(\ALU_16bit/result [7]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_134_  (.A(\ALU_16bit/raout [7]),
    .B(\ALU_16bit/addsub/_078_ ),
    .C(\ALU_16bit/addsub/_079_ ),
    .X(\ALU_16bit/addsub/_000_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_135_  (.A(sub),
    .B(net33),
    .X(\ALU_16bit/addsub/_001_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_136_  (.A(\ALU_16bit/raout [8]),
    .B(\ALU_16bit/addsub/_001_ ),
    .Y(\ALU_16bit/addsub/_002_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_137_  (.A(\ALU_16bit/addsub/_000_ ),
    .B(\ALU_16bit/addsub/_002_ ),
    .X(\ALU_16bit/addsub/_003_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_138_  (.A(\ALU_16bit/addsub/_082_ ),
    .SLEEP(\ALU_16bit/addsub/_003_ ),
    .X(\ALU_16bit/addsub/_004_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_139_  (.A(\ALU_16bit/addsub/_082_ ),
    .B(\ALU_16bit/addsub/_003_ ),
    .X(\ALU_16bit/result [8]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_140_  (.A(\ALU_16bit/raout [8]),
    .B(\ALU_16bit/addsub/_000_ ),
    .C(\ALU_16bit/addsub/_001_ ),
    .X(\ALU_16bit/addsub/_005_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_141_  (.A(sub),
    .B(net34),
    .X(\ALU_16bit/addsub/_006_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_142_  (.A(\ALU_16bit/raout [9]),
    .B(\ALU_16bit/addsub/_006_ ),
    .Y(\ALU_16bit/addsub/_007_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_143_  (.A(\ALU_16bit/addsub/_005_ ),
    .B(\ALU_16bit/addsub/_007_ ),
    .X(\ALU_16bit/addsub/_008_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_144_  (.A(\ALU_16bit/addsub/_004_ ),
    .SLEEP(\ALU_16bit/addsub/_008_ ),
    .X(\ALU_16bit/addsub/_009_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_145_  (.A(\ALU_16bit/addsub/_004_ ),
    .B(\ALU_16bit/addsub/_008_ ),
    .X(\ALU_16bit/result [9]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_146_  (.A(\ALU_16bit/raout [9]),
    .B(\ALU_16bit/addsub/_005_ ),
    .C(\ALU_16bit/addsub/_006_ ),
    .X(\ALU_16bit/addsub/_010_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_147_  (.A(sub),
    .B(net20),
    .X(\ALU_16bit/addsub/_011_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_148_  (.A(\ALU_16bit/raout [10]),
    .B(\ALU_16bit/addsub/_011_ ),
    .Y(\ALU_16bit/addsub/_012_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_149_  (.A(\ALU_16bit/addsub/_010_ ),
    .B(\ALU_16bit/addsub/_012_ ),
    .X(\ALU_16bit/addsub/_013_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_150_  (.A(\ALU_16bit/addsub/_009_ ),
    .SLEEP(\ALU_16bit/addsub/_013_ ),
    .X(\ALU_16bit/addsub/_014_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_151_  (.A(\ALU_16bit/addsub/_009_ ),
    .B(\ALU_16bit/addsub/_013_ ),
    .X(\ALU_16bit/result [10]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_152_  (.A(\ALU_16bit/raout [10]),
    .B(\ALU_16bit/addsub/_010_ ),
    .C(\ALU_16bit/addsub/_011_ ),
    .X(\ALU_16bit/addsub/_015_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_153_  (.A(sub),
    .B(net21),
    .X(\ALU_16bit/addsub/_016_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_154_  (.A(\ALU_16bit/raout [11]),
    .B(\ALU_16bit/addsub/_016_ ),
    .Y(\ALU_16bit/addsub/_017_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_155_  (.A(\ALU_16bit/addsub/_015_ ),
    .B(\ALU_16bit/addsub/_017_ ),
    .X(\ALU_16bit/addsub/_018_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_156_  (.A(\ALU_16bit/addsub/_014_ ),
    .SLEEP(\ALU_16bit/addsub/_018_ ),
    .X(\ALU_16bit/addsub/_019_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_157_  (.A(\ALU_16bit/addsub/_014_ ),
    .B(\ALU_16bit/addsub/_018_ ),
    .X(\ALU_16bit/result [11]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_158_  (.A(\ALU_16bit/raout [11]),
    .B(\ALU_16bit/addsub/_015_ ),
    .C(\ALU_16bit/addsub/_016_ ),
    .X(\ALU_16bit/addsub/_020_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_159_  (.A(sub),
    .B(net22),
    .X(\ALU_16bit/addsub/_021_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_160_  (.A(\ALU_16bit/raout [12]),
    .B(\ALU_16bit/addsub/_021_ ),
    .Y(\ALU_16bit/addsub/_022_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_161_  (.A(\ALU_16bit/addsub/_020_ ),
    .B(\ALU_16bit/addsub/_022_ ),
    .X(\ALU_16bit/addsub/_023_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \ALU_16bit/addsub/_162_  (.A(\ALU_16bit/addsub/_019_ ),
    .SLEEP(\ALU_16bit/addsub/_023_ ),
    .X(\ALU_16bit/addsub/_024_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_163_  (.A(\ALU_16bit/addsub/_019_ ),
    .B(\ALU_16bit/addsub/_023_ ),
    .X(\ALU_16bit/result [12]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_164_  (.A(\ALU_16bit/raout [12]),
    .B(\ALU_16bit/addsub/_020_ ),
    .C(\ALU_16bit/addsub/_021_ ),
    .X(\ALU_16bit/addsub/_025_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_165_  (.A(sub),
    .B(net23),
    .X(\ALU_16bit/addsub/_026_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_166_  (.A(\ALU_16bit/raout [13]),
    .B(\ALU_16bit/addsub/_026_ ),
    .X(\ALU_16bit/addsub/_027_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_167_  (.A(\ALU_16bit/addsub/_025_ ),
    .B(\ALU_16bit/addsub/_027_ ),
    .Y(\ALU_16bit/addsub/_028_ ));
 sky130_fd_sc_hd__nor2_1 \ALU_16bit/addsub/_168_  (.A(\ALU_16bit/addsub/_024_ ),
    .B(\ALU_16bit/addsub/_028_ ),
    .Y(\ALU_16bit/addsub/_029_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_169_  (.A(\ALU_16bit/addsub/_024_ ),
    .B(\ALU_16bit/addsub/_028_ ),
    .X(\ALU_16bit/result [13]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_170_  (.A(\ALU_16bit/raout [13]),
    .B(\ALU_16bit/addsub/_025_ ),
    .C(\ALU_16bit/addsub/_026_ ),
    .X(\ALU_16bit/addsub/_030_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_171_  (.A(sub),
    .B(net24),
    .X(\ALU_16bit/addsub/_031_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_172_  (.A(\ALU_16bit/raout [14]),
    .B(\ALU_16bit/addsub/_031_ ),
    .Y(\ALU_16bit/addsub/_032_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_173_  (.A(\ALU_16bit/addsub/_030_ ),
    .B(\ALU_16bit/addsub/_032_ ),
    .Y(\ALU_16bit/addsub/_033_ ));
 sky130_fd_sc_hd__nand2_1 \ALU_16bit/addsub/_174_  (.A(\ALU_16bit/addsub/_029_ ),
    .B(\ALU_16bit/addsub/_033_ ),
    .Y(\ALU_16bit/addsub/_034_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_175_  (.A(\ALU_16bit/addsub/_029_ ),
    .B(\ALU_16bit/addsub/_033_ ),
    .X(\ALU_16bit/result [14]));
 sky130_fd_sc_hd__maj3_1 \ALU_16bit/addsub/_176_  (.A(\ALU_16bit/raout [14]),
    .B(\ALU_16bit/addsub/_030_ ),
    .C(\ALU_16bit/addsub/_031_ ),
    .X(\ALU_16bit/addsub/_035_ ));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_177_  (.A(net25),
    .B(\ALU_16bit/raout [15]),
    .X(\ALU_16bit/addsub/_036_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_178_  (.A(sub),
    .B(\ALU_16bit/addsub/_036_ ),
    .Y(\ALU_16bit/addsub/_037_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_179_  (.A(\ALU_16bit/addsub/_035_ ),
    .B(\ALU_16bit/addsub/_037_ ),
    .Y(\ALU_16bit/addsub/_038_ ));
 sky130_fd_sc_hd__xnor2_1 \ALU_16bit/addsub/_180_  (.A(\ALU_16bit/addsub/_034_ ),
    .B(\ALU_16bit/addsub/_038_ ),
    .Y(\ALU_16bit/result [15]));
 sky130_fd_sc_hd__xor2_1 \ALU_16bit/addsub/_181_  (.A(net19),
    .B(\ALU_16bit/raout [0]),
    .X(\ALU_16bit/result [0]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_00_  (.CLK(clknet_4_0_0_clk),
    .D(net19),
    .DE(ain),
    .Q(\ALU_16bit/raout [0]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_01_  (.CLK(clknet_4_0_0_clk),
    .D(net26),
    .DE(ain),
    .Q(\ALU_16bit/raout [1]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_02_  (.CLK(clknet_4_0_0_clk),
    .D(net27),
    .DE(ain),
    .Q(\ALU_16bit/raout [2]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_03_  (.CLK(clknet_4_0_0_clk),
    .D(net28),
    .DE(ain),
    .Q(\ALU_16bit/raout [3]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_04_  (.CLK(clknet_4_2_0_clk),
    .D(net29),
    .DE(ain),
    .Q(\ALU_16bit/raout [4]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_05_  (.CLK(clknet_4_2_0_clk),
    .D(net30),
    .DE(ain),
    .Q(\ALU_16bit/raout [5]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_06_  (.CLK(clknet_4_2_0_clk),
    .D(net31),
    .DE(ain),
    .Q(\ALU_16bit/raout [6]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_07_  (.CLK(clknet_4_2_0_clk),
    .D(net32),
    .DE(ain),
    .Q(\ALU_16bit/raout [7]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_08_  (.CLK(clknet_4_8_0_clk),
    .D(net33),
    .DE(ain),
    .Q(\ALU_16bit/raout [8]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_09_  (.CLK(clknet_4_8_0_clk),
    .D(net34),
    .DE(ain),
    .Q(\ALU_16bit/raout [9]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_10_  (.CLK(clknet_4_8_0_clk),
    .D(net20),
    .DE(ain),
    .Q(\ALU_16bit/raout [10]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_11_  (.CLK(clknet_4_8_0_clk),
    .D(net21),
    .DE(ain),
    .Q(\ALU_16bit/raout [11]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_12_  (.CLK(clknet_4_10_0_clk),
    .D(net22),
    .DE(ain),
    .Q(\ALU_16bit/raout [12]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_13_  (.CLK(clknet_4_10_0_clk),
    .D(net23),
    .DE(ain),
    .Q(\ALU_16bit/raout [13]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_14_  (.CLK(clknet_4_10_0_clk),
    .D(net24),
    .DE(ain),
    .Q(\ALU_16bit/raout [14]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_a/_15_  (.CLK(clknet_4_10_0_clk),
    .D(net25),
    .DE(ain),
    .Q(\ALU_16bit/raout [15]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_00_  (.CLK(clknet_4_0_0_clk),
    .D(\ALU_16bit/result [0]),
    .DE(gin),
    .Q(aluout[0]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_01_  (.CLK(clknet_4_0_0_clk),
    .D(\ALU_16bit/result [1]),
    .DE(gin),
    .Q(aluout[1]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_02_  (.CLK(clknet_4_0_0_clk),
    .D(\ALU_16bit/result [2]),
    .DE(gin),
    .Q(aluout[2]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_03_  (.CLK(clknet_4_0_0_clk),
    .D(\ALU_16bit/result [3]),
    .DE(gin),
    .Q(aluout[3]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_04_  (.CLK(clknet_4_2_0_clk),
    .D(\ALU_16bit/result [4]),
    .DE(gin),
    .Q(aluout[4]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_05_  (.CLK(clknet_4_2_0_clk),
    .D(\ALU_16bit/result [5]),
    .DE(gin),
    .Q(aluout[5]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_06_  (.CLK(clknet_4_2_0_clk),
    .D(\ALU_16bit/result [6]),
    .DE(gin),
    .Q(aluout[6]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_07_  (.CLK(clknet_4_2_0_clk),
    .D(\ALU_16bit/result [7]),
    .DE(gin),
    .Q(aluout[7]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_08_  (.CLK(clknet_4_8_0_clk),
    .D(\ALU_16bit/result [8]),
    .DE(gin),
    .Q(aluout[8]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_09_  (.CLK(clknet_4_8_0_clk),
    .D(\ALU_16bit/result [9]),
    .DE(gin),
    .Q(aluout[9]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_10_  (.CLK(clknet_4_8_0_clk),
    .D(\ALU_16bit/result [10]),
    .DE(gin),
    .Q(aluout[10]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_11_  (.CLK(clknet_4_8_0_clk),
    .D(\ALU_16bit/result [11]),
    .DE(gin),
    .Q(aluout[11]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_12_  (.CLK(clknet_4_10_0_clk),
    .D(\ALU_16bit/result [12]),
    .DE(gin),
    .Q(aluout[12]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_13_  (.CLK(clknet_4_10_0_clk),
    .D(\ALU_16bit/result [13]),
    .DE(gin),
    .Q(aluout[13]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_14_  (.CLK(clknet_4_10_0_clk),
    .D(\ALU_16bit/result [14]),
    .DE(gin),
    .Q(aluout[14]));
 sky130_fd_sc_hd__edfxtp_1 \ALU_16bit/reg_g/_15_  (.CLK(clknet_4_10_0_clk),
    .D(\ALU_16bit/result [15]),
    .DE(gin),
    .Q(aluout[15]));
 sky130_fd_sc_hd__inv_1 \Control_unit_module/_24_  (.A(state[0]),
    .Y(\Control_unit_module/_00_ ));
 sky130_fd_sc_hd__nand2_8 \Control_unit_module/_25_  (.A(net18),
    .B(net17),
    .Y(\Control_unit_module/_01_ ));
 sky130_fd_sc_hd__nand2_2 \Control_unit_module/_26_  (.A(state[1]),
    .B(state[0]),
    .Y(\Control_unit_module/_02_ ));
 sky130_fd_sc_hd__nand2b_1 \Control_unit_module/_27_  (.A_N(IR[8]),
    .B(IR[7]),
    .Y(\Control_unit_module/_03_ ));
 sky130_fd_sc_hd__o21ai_0 \Control_unit_module/_28_  (.A1(state[1]),
    .A2(\Control_unit_module/_03_ ),
    .B1(state[0]),
    .Y(\Control_unit_module/_04_ ));
 sky130_fd_sc_hd__nand3_1 \Control_unit_module/_29_  (.A(net18),
    .B(net17),
    .C(\Control_unit_module/_04_ ),
    .Y(clear));
 sky130_fd_sc_hd__nor2_1 \Control_unit_module/_30_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_04_ ),
    .Y(net35));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_31_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_02_ ),
    .Y(gout));
 sky130_fd_sc_hd__nand2b_2 \Control_unit_module/_32_  (.A_N(state[1]),
    .B(state[0]),
    .Y(\Control_unit_module/_05_ ));
 sky130_fd_sc_hd__nor2_1 \Control_unit_module/_33_  (.A(IR[7]),
    .B(IR[8]),
    .Y(\Control_unit_module/_06_ ));
 sky130_fd_sc_hd__nand2_1 \Control_unit_module/_34_  (.A(IR[6]),
    .B(\Control_unit_module/_06_ ),
    .Y(\Control_unit_module/_07_ ));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_35_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_05_ ),
    .C(\Control_unit_module/_07_ ),
    .Y(din_enable_CPU));
 sky130_fd_sc_hd__o21ai_4 \Control_unit_module/_36_  (.A1(\Control_unit_module/_00_ ),
    .A2(IR[8]),
    .B1(\Control_unit_module/_02_ ),
    .Y(\Control_unit_module/_08_ ));
 sky130_fd_sc_hd__nor2_2 \Control_unit_module/_37_  (.A(IR[5]),
    .B(\Control_unit_module/_01_ ),
    .Y(\Control_unit_module/_09_ ));
 sky130_fd_sc_hd__nand2_8 \Control_unit_module/_38_  (.A(\Control_unit_module/_08_ ),
    .B(\Control_unit_module/_09_ ),
    .Y(\Control_unit_module/_10_ ));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_39_  (.A(IR[3]),
    .B(IR[4]),
    .C(\Control_unit_module/_10_ ),
    .Y(rin[0]));
 sky130_fd_sc_hd__nand2b_4 \Control_unit_module/_40_  (.A_N(IR[4]),
    .B(IR[3]),
    .Y(\Control_unit_module/_11_ ));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_41_  (.A(\Control_unit_module/_10_ ),
    .B(\Control_unit_module/_11_ ),
    .Y(rin[1]));
 sky130_fd_sc_hd__nand2b_4 \Control_unit_module/_42_  (.A_N(IR[3]),
    .B(IR[4]),
    .Y(\Control_unit_module/_12_ ));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_43_  (.A(\Control_unit_module/_10_ ),
    .B(\Control_unit_module/_12_ ),
    .Y(rin[2]));
 sky130_fd_sc_hd__nand2_4 \Control_unit_module/_44_  (.A(IR[3]),
    .B(IR[4]),
    .Y(\Control_unit_module/_13_ ));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_45_  (.A(\Control_unit_module/_10_ ),
    .B(\Control_unit_module/_13_ ),
    .Y(rin[3]));
 sky130_fd_sc_hd__nand4_4 \Control_unit_module/_46_  (.A(net18),
    .B(net17),
    .C(IR[5]),
    .D(\Control_unit_module/_08_ ),
    .Y(\Control_unit_module/_14_ ));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_47_  (.A(IR[3]),
    .B(IR[4]),
    .C(\Control_unit_module/_14_ ),
    .Y(rin[4]));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_48_  (.A(\Control_unit_module/_11_ ),
    .B(\Control_unit_module/_14_ ),
    .Y(rin[5]));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_49_  (.A(\Control_unit_module/_12_ ),
    .B(\Control_unit_module/_14_ ),
    .Y(rin[6]));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_50_  (.A(\Control_unit_module/_13_ ),
    .B(\Control_unit_module/_14_ ),
    .Y(rin[7]));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_51_  (.A(state[1]),
    .B(state[0]),
    .C(\Control_unit_module/_01_ ),
    .Y(IRin));
 sky130_fd_sc_hd__nand3b_2 \Control_unit_module/_52_  (.A_N(IR[8]),
    .B(IR[7]),
    .C(state[1]),
    .Y(\Control_unit_module/_15_ ));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_53_  (.A(state[0]),
    .B(\Control_unit_module/_01_ ),
    .C(\Control_unit_module/_15_ ),
    .Y(gin));
 sky130_fd_sc_hd__and2_4 \Control_unit_module/_54_  (.A(IR[6]),
    .B(gin),
    .X(sub));
 sky130_fd_sc_hd__nor3_4 \Control_unit_module/_55_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_03_ ),
    .C(\Control_unit_module/_05_ ),
    .Y(ain));
 sky130_fd_sc_hd__nor2_1 \Control_unit_module/_56_  (.A(IR[7]),
    .B(IR[6]),
    .Y(\Control_unit_module/_16_ ));
 sky130_fd_sc_hd__and2_0 \Control_unit_module/_57_  (.A(\Control_unit_module/_02_ ),
    .B(\Control_unit_module/_16_ ),
    .X(\Control_unit_module/_17_ ));
 sky130_fd_sc_hd__nand2_1 \Control_unit_module/_58_  (.A(\Control_unit_module/_02_ ),
    .B(\Control_unit_module/_16_ ),
    .Y(\Control_unit_module/_18_ ));
 sky130_fd_sc_hd__or3_1 \Control_unit_module/_59_  (.A(IR[7]),
    .B(IR[6]),
    .C(IR[8]),
    .X(\Control_unit_module/_19_ ));
 sky130_fd_sc_hd__o22ai_4 \Control_unit_module/_60_  (.A1(state[0]),
    .A2(\Control_unit_module/_15_ ),
    .B1(\Control_unit_module/_19_ ),
    .B2(\Control_unit_module/_05_ ),
    .Y(\Control_unit_module/_20_ ));
 sky130_fd_sc_hd__a32oi_4 \Control_unit_module/_61_  (.A1(IR[3]),
    .A2(\Control_unit_module/_08_ ),
    .A3(\Control_unit_module/_18_ ),
    .B1(\Control_unit_module/_20_ ),
    .B2(IR[0]),
    .Y(\Control_unit_module/_21_ ));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_62_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_21_ ),
    .Y(rout[0]));
 sky130_fd_sc_hd__a32oi_4 \Control_unit_module/_63_  (.A1(IR[4]),
    .A2(\Control_unit_module/_08_ ),
    .A3(\Control_unit_module/_18_ ),
    .B1(\Control_unit_module/_20_ ),
    .B2(IR[1]),
    .Y(\Control_unit_module/_22_ ));
 sky130_fd_sc_hd__nor2_8 \Control_unit_module/_64_  (.A(\Control_unit_module/_01_ ),
    .B(\Control_unit_module/_22_ ),
    .Y(rout[1]));
 sky130_fd_sc_hd__nand4_1 \Control_unit_module/_65_  (.A(IR[2]),
    .B(net18),
    .C(net17),
    .D(\Control_unit_module/_20_ ),
    .Y(\Control_unit_module/_23_ ));
 sky130_fd_sc_hd__o21ai_4 \Control_unit_module/_66_  (.A1(\Control_unit_module/_14_ ),
    .A2(\Control_unit_module/_17_ ),
    .B1(\Control_unit_module/_23_ ),
    .Y(rout[2]));
 sky130_fd_sc_hd__inv_1 \Mux/_136_  (.A(aluout[0]),
    .Y(\Mux/_000_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_137_  (.A(aluout[1]),
    .Y(\Mux/_001_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_138_  (.A(aluout[2]),
    .Y(\Mux/_002_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_139_  (.A(aluout[3]),
    .Y(\Mux/_003_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_140_  (.A(aluout[4]),
    .Y(\Mux/_004_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_141_  (.A(aluout[5]),
    .Y(\Mux/_005_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_142_  (.A(aluout[6]),
    .Y(\Mux/_006_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_143_  (.A(aluout[7]),
    .Y(\Mux/_007_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_144_  (.A(aluout[8]),
    .Y(\Mux/_008_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_145_  (.A(aluout[9]),
    .Y(\Mux/_009_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_146_  (.A(aluout[10]),
    .Y(\Mux/_010_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_147_  (.A(aluout[11]),
    .Y(\Mux/_011_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_148_  (.A(aluout[12]),
    .Y(\Mux/_012_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_149_  (.A(aluout[13]),
    .Y(\Mux/_013_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_150_  (.A(aluout[14]),
    .Y(\Mux/_014_ ));
 sky130_fd_sc_hd__inv_1 \Mux/_151_  (.A(aluout[15]),
    .Y(\Mux/_015_ ));
 sky130_fd_sc_hd__and3_4 \Mux/_152_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .X(\Mux/_016_ ));
 sky130_fd_sc_hd__and3b_4 \Mux/_153_  (.A_N(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .X(\Mux/_017_ ));
 sky130_fd_sc_hd__and3b_2 \Mux/_154_  (.A_N(rout[1]),
    .B(rout[2]),
    .C(rout[0]),
    .X(\Mux/_018_ ));
 sky130_fd_sc_hd__nor3b_4 \Mux/_155_  (.A(rout[1]),
    .B(rout[2]),
    .C_N(rout[0]),
    .Y(\Mux/_019_ ));
 sky130_fd_sc_hd__and3b_4 \Mux/_156_  (.A_N(rout[2]),
    .B(rout[1]),
    .C(rout[0]),
    .X(\Mux/_020_ ));
 sky130_fd_sc_hd__nor3_4 \Mux/_157_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .Y(\Mux/_021_ ));
 sky130_fd_sc_hd__nor4b_1 \Mux/_158_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[0]),
    .Y(\Mux/_022_ ));
 sky130_fd_sc_hd__nor3b_4 \Mux/_159_  (.A(rout[0]),
    .B(rout[2]),
    .C_N(rout[1]),
    .Y(\Mux/_023_ ));
 sky130_fd_sc_hd__nor3b_4 \Mux/_160_  (.A(rout[0]),
    .B(rout[1]),
    .C_N(rout[2]),
    .Y(\Mux/_024_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_161_  (.A1(r7[0]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[0]),
    .Y(\Mux/_025_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_162_  (.A1(r5[0]),
    .A2(\Mux/_018_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[0]),
    .C1(\Mux/_022_ ),
    .Y(\Mux/_026_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_163_  (.A1(r3[0]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[0]),
    .Y(\Mux/_027_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_164_  (.A1(r6[0]),
    .A2(\Mux/_017_ ),
    .B1(gout),
    .Y(\Mux/_028_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_165_  (.A(\Mux/_025_ ),
    .B(\Mux/_026_ ),
    .C(\Mux/_027_ ),
    .D(\Mux/_028_ ),
    .Y(\Mux/_029_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_166_  (.A1(\Mux/_000_ ),
    .A2(gout),
    .B1(din_enable_CPU),
    .Y(\Mux/_030_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_167_  (.A1(net1),
    .A2(din_enable_CPU),
    .B1(\Mux/_029_ ),
    .B2(\Mux/_030_ ),
    .X(net19));
 sky130_fd_sc_hd__a21oi_1 \Mux/_168_  (.A1(r4[1]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_031_ ));
 sky130_fd_sc_hd__nor4b_1 \Mux/_169_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[1]),
    .Y(\Mux/_032_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_170_  (.A1(r3[1]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[1]),
    .C1(\Mux/_032_ ),
    .Y(\Mux/_033_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_171_  (.A1(r6[1]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[1]),
    .Y(\Mux/_034_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_172_  (.A1(r7[1]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[1]),
    .Y(\Mux/_035_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_173_  (.A(\Mux/_031_ ),
    .B(\Mux/_033_ ),
    .C(\Mux/_034_ ),
    .D(\Mux/_035_ ),
    .Y(\Mux/_036_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_174_  (.A1(gout),
    .A2(\Mux/_001_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_037_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_175_  (.A1(din_enable_CPU),
    .A2(net8),
    .B1(\Mux/_036_ ),
    .B2(\Mux/_037_ ),
    .X(net26));
 sky130_fd_sc_hd__nor4bb_1 \Mux/_176_  (.A(rout[0]),
    .B(rout[1]),
    .C_N(rout[2]),
    .D_N(r4[2]),
    .Y(\Mux/_038_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_177_  (.A1(r1[2]),
    .A2(\Mux/_019_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[2]),
    .Y(\Mux/_039_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_178_  (.A1(r6[2]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[2]),
    .C1(\Mux/_038_ ),
    .Y(\Mux/_040_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_179_  (.A1(r7[2]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[2]),
    .Y(\Mux/_041_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_180_  (.A1(r2[2]),
    .A2(\Mux/_023_ ),
    .B1(gout),
    .Y(\Mux/_042_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_181_  (.A(\Mux/_039_ ),
    .B(\Mux/_040_ ),
    .C(\Mux/_041_ ),
    .D(\Mux/_042_ ),
    .Y(\Mux/_043_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_182_  (.A1(gout),
    .A2(\Mux/_002_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_044_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_183_  (.A1(din_enable_CPU),
    .A2(net9),
    .B1(\Mux/_043_ ),
    .B2(\Mux/_044_ ),
    .X(net27));
 sky130_fd_sc_hd__nor4b_1 \Mux/_184_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[3]),
    .Y(\Mux/_045_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_185_  (.A1(r2[3]),
    .A2(\Mux/_023_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[3]),
    .Y(\Mux/_046_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_186_  (.A1(r6[3]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[3]),
    .C1(\Mux/_045_ ),
    .Y(\Mux/_047_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_187_  (.A1(r7[3]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[3]),
    .Y(\Mux/_048_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_188_  (.A1(r5[3]),
    .A2(\Mux/_018_ ),
    .B1(gout),
    .Y(\Mux/_049_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_189_  (.A(\Mux/_046_ ),
    .B(\Mux/_047_ ),
    .C(\Mux/_048_ ),
    .D(\Mux/_049_ ),
    .Y(\Mux/_050_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_190_  (.A1(gout),
    .A2(\Mux/_003_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_051_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_191_  (.A1(din_enable_CPU),
    .A2(net10),
    .B1(\Mux/_050_ ),
    .B2(\Mux/_051_ ),
    .X(net28));
 sky130_fd_sc_hd__a21oi_1 \Mux/_192_  (.A1(r4[4]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_052_ ));
 sky130_fd_sc_hd__nor4b_1 \Mux/_193_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[4]),
    .Y(\Mux/_053_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_194_  (.A1(r3[4]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[4]),
    .C1(\Mux/_053_ ),
    .Y(\Mux/_054_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_195_  (.A1(r6[4]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[4]),
    .Y(\Mux/_055_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_196_  (.A1(r7[4]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[4]),
    .Y(\Mux/_056_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_197_  (.A(\Mux/_052_ ),
    .B(\Mux/_054_ ),
    .C(\Mux/_055_ ),
    .D(\Mux/_056_ ),
    .Y(\Mux/_057_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_198_  (.A1(gout),
    .A2(\Mux/_004_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_058_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_199_  (.A1(din_enable_CPU),
    .A2(net11),
    .B1(\Mux/_057_ ),
    .B2(\Mux/_058_ ),
    .X(net29));
 sky130_fd_sc_hd__and4b_1 \Mux/_200_  (.A_N(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D(r6[5]),
    .X(\Mux/_059_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_201_  (.A1(r2[5]),
    .A2(\Mux/_023_ ),
    .B1(gout),
    .Y(\Mux/_060_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_202_  (.A1(r1[5]),
    .A2(\Mux/_019_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[5]),
    .C1(\Mux/_059_ ),
    .Y(\Mux/_061_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_203_  (.A1(r3[5]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[5]),
    .Y(\Mux/_062_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_204_  (.A1(r7[5]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[5]),
    .Y(\Mux/_063_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_205_  (.A(\Mux/_060_ ),
    .B(\Mux/_061_ ),
    .C(\Mux/_062_ ),
    .D(\Mux/_063_ ),
    .Y(\Mux/_064_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_206_  (.A1(gout),
    .A2(\Mux/_005_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_065_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_207_  (.A1(din_enable_CPU),
    .A2(net12),
    .B1(\Mux/_064_ ),
    .B2(\Mux/_065_ ),
    .X(net30));
 sky130_fd_sc_hd__and4b_1 \Mux/_208_  (.A_N(rout[1]),
    .B(rout[2]),
    .C(r5[6]),
    .D(rout[0]),
    .X(\Mux/_066_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_209_  (.A1(r7[6]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[6]),
    .Y(\Mux/_067_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_210_  (.A1(r6[6]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[6]),
    .C1(\Mux/_066_ ),
    .Y(\Mux/_068_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_211_  (.A1(r3[6]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[6]),
    .Y(\Mux/_069_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_212_  (.A1(r4[6]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_070_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_213_  (.A(\Mux/_067_ ),
    .B(\Mux/_068_ ),
    .C(\Mux/_069_ ),
    .D(\Mux/_070_ ),
    .Y(\Mux/_071_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_214_  (.A1(gout),
    .A2(\Mux/_006_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_072_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_215_  (.A1(din_enable_CPU),
    .A2(net13),
    .B1(\Mux/_071_ ),
    .B2(\Mux/_072_ ),
    .X(net31));
 sky130_fd_sc_hd__nor4b_1 \Mux/_216_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[7]),
    .Y(\Mux/_073_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_217_  (.A1(r2[7]),
    .A2(\Mux/_023_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[7]),
    .Y(\Mux/_074_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_218_  (.A1(r6[7]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[7]),
    .C1(\Mux/_073_ ),
    .Y(\Mux/_075_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_219_  (.A1(r7[7]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[7]),
    .Y(\Mux/_076_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_220_  (.A1(r5[7]),
    .A2(\Mux/_018_ ),
    .B1(gout),
    .Y(\Mux/_077_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_221_  (.A(\Mux/_074_ ),
    .B(\Mux/_075_ ),
    .C(\Mux/_076_ ),
    .D(\Mux/_077_ ),
    .Y(\Mux/_078_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_222_  (.A1(gout),
    .A2(\Mux/_007_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_079_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_223_  (.A1(din_enable_CPU),
    .A2(net14),
    .B1(\Mux/_078_ ),
    .B2(\Mux/_079_ ),
    .X(net32));
 sky130_fd_sc_hd__nor4b_1 \Mux/_224_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[8]),
    .Y(\Mux/_080_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_225_  (.A1(r5[8]),
    .A2(\Mux/_018_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[8]),
    .Y(\Mux/_081_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_226_  (.A1(r6[8]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[8]),
    .C1(\Mux/_080_ ),
    .Y(\Mux/_082_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_227_  (.A1(r7[8]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[8]),
    .Y(\Mux/_083_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_228_  (.A1(r4[8]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_084_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_229_  (.A(\Mux/_081_ ),
    .B(\Mux/_082_ ),
    .C(\Mux/_083_ ),
    .D(\Mux/_084_ ),
    .Y(\Mux/_085_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_230_  (.A1(gout),
    .A2(\Mux/_008_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_086_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_231_  (.A1(din_enable_CPU),
    .A2(net15),
    .B1(\Mux/_085_ ),
    .B2(\Mux/_086_ ),
    .X(net33));
 sky130_fd_sc_hd__nor4bb_1 \Mux/_232_  (.A(rout[1]),
    .B(rout[2]),
    .C_N(r1[9]),
    .D_N(rout[0]),
    .Y(\Mux/_087_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_233_  (.A1(r5[9]),
    .A2(\Mux/_018_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[9]),
    .Y(\Mux/_088_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_234_  (.A1(r6[9]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[9]),
    .C1(\Mux/_087_ ),
    .Y(\Mux/_089_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_235_  (.A1(r2[9]),
    .A2(\Mux/_023_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[9]),
    .Y(\Mux/_090_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_236_  (.A1(r7[9]),
    .A2(\Mux/_016_ ),
    .B1(gout),
    .Y(\Mux/_091_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_237_  (.A(\Mux/_088_ ),
    .B(\Mux/_089_ ),
    .C(\Mux/_090_ ),
    .D(\Mux/_091_ ),
    .Y(\Mux/_092_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_238_  (.A1(gout),
    .A2(\Mux/_009_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_093_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_239_  (.A1(din_enable_CPU),
    .A2(net16),
    .B1(\Mux/_092_ ),
    .B2(\Mux/_093_ ),
    .X(net34));
 sky130_fd_sc_hd__and4b_1 \Mux/_240_  (.A_N(rout[1]),
    .B(rout[2]),
    .C(r5[10]),
    .D(rout[0]),
    .X(\Mux/_094_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_241_  (.A1(r1[10]),
    .A2(\Mux/_019_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[10]),
    .Y(\Mux/_095_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_242_  (.A1(r6[10]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[10]),
    .C1(\Mux/_094_ ),
    .Y(\Mux/_096_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_243_  (.A1(r7[10]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[10]),
    .Y(\Mux/_097_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_244_  (.A1(r2[10]),
    .A2(\Mux/_023_ ),
    .B1(gout),
    .Y(\Mux/_098_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_245_  (.A(\Mux/_095_ ),
    .B(\Mux/_096_ ),
    .C(\Mux/_097_ ),
    .D(\Mux/_098_ ),
    .Y(\Mux/_099_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_246_  (.A1(gout),
    .A2(\Mux/_010_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_100_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_247_  (.A1(din_enable_CPU),
    .A2(net2),
    .B1(\Mux/_099_ ),
    .B2(\Mux/_100_ ),
    .X(net20));
 sky130_fd_sc_hd__and4b_1 \Mux/_248_  (.A_N(rout[1]),
    .B(rout[2]),
    .C(r5[11]),
    .D(rout[0]),
    .X(\Mux/_101_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_249_  (.A1(r7[11]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[11]),
    .Y(\Mux/_102_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_250_  (.A1(r6[11]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[11]),
    .C1(\Mux/_101_ ),
    .Y(\Mux/_103_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_251_  (.A1(r3[11]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[11]),
    .Y(\Mux/_104_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_252_  (.A1(r4[11]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_105_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_253_  (.A(\Mux/_102_ ),
    .B(\Mux/_103_ ),
    .C(\Mux/_104_ ),
    .D(\Mux/_105_ ),
    .Y(\Mux/_106_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_254_  (.A1(gout),
    .A2(\Mux/_011_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_107_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_255_  (.A1(din_enable_CPU),
    .A2(net3),
    .B1(\Mux/_106_ ),
    .B2(\Mux/_107_ ),
    .X(net21));
 sky130_fd_sc_hd__nor4bb_1 \Mux/_256_  (.A(rout[1]),
    .B(rout[2]),
    .C_N(r1[12]),
    .D_N(rout[0]),
    .Y(\Mux/_108_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_257_  (.A1(r0[12]),
    .A2(\Mux/_021_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[12]),
    .Y(\Mux/_109_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_258_  (.A1(r3[12]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[12]),
    .C1(\Mux/_108_ ),
    .Y(\Mux/_110_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_259_  (.A1(r6[12]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[12]),
    .Y(\Mux/_111_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_260_  (.A1(r7[12]),
    .A2(\Mux/_016_ ),
    .B1(gout),
    .Y(\Mux/_112_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_261_  (.A(\Mux/_109_ ),
    .B(\Mux/_110_ ),
    .C(\Mux/_111_ ),
    .D(\Mux/_112_ ),
    .Y(\Mux/_113_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_262_  (.A1(gout),
    .A2(\Mux/_012_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_114_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_263_  (.A1(din_enable_CPU),
    .A2(net4),
    .B1(\Mux/_113_ ),
    .B2(\Mux/_114_ ),
    .X(net22));
 sky130_fd_sc_hd__and4b_1 \Mux/_264_  (.A_N(rout[1]),
    .B(rout[2]),
    .C(r5[13]),
    .D(rout[0]),
    .X(\Mux/_115_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_265_  (.A1(r7[13]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[13]),
    .Y(\Mux/_116_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_266_  (.A1(r6[13]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[13]),
    .C1(\Mux/_115_ ),
    .Y(\Mux/_117_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_267_  (.A1(r3[13]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_021_ ),
    .B2(r0[13]),
    .Y(\Mux/_118_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_268_  (.A1(r4[13]),
    .A2(\Mux/_024_ ),
    .B1(gout),
    .Y(\Mux/_119_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_269_  (.A(\Mux/_116_ ),
    .B(\Mux/_117_ ),
    .C(\Mux/_118_ ),
    .D(\Mux/_119_ ),
    .Y(\Mux/_120_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_270_  (.A1(gout),
    .A2(\Mux/_013_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_121_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_271_  (.A1(din_enable_CPU),
    .A2(net5),
    .B1(\Mux/_120_ ),
    .B2(\Mux/_121_ ),
    .X(net23));
 sky130_fd_sc_hd__nor4b_1 \Mux/_272_  (.A(rout[0]),
    .B(rout[1]),
    .C(rout[2]),
    .D_N(r0[14]),
    .Y(\Mux/_122_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_273_  (.A1(r2[14]),
    .A2(\Mux/_023_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[14]),
    .Y(\Mux/_123_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_274_  (.A1(r6[14]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_020_ ),
    .B2(r3[14]),
    .C1(\Mux/_122_ ),
    .Y(\Mux/_124_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_275_  (.A1(r7[14]),
    .A2(\Mux/_016_ ),
    .B1(\Mux/_019_ ),
    .B2(r1[14]),
    .Y(\Mux/_125_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_276_  (.A1(r5[14]),
    .A2(\Mux/_018_ ),
    .B1(gout),
    .Y(\Mux/_126_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_277_  (.A(\Mux/_123_ ),
    .B(\Mux/_124_ ),
    .C(\Mux/_125_ ),
    .D(\Mux/_126_ ),
    .Y(\Mux/_127_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_278_  (.A1(gout),
    .A2(\Mux/_014_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_128_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_279_  (.A1(din_enable_CPU),
    .A2(net6),
    .B1(\Mux/_127_ ),
    .B2(\Mux/_128_ ),
    .X(net24));
 sky130_fd_sc_hd__nor4bb_1 \Mux/_280_  (.A(rout[1]),
    .B(rout[2]),
    .C_N(r1[15]),
    .D_N(rout[0]),
    .Y(\Mux/_129_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_281_  (.A1(r0[15]),
    .A2(\Mux/_021_ ),
    .B1(\Mux/_024_ ),
    .B2(r4[15]),
    .Y(\Mux/_130_ ));
 sky130_fd_sc_hd__a221oi_1 \Mux/_282_  (.A1(r3[15]),
    .A2(\Mux/_020_ ),
    .B1(\Mux/_023_ ),
    .B2(r2[15]),
    .C1(\Mux/_129_ ),
    .Y(\Mux/_131_ ));
 sky130_fd_sc_hd__a22oi_1 \Mux/_283_  (.A1(r6[15]),
    .A2(\Mux/_017_ ),
    .B1(\Mux/_018_ ),
    .B2(r5[15]),
    .Y(\Mux/_132_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_284_  (.A1(r7[15]),
    .A2(\Mux/_016_ ),
    .B1(gout),
    .Y(\Mux/_133_ ));
 sky130_fd_sc_hd__nand4_1 \Mux/_285_  (.A(\Mux/_130_ ),
    .B(\Mux/_131_ ),
    .C(\Mux/_132_ ),
    .D(\Mux/_133_ ),
    .Y(\Mux/_134_ ));
 sky130_fd_sc_hd__a21oi_1 \Mux/_286_  (.A1(gout),
    .A2(\Mux/_015_ ),
    .B1(din_enable_CPU),
    .Y(\Mux/_135_ ));
 sky130_fd_sc_hd__a22o_2 \Mux/_287_  (.A1(din_enable_CPU),
    .A2(net7),
    .B1(\Mux/_134_ ),
    .B2(\Mux/_135_ ),
    .X(net25));
 sky130_fd_sc_hd__nor2_1 \counter_2bit/_3_  (.A(clear),
    .B(state[0]),
    .Y(\counter_2bit/_0_ ));
 sky130_fd_sc_hd__xnor2_1 \counter_2bit/_4_  (.A(state[0]),
    .B(state[1]),
    .Y(\counter_2bit/_2_ ));
 sky130_fd_sc_hd__nor2_1 \counter_2bit/_5_  (.A(clear),
    .B(\counter_2bit/_2_ ),
    .Y(\counter_2bit/_1_ ));
 sky130_fd_sc_hd__dfxtp_4 \counter_2bit/_6_  (.CLK(clknet_4_9_0_clk),
    .D(\counter_2bit/_0_ ),
    .Q(state[0]));
 sky130_fd_sc_hd__dfxtp_2 \counter_2bit/_7_  (.CLK(clknet_4_9_0_clk),
    .D(\counter_2bit/_1_ ),
    .Q(state[1]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_0_  (.CLK(clknet_4_0_0_clk),
    .D(net1),
    .DE(IRin),
    .Q(IR[0]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_1_  (.CLK(clknet_4_0_0_clk),
    .D(net8),
    .DE(IRin),
    .Q(IR[1]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_2_  (.CLK(clknet_4_1_0_clk),
    .D(net9),
    .DE(IRin),
    .Q(IR[2]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_3_  (.CLK(clknet_4_3_0_clk),
    .D(net10),
    .DE(IRin),
    .Q(IR[3]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_4_  (.CLK(clknet_4_3_0_clk),
    .D(net11),
    .DE(IRin),
    .Q(IR[4]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_5_  (.CLK(clknet_4_3_0_clk),
    .D(net12),
    .DE(IRin),
    .Q(IR[5]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_6_  (.CLK(clknet_4_3_0_clk),
    .D(net13),
    .DE(IRin),
    .Q(IR[6]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_7_  (.CLK(clknet_4_2_0_clk),
    .D(net14),
    .DE(IRin),
    .Q(IR[7]));
 sky130_fd_sc_hd__edfxtp_1 \intr_reg/_8_  (.CLK(clknet_4_3_0_clk),
    .D(net15),
    .DE(IRin),
    .Q(IR[8]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[0]),
    .Q(r0[0]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[0]),
    .Q(r0[1]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_02_  (.CLK(clknet_4_1_0_clk),
    .D(net27),
    .DE(rin[0]),
    .Q(r0[2]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_03_  (.CLK(clknet_4_5_0_clk),
    .D(net28),
    .DE(rin[0]),
    .Q(r0[3]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_04_  (.CLK(clknet_4_5_0_clk),
    .D(net29),
    .DE(rin[0]),
    .Q(r0[4]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[0]),
    .Q(r0[5]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[0]),
    .Q(r0[6]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_07_  (.CLK(clknet_4_7_0_clk),
    .D(net32),
    .DE(rin[0]),
    .Q(r0[7]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_08_  (.CLK(clknet_4_13_0_clk),
    .D(net33),
    .DE(rin[0]),
    .Q(r0[8]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_09_  (.CLK(clknet_4_12_0_clk),
    .D(net34),
    .DE(rin[0]),
    .Q(r0[9]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_10_  (.CLK(clknet_4_9_0_clk),
    .D(net20),
    .DE(rin[0]),
    .Q(r0[10]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[0]),
    .Q(r0[11]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[0]),
    .Q(r0[12]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[0]),
    .Q(r0[13]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_14_  (.CLK(clknet_4_15_0_clk),
    .D(net24),
    .DE(rin[0]),
    .Q(r0[14]));
 sky130_fd_sc_hd__edfxtp_1 \register0/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[0]),
    .Q(r0[15]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[1]),
    .Q(r1[0]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[1]),
    .Q(r1[1]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_02_  (.CLK(clknet_4_1_0_clk),
    .D(net27),
    .DE(rin[1]),
    .Q(r1[2]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_03_  (.CLK(clknet_4_1_0_clk),
    .D(net28),
    .DE(rin[1]),
    .Q(r1[3]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_04_  (.CLK(clknet_4_4_0_clk),
    .D(net29),
    .DE(rin[1]),
    .Q(r1[4]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[1]),
    .Q(r1[5]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[1]),
    .Q(r1[6]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_07_  (.CLK(clknet_4_3_0_clk),
    .D(net32),
    .DE(rin[1]),
    .Q(r1[7]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_08_  (.CLK(clknet_4_9_0_clk),
    .D(net33),
    .DE(rin[1]),
    .Q(r1[8]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_09_  (.CLK(clknet_4_13_0_clk),
    .D(net34),
    .DE(rin[1]),
    .Q(r1[9]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_10_  (.CLK(clknet_4_9_0_clk),
    .D(net20),
    .DE(rin[1]),
    .Q(r1[10]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[1]),
    .Q(r1[11]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[1]),
    .Q(r1[12]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[1]),
    .Q(r1[13]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_14_  (.CLK(clknet_4_11_0_clk),
    .D(net24),
    .DE(rin[1]),
    .Q(r1[14]));
 sky130_fd_sc_hd__edfxtp_1 \register1/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[1]),
    .Q(r1[15]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[2]),
    .Q(r2[0]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[2]),
    .Q(r2[1]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_02_  (.CLK(clknet_4_1_0_clk),
    .D(net27),
    .DE(rin[2]),
    .Q(r2[2]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_03_  (.CLK(clknet_4_1_0_clk),
    .D(net28),
    .DE(rin[2]),
    .Q(r2[3]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_04_  (.CLK(clknet_4_7_0_clk),
    .D(net29),
    .DE(rin[2]),
    .Q(r2[4]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[2]),
    .Q(r2[5]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[2]),
    .Q(r2[6]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_07_  (.CLK(clknet_4_6_0_clk),
    .D(net32),
    .DE(rin[2]),
    .Q(r2[7]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_08_  (.CLK(clknet_4_9_0_clk),
    .D(net33),
    .DE(rin[2]),
    .Q(r2[8]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_09_  (.CLK(clknet_4_12_0_clk),
    .D(net34),
    .DE(rin[2]),
    .Q(r2[9]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_10_  (.CLK(clknet_4_9_0_clk),
    .D(net20),
    .DE(rin[2]),
    .Q(r2[10]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[2]),
    .Q(r2[11]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[2]),
    .Q(r2[12]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[2]),
    .Q(r2[13]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_14_  (.CLK(clknet_4_11_0_clk),
    .D(net24),
    .DE(rin[2]),
    .Q(r2[14]));
 sky130_fd_sc_hd__edfxtp_1 \register2/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[2]),
    .Q(r2[15]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[3]),
    .Q(r3[0]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[3]),
    .Q(r3[1]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_02_  (.CLK(clknet_4_4_0_clk),
    .D(net27),
    .DE(rin[3]),
    .Q(r3[2]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_03_  (.CLK(clknet_4_5_0_clk),
    .D(net28),
    .DE(rin[3]),
    .Q(r3[3]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_04_  (.CLK(clknet_4_7_0_clk),
    .D(net29),
    .DE(rin[3]),
    .Q(r3[4]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[3]),
    .Q(r3[5]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[3]),
    .Q(r3[6]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_07_  (.CLK(clknet_4_7_0_clk),
    .D(net32),
    .DE(rin[3]),
    .Q(r3[7]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_08_  (.CLK(clknet_4_13_0_clk),
    .D(net33),
    .DE(rin[3]),
    .Q(r3[8]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_09_  (.CLK(clknet_4_13_0_clk),
    .D(net34),
    .DE(rin[3]),
    .Q(r3[9]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_10_  (.CLK(clknet_4_13_0_clk),
    .D(net20),
    .DE(rin[3]),
    .Q(r3[10]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[3]),
    .Q(r3[11]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[3]),
    .Q(r3[12]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[3]),
    .Q(r3[13]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_14_  (.CLK(clknet_4_15_0_clk),
    .D(net24),
    .DE(rin[3]),
    .Q(r3[14]));
 sky130_fd_sc_hd__edfxtp_1 \register3/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[3]),
    .Q(r3[15]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[4]),
    .Q(r4[0]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[4]),
    .Q(r4[1]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_02_  (.CLK(clknet_4_4_0_clk),
    .D(net27),
    .DE(rin[4]),
    .Q(r4[2]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_03_  (.CLK(clknet_4_1_0_clk),
    .D(net28),
    .DE(rin[4]),
    .Q(r4[3]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_04_  (.CLK(clknet_4_7_0_clk),
    .D(net29),
    .DE(rin[4]),
    .Q(r4[4]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[4]),
    .Q(r4[5]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[4]),
    .Q(r4[6]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_07_  (.CLK(clknet_4_6_0_clk),
    .D(net32),
    .DE(rin[4]),
    .Q(r4[7]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_08_  (.CLK(clknet_4_9_0_clk),
    .D(net33),
    .DE(rin[4]),
    .Q(r4[8]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_09_  (.CLK(clknet_4_12_0_clk),
    .D(net34),
    .DE(rin[4]),
    .Q(r4[9]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_10_  (.CLK(clknet_4_9_0_clk),
    .D(net20),
    .DE(rin[4]),
    .Q(r4[10]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[4]),
    .Q(r4[11]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[4]),
    .Q(r4[12]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[4]),
    .Q(r4[13]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_14_  (.CLK(clknet_4_11_0_clk),
    .D(net24),
    .DE(rin[4]),
    .Q(r4[14]));
 sky130_fd_sc_hd__edfxtp_1 \register4/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[4]),
    .Q(r4[15]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[5]),
    .Q(r5[0]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[5]),
    .Q(r5[1]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_02_  (.CLK(clknet_4_1_0_clk),
    .D(net27),
    .DE(rin[5]),
    .Q(r5[2]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_03_  (.CLK(clknet_4_1_0_clk),
    .D(net28),
    .DE(rin[5]),
    .Q(r5[3]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_04_  (.CLK(clknet_4_5_0_clk),
    .D(net29),
    .DE(rin[5]),
    .Q(r5[4]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[5]),
    .Q(r5[5]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[5]),
    .Q(r5[6]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_07_  (.CLK(clknet_4_6_0_clk),
    .D(net32),
    .DE(rin[5]),
    .Q(r5[7]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_08_  (.CLK(clknet_4_9_0_clk),
    .D(net33),
    .DE(rin[5]),
    .Q(r5[8]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_09_  (.CLK(clknet_4_13_0_clk),
    .D(net34),
    .DE(rin[5]),
    .Q(r5[9]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_10_  (.CLK(clknet_4_13_0_clk),
    .D(net20),
    .DE(rin[5]),
    .Q(r5[10]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_11_  (.CLK(clknet_4_13_0_clk),
    .D(net21),
    .DE(rin[5]),
    .Q(r5[11]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_12_  (.CLK(clknet_4_14_0_clk),
    .D(net22),
    .DE(rin[5]),
    .Q(r5[12]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[5]),
    .Q(r5[13]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_14_  (.CLK(clknet_4_11_0_clk),
    .D(net24),
    .DE(rin[5]),
    .Q(r5[14]));
 sky130_fd_sc_hd__edfxtp_1 \register5/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[5]),
    .Q(r5[15]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[6]),
    .Q(r6[0]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[6]),
    .Q(r6[1]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_02_  (.CLK(clknet_4_4_0_clk),
    .D(net27),
    .DE(rin[6]),
    .Q(r6[2]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_03_  (.CLK(clknet_4_5_0_clk),
    .D(net28),
    .DE(rin[6]),
    .Q(r6[3]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_04_  (.CLK(clknet_4_5_0_clk),
    .D(net29),
    .DE(rin[6]),
    .Q(r6[4]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_05_  (.CLK(clknet_4_7_0_clk),
    .D(net30),
    .DE(rin[6]),
    .Q(r6[5]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[6]),
    .Q(r6[6]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_07_  (.CLK(clknet_4_13_0_clk),
    .D(net32),
    .DE(rin[6]),
    .Q(r6[7]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_08_  (.CLK(clknet_4_13_0_clk),
    .D(net33),
    .DE(rin[6]),
    .Q(r6[8]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_09_  (.CLK(clknet_4_13_0_clk),
    .D(net34),
    .DE(rin[6]),
    .Q(r6[9]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_10_  (.CLK(clknet_4_13_0_clk),
    .D(net20),
    .DE(rin[6]),
    .Q(r6[10]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_11_  (.CLK(clknet_4_13_0_clk),
    .D(net21),
    .DE(rin[6]),
    .Q(r6[11]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_12_  (.CLK(clknet_4_14_0_clk),
    .D(net22),
    .DE(rin[6]),
    .Q(r6[12]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[6]),
    .Q(r6[13]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_14_  (.CLK(clknet_4_15_0_clk),
    .D(net24),
    .DE(rin[6]),
    .Q(r6[14]));
 sky130_fd_sc_hd__edfxtp_1 \register6/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[6]),
    .Q(r6[15]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_00_  (.CLK(clknet_4_4_0_clk),
    .D(net19),
    .DE(rin[7]),
    .Q(r7[0]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_01_  (.CLK(clknet_4_5_0_clk),
    .D(net26),
    .DE(rin[7]),
    .Q(r7[1]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_02_  (.CLK(clknet_4_1_0_clk),
    .D(net27),
    .DE(rin[7]),
    .Q(r7[2]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_03_  (.CLK(clknet_4_1_0_clk),
    .D(net28),
    .DE(rin[7]),
    .Q(r7[3]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_04_  (.CLK(clknet_4_4_0_clk),
    .D(net29),
    .DE(rin[7]),
    .Q(r7[4]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_05_  (.CLK(clknet_4_6_0_clk),
    .D(net30),
    .DE(rin[7]),
    .Q(r7[5]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_06_  (.CLK(clknet_4_7_0_clk),
    .D(net31),
    .DE(rin[7]),
    .Q(r7[6]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_07_  (.CLK(clknet_4_3_0_clk),
    .D(net32),
    .DE(rin[7]),
    .Q(r7[7]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_08_  (.CLK(clknet_4_9_0_clk),
    .D(net33),
    .DE(rin[7]),
    .Q(r7[8]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_09_  (.CLK(clknet_4_12_0_clk),
    .D(net34),
    .DE(rin[7]),
    .Q(r7[9]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_10_  (.CLK(clknet_4_9_0_clk),
    .D(net20),
    .DE(rin[7]),
    .Q(r7[10]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_11_  (.CLK(clknet_4_12_0_clk),
    .D(net21),
    .DE(rin[7]),
    .Q(r7[11]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_12_  (.CLK(clknet_4_11_0_clk),
    .D(net22),
    .DE(rin[7]),
    .Q(r7[12]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_13_  (.CLK(clknet_4_14_0_clk),
    .D(net23),
    .DE(rin[7]),
    .Q(r7[13]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_14_  (.CLK(clknet_4_11_0_clk),
    .D(net24),
    .DE(rin[7]),
    .Q(r7[14]));
 sky130_fd_sc_hd__edfxtp_1 \register7/_15_  (.CLK(clknet_4_15_0_clk),
    .D(net25),
    .DE(rin[7]),
    .Q(r7[15]));
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_47_Right_47 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_48_Right_48 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_0_Left_49 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_1_Left_50 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_2_Left_51 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_3_Left_52 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_4_Left_53 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_5_Left_54 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_6_Left_55 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_7_Left_56 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_8_Left_57 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_9_Left_58 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_10_Left_59 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_11_Left_60 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_12_Left_61 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_13_Left_62 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_14_Left_63 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_15_Left_64 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_16_Left_65 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_17_Left_66 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_18_Left_67 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_19_Left_68 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_20_Left_69 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_21_Left_70 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_22_Left_71 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_23_Left_72 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_24_Left_73 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_25_Left_74 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_26_Left_75 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_27_Left_76 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_28_Left_77 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_29_Left_78 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_30_Left_79 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_31_Left_80 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_32_Left_81 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_33_Left_82 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_34_Left_83 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_35_Left_84 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_36_Left_85 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_37_Left_86 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_38_Left_87 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_39_Left_88 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_40_Left_89 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_41_Left_90 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_42_Left_91 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_43_Left_92 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_44_Left_93 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_45_Left_94 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_46_Left_95 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_47_Left_96 ();
 sky130_fd_sc_hd__tap_1 PHY_EDGE_ROW_48_Left_97 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(din[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(din[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(din[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(din[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(din[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(din[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(din[15]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(din[1]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(din[2]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(din[3]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(din[4]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(din[5]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(din[6]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(din[7]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(din[8]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(din[9]),
    .X(net16));
 sky130_fd_sc_hd__buf_2 input17 (.A(resetn),
    .X(net17));
 sky130_fd_sc_hd__buf_2 input18 (.A(run),
    .X(net18));
 sky130_fd_sc_hd__probec_p_8 output19 (.A(net19),
    .X(buswires[0]));
 sky130_fd_sc_hd__probec_p_8 output20 (.A(net20),
    .X(buswires[10]));
 sky130_fd_sc_hd__probec_p_8 output21 (.A(net21),
    .X(buswires[11]));
 sky130_fd_sc_hd__probec_p_8 output22 (.A(net22),
    .X(buswires[12]));
 sky130_fd_sc_hd__probec_p_8 output23 (.A(net23),
    .X(buswires[13]));
 sky130_fd_sc_hd__probec_p_8 output24 (.A(net24),
    .X(buswires[14]));
 sky130_fd_sc_hd__probec_p_8 output25 (.A(net25),
    .X(buswires[15]));
 sky130_fd_sc_hd__probec_p_8 output26 (.A(net26),
    .X(buswires[1]));
 sky130_fd_sc_hd__probec_p_8 output27 (.A(net27),
    .X(buswires[2]));
 sky130_fd_sc_hd__probec_p_8 output28 (.A(net28),
    .X(buswires[3]));
 sky130_fd_sc_hd__probec_p_8 output29 (.A(net29),
    .X(buswires[4]));
 sky130_fd_sc_hd__probec_p_8 output30 (.A(net30),
    .X(buswires[5]));
 sky130_fd_sc_hd__probec_p_8 output31 (.A(net31),
    .X(buswires[6]));
 sky130_fd_sc_hd__probec_p_8 output32 (.A(net32),
    .X(buswires[7]));
 sky130_fd_sc_hd__probec_p_8 output33 (.A(net33),
    .X(buswires[8]));
 sky130_fd_sc_hd__probec_p_8 output34 (.A(net34),
    .X(buswires[9]));
 sky130_fd_sc_hd__probec_p_8 output35 (.A(net35),
    .X(done));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .X(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload0 (.A(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload1 (.A(clknet_4_1_0_clk));
 sky130_fd_sc_hd__inv_4 clkload2 (.A(clknet_4_2_0_clk));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_4_3_0_clk));
 sky130_fd_sc_hd__inv_1 clkload4 (.A(clknet_4_4_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload5 (.A(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload6 (.A(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload7 (.A(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload8 (.A(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload9 (.A(clknet_4_11_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload10 (.A(clknet_4_12_0_clk));
 sky130_fd_sc_hd__inv_1 clkload11 (.A(clknet_4_13_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload12 (.A(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload13 (.A(clknet_4_15_0_clk));
endmodule
