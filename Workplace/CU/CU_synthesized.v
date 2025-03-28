/* Generated by Yosys 0.48+5 (git sha1 4581f75b0, g++ 13.3.0-6ubuntu2~24.04 -fPIC -O3) */

(* keep =  1  *)
(* top =  1  *)
(* src = "CU.v:3.1-186.10" *)
module CU(run, resetn, IR, state, IRin, rin, rout, din_enable, gout, ain, gin, sub, clear, done);
  (* src = "CU.v:49.1-161.4" *)
  wire _000_;
  (* src = "CU.v:49.1-161.4" *)
  wire _001_;
  (* src = "CU.v:49.1-161.4" *)
  wire _002_;
  (* src = "CU.v:49.1-161.4" *)
  wire _003_;
  (* src = "CU.v:49.1-161.4" *)
  wire _004_;
  (* src = "CU.v:49.1-161.4" *)
  wire _005_;
  (* src = "CU.v:49.1-161.4" *)
  wire _006_;
  (* src = "CU.v:49.1-161.4" *)
  wire [7:0] _007_;
  (* src = "CU.v:49.1-161.4" *)
  wire [2:0] _008_;
  (* src = "CU.v:49.1-161.4" *)
  wire _009_;
  (* src = "CU.v:49.1-161.4" *)
  wire [7:0] _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  (* src = "CU.v:121.33-121.57" *)
  wire _019_;
  (* src = "CU.v:139.29-139.58" *)
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  (* force_downto = 32'd1 *)
  (* src = "CU.v:0.0-0.0|CU.v:94.29-124.36|/usr/local/bin/../share/yosys/techmap.v:570.20-570.21" *)
  wire [7:0] _071_;
  (* force_downto = 32'd1 *)
  (* src = "CU.v:0.0-0.0|CU.v:94.29-124.36|/usr/local/bin/../share/yosys/techmap.v:572.28-572.29" *)
  wire [15:0] _072_;
  (* src = "CU.v:7.16-7.18" *)
  input [8:0] IR;
  wire [8:0] IR;
  (* src = "CU.v:11.16-11.20" *)
  output IRin;
  reg IRin;
  (* src = "CU.v:19.16-19.19" *)
  output ain;
  reg ain;
  (* src = "CU.v:23.16-23.21" *)
  output clear;
  reg clear;
  (* src = "CU.v:16.16-16.26" *)
  output din_enable;
  reg din_enable;
  (* src = "CU.v:24.16-24.20" *)
  output done;
  reg done;
  (* src = "CU.v:20.16-20.19" *)
  output gin;
  reg gin;
  (* src = "CU.v:17.16-17.20" *)
  output gout;
  reg gout;
  (* src = "CU.v:27.12-27.18" *)
  wire [2:0] opcode;
  (* src = "CU.v:6.11-6.17" *)
  input resetn;
  wire resetn;
  (* src = "CU.v:13.22-13.25" *)
  output [7:0] rin;
  reg [7:0] rin;
  (* nosync = 32'd1 *)
  (* src = "CU.v:166.35-166.37" *)
  wire [2:0] \rin_mux$func$CU.v:106$2.rx ;
  (* nosync = 32'd1 *)
  (* src = "CU.v:166.35-166.37" *)
  wire [2:0] \rin_mux$func$CU.v:114$3.rx ;
  (* nosync = 32'd1 *)
  (* src = "CU.v:166.35-166.37" *)
  wire [2:0] \rin_mux$func$CU.v:144$4.rx ;
  (* nosync = 32'd1 *)
  (* src = "CU.v:166.35-166.37" *)
  wire [2:0] \rin_mux$func$CU.v:97$1.rx ;
  (* src = "CU.v:15.21-15.25" *)
  output [2:0] rout;
  reg [2:0] rout;
  (* src = "CU.v:5.11-5.14" *)
  input run;
  wire run;
  (* src = "CU.v:28.12-28.14" *)
  wire [2:0] rx;
  (* src = "CU.v:29.12-29.14" *)
  wire [2:0] ry;
  (* src = "CU.v:8.16-8.21" *)
  input [1:0] state;
  wire [1:0] state;
  (* src = "CU.v:21.16-21.19" *)
  output sub;
  reg sub;
  (* full_case = 32'd1 *)
  (* src = "CU.v:167.9-177.16" *)
  reg [7:0] \$auto$proc_rom.cc:155:do_switch$64  [7:0];
  initial begin
    \$auto$proc_rom.cc:155:do_switch$64 [0] = 8'h01;
    \$auto$proc_rom.cc:155:do_switch$64 [1] = 8'h02;
    \$auto$proc_rom.cc:155:do_switch$64 [2] = 8'h04;
    \$auto$proc_rom.cc:155:do_switch$64 [3] = 8'h08;
    \$auto$proc_rom.cc:155:do_switch$64 [4] = 8'h10;
    \$auto$proc_rom.cc:155:do_switch$64 [5] = 8'h20;
    \$auto$proc_rom.cc:155:do_switch$64 [6] = 8'h40;
    \$auto$proc_rom.cc:155:do_switch$64 [7] = 8'h80;
  end
  assign _071_ = \$auto$proc_rom.cc:155:do_switch$64 [IR[5:3]];
  (* full_case = 32'd1 *)
  (* src = "CU.v:167.9-177.16" *)
  reg [7:0] \$auto$proc_rom.cc:155:do_switch$68  [7:0];
  initial begin
    \$auto$proc_rom.cc:155:do_switch$68 [0] = 8'h01;
    \$auto$proc_rom.cc:155:do_switch$68 [1] = 8'h02;
    \$auto$proc_rom.cc:155:do_switch$68 [2] = 8'h04;
    \$auto$proc_rom.cc:155:do_switch$68 [3] = 8'h08;
    \$auto$proc_rom.cc:155:do_switch$68 [4] = 8'h10;
    \$auto$proc_rom.cc:155:do_switch$68 [5] = 8'h20;
    \$auto$proc_rom.cc:155:do_switch$68 [6] = 8'h40;
    \$auto$proc_rom.cc:155:do_switch$68 [7] = 8'h80;
  end
  assign _072_[15:8] = \$auto$proc_rom.cc:155:do_switch$68 [IR[5:3]];
  (* full_case = 32'd1 *)
  (* src = "CU.v:167.9-177.16" *)
  reg [7:0] \$auto$proc_rom.cc:155:do_switch$72  [7:0];
  initial begin
    \$auto$proc_rom.cc:155:do_switch$72 [0] = 8'h01;
    \$auto$proc_rom.cc:155:do_switch$72 [1] = 8'h02;
    \$auto$proc_rom.cc:155:do_switch$72 [2] = 8'h04;
    \$auto$proc_rom.cc:155:do_switch$72 [3] = 8'h08;
    \$auto$proc_rom.cc:155:do_switch$72 [4] = 8'h10;
    \$auto$proc_rom.cc:155:do_switch$72 [5] = 8'h20;
    \$auto$proc_rom.cc:155:do_switch$72 [6] = 8'h40;
    \$auto$proc_rom.cc:155:do_switch$72 [7] = 8'h80;
  end
  assign _072_[7:0] = \$auto$proc_rom.cc:155:do_switch$72 [IR[5:3]];
  (* full_case = 32'd1 *)
  (* src = "CU.v:167.9-177.16" *)
  reg [7:0] \$auto$proc_rom.cc:155:do_switch$76  [7:0];
  initial begin
    \$auto$proc_rom.cc:155:do_switch$76 [0] = 8'h01;
    \$auto$proc_rom.cc:155:do_switch$76 [1] = 8'h02;
    \$auto$proc_rom.cc:155:do_switch$76 [2] = 8'h04;
    \$auto$proc_rom.cc:155:do_switch$76 [3] = 8'h08;
    \$auto$proc_rom.cc:155:do_switch$76 [4] = 8'h10;
    \$auto$proc_rom.cc:155:do_switch$76 [5] = 8'h20;
    \$auto$proc_rom.cc:155:do_switch$76 [6] = 8'h40;
    \$auto$proc_rom.cc:155:do_switch$76 [7] = 8'h80;
  end
  assign _010_ = \$auto$proc_rom.cc:155:do_switch$76 [IR[5:3]];
  sky130_fd_sc_hd__clkinv_1 _073_ (
    .A(state[1]),
    .Y(_054_)
  );
  sky130_fd_sc_hd__clkinv_1 _074_ (
    .A(resetn),
    .Y(_055_)
  );
  sky130_fd_sc_hd__and2_0 _075_ (
    .A(state[0]),
    .B(resetn),
    .X(_056_)
  );
  sky130_fd_sc_hd__nand2_1 _076_ (
    .A(state[1]),
    .B(state[0]),
    .Y(_057_)
  );
  sky130_fd_sc_hd__and3_1 _077_ (
    .A(state[1]),
    .B(state[0]),
    .C(resetn),
    .X(_006_)
  );
  sky130_fd_sc_hd__and3b_1 _078_ (
    .A_N(state[1]),
    .B(state[0]),
    .C(resetn),
    .X(_001_)
  );
  sky130_fd_sc_hd__nor2_1 _079_ (
    .A(IR[7]),
    .B(IR[8]),
    .Y(_058_)
  );
  sky130_fd_sc_hd__nand2_1 _080_ (
    .A(_001_),
    .B(_058_),
    .Y(_059_)
  );
  sky130_fd_sc_hd__o21ai_0 _081_ (
    .A1(_055_),
    .A2(_057_),
    .B1(_059_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__nand2_1 _082_ (
    .A(resetn),
    .B(_057_),
    .Y(_060_)
  );
  sky130_fd_sc_hd__nand3_1 _083_ (
    .A(resetn),
    .B(_057_),
    .C(_059_),
    .Y(_002_)
  );
  sky130_fd_sc_hd__nor3b_1 _084_ (
    .A(IR[7]),
    .B(IR[8]),
    .C_N(IR[6]),
    .Y(_061_)
  );
  sky130_fd_sc_hd__and2_0 _085_ (
    .A(_001_),
    .B(_061_),
    .X(_003_)
  );
  sky130_fd_sc_hd__nand2b_1 _086_ (
    .A_N(state[0]),
    .B(state[1]),
    .Y(_062_)
  );
  sky130_fd_sc_hd__and3b_1 _087_ (
    .A_N(state[0]),
    .B(resetn),
    .C(state[1]),
    .X(_005_)
  );
  sky130_fd_sc_hd__and4b_1 _088_ (
    .A_N(IR[8]),
    .B(_005_),
    .C(IR[7]),
    .D(IR[6]),
    .X(_009_)
  );
  sky130_fd_sc_hd__lpflow_isobufsrc_1 _089_ (
    .A(IR[7]),
    .SLEEP(IR[8]),
    .X(_063_)
  );
  sky130_fd_sc_hd__nand2b_1 _090_ (
    .A_N(IR[8]),
    .B(IR[7]),
    .Y(_064_)
  );
  sky130_fd_sc_hd__o21bai_1 _091_ (
    .A1(IR[7]),
    .A2(IR[6]),
    .B1_N(IR[8]),
    .Y(_065_)
  );
  sky130_fd_sc_hd__o21ba_1 _092_ (
    .A1(IR[7]),
    .A2(IR[6]),
    .B1_N(IR[8]),
    .X(_066_)
  );
  sky130_fd_sc_hd__o211ai_1 _093_ (
    .A1(state[1]),
    .A2(_065_),
    .B1(_057_),
    .C1(IR[0]),
    .Y(_067_)
  );
  sky130_fd_sc_hd__o211ai_1 _094_ (
    .A1(state[1]),
    .A2(_066_),
    .B1(_062_),
    .C1(IR[3]),
    .Y(_068_)
  );
  sky130_fd_sc_hd__a21oi_1 _095_ (
    .A1(_067_),
    .A2(_068_),
    .B1(_055_),
    .Y(_008_[0])
  );
  sky130_fd_sc_hd__o211ai_1 _096_ (
    .A1(state[1]),
    .A2(_066_),
    .B1(_062_),
    .C1(IR[4]),
    .Y(_069_)
  );
  sky130_fd_sc_hd__o211ai_1 _097_ (
    .A1(state[1]),
    .A2(_065_),
    .B1(_057_),
    .C1(IR[1]),
    .Y(_070_)
  );
  sky130_fd_sc_hd__a21oi_1 _098_ (
    .A1(_069_),
    .A2(_070_),
    .B1(_055_),
    .Y(_008_[1])
  );
  sky130_fd_sc_hd__o211ai_1 _099_ (
    .A1(state[1]),
    .A2(_066_),
    .B1(_062_),
    .C1(IR[5]),
    .Y(_021_)
  );
  sky130_fd_sc_hd__o211ai_1 _100_ (
    .A1(state[1]),
    .A2(_065_),
    .B1(_057_),
    .C1(IR[2]),
    .Y(_022_)
  );
  sky130_fd_sc_hd__a21oi_1 _101_ (
    .A1(_021_),
    .A2(_022_),
    .B1(_055_),
    .Y(_008_[2])
  );
  sky130_fd_sc_hd__nand2_1 _102_ (
    .A(_010_[0]),
    .B(_006_),
    .Y(_023_)
  );
  sky130_fd_sc_hd__and3b_1 _103_ (
    .A_N(IR[8]),
    .B(_072_[0]),
    .C(IR[7]),
    .X(_024_)
  );
  sky130_fd_sc_hd__a221oi_1 _104_ (
    .A1(_072_[8]),
    .A2(_061_),
    .B1(_065_),
    .B2(_071_[0]),
    .C1(_024_),
    .Y(_025_)
  );
  sky130_fd_sc_hd__o21ai_0 _105_ (
    .A1(_060_),
    .A2(_025_),
    .B1(_023_),
    .Y(_007_[0])
  );
  sky130_fd_sc_hd__nand2_1 _106_ (
    .A(_010_[1]),
    .B(_006_),
    .Y(_026_)
  );
  sky130_fd_sc_hd__a222oi_1 _107_ (
    .A1(_072_[9]),
    .A2(_061_),
    .B1(_063_),
    .B2(_072_[1]),
    .C1(_071_[1]),
    .C2(_065_),
    .Y(_027_)
  );
  sky130_fd_sc_hd__o21ai_0 _108_ (
    .A1(_060_),
    .A2(_027_),
    .B1(_026_),
    .Y(_007_[1])
  );
  sky130_fd_sc_hd__nand2_1 _109_ (
    .A(_010_[2]),
    .B(_006_),
    .Y(_028_)
  );
  sky130_fd_sc_hd__and3b_1 _110_ (
    .A_N(IR[8]),
    .B(_072_[2]),
    .C(IR[7]),
    .X(_029_)
  );
  sky130_fd_sc_hd__a221oi_1 _111_ (
    .A1(_072_[10]),
    .A2(_061_),
    .B1(_065_),
    .B2(_071_[2]),
    .C1(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__o21ai_0 _112_ (
    .A1(_060_),
    .A2(_030_),
    .B1(_028_),
    .Y(_007_[2])
  );
  sky130_fd_sc_hd__nand2_1 _113_ (
    .A(_010_[3]),
    .B(_006_),
    .Y(_031_)
  );
  sky130_fd_sc_hd__a222oi_1 _114_ (
    .A1(_072_[11]),
    .A2(_061_),
    .B1(_063_),
    .B2(_072_[3]),
    .C1(_071_[3]),
    .C2(_065_),
    .Y(_032_)
  );
  sky130_fd_sc_hd__o21ai_0 _115_ (
    .A1(_060_),
    .A2(_032_),
    .B1(_031_),
    .Y(_007_[3])
  );
  sky130_fd_sc_hd__nand2_1 _116_ (
    .A(_010_[4]),
    .B(_006_),
    .Y(_033_)
  );
  sky130_fd_sc_hd__a222oi_1 _117_ (
    .A1(_072_[12]),
    .A2(_061_),
    .B1(_063_),
    .B2(_072_[4]),
    .C1(_071_[4]),
    .C2(_065_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__o21ai_0 _118_ (
    .A1(_060_),
    .A2(_034_),
    .B1(_033_),
    .Y(_007_[4])
  );
  sky130_fd_sc_hd__nand2_1 _119_ (
    .A(_010_[5]),
    .B(_006_),
    .Y(_035_)
  );
  sky130_fd_sc_hd__and3b_1 _120_ (
    .A_N(IR[8]),
    .B(_072_[5]),
    .C(IR[7]),
    .X(_036_)
  );
  sky130_fd_sc_hd__a221oi_1 _121_ (
    .A1(_072_[13]),
    .A2(_061_),
    .B1(_065_),
    .B2(_071_[5]),
    .C1(_036_),
    .Y(_037_)
  );
  sky130_fd_sc_hd__o21ai_0 _122_ (
    .A1(_060_),
    .A2(_037_),
    .B1(_035_),
    .Y(_007_[5])
  );
  sky130_fd_sc_hd__nand2_1 _123_ (
    .A(_010_[6]),
    .B(_006_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__and3b_1 _124_ (
    .A_N(IR[8]),
    .B(_072_[6]),
    .C(IR[7]),
    .X(_039_)
  );
  sky130_fd_sc_hd__a221oi_1 _125_ (
    .A1(_072_[14]),
    .A2(_061_),
    .B1(_065_),
    .B2(_071_[6]),
    .C1(_039_),
    .Y(_040_)
  );
  sky130_fd_sc_hd__o21ai_0 _126_ (
    .A1(_060_),
    .A2(_040_),
    .B1(_038_),
    .Y(_007_[6])
  );
  sky130_fd_sc_hd__nand2_1 _127_ (
    .A(_010_[7]),
    .B(_006_),
    .Y(_041_)
  );
  sky130_fd_sc_hd__and3b_1 _128_ (
    .A_N(IR[8]),
    .B(_072_[7]),
    .C(IR[7]),
    .X(_042_)
  );
  sky130_fd_sc_hd__a221oi_1 _129_ (
    .A1(_072_[15]),
    .A2(_061_),
    .B1(_065_),
    .B2(_071_[7]),
    .C1(_042_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__o21ai_0 _130_ (
    .A1(_060_),
    .A2(_043_),
    .B1(_041_),
    .Y(_007_[7])
  );
  sky130_fd_sc_hd__a21oi_1 _131_ (
    .A1(_054_),
    .A2(state[0]),
    .B1(_055_),
    .Y(_000_)
  );
  sky130_fd_sc_hd__nand3_1 _132_ (
    .A(run),
    .B(_005_),
    .C(_064_),
    .Y(_044_)
  );
  sky130_fd_sc_hd__clkinv_1 _133_ (
    .A(_044_),
    .Y(_020_)
  );
  sky130_fd_sc_hd__lpflow_isobufsrc_1 _134_ (
    .A(run),
    .SLEEP(state[1]),
    .X(_045_)
  );
  sky130_fd_sc_hd__nand2_1 _135_ (
    .A(IR[8]),
    .B(_045_),
    .Y(_046_)
  );
  sky130_fd_sc_hd__and3_1 _136_ (
    .A(IR[8]),
    .B(_056_),
    .C(_045_),
    .X(_019_)
  );
  sky130_fd_sc_hd__nand3_1 _137_ (
    .A(run),
    .B(_001_),
    .C(_064_),
    .Y(_047_)
  );
  sky130_fd_sc_hd__nand2b_1 _138_ (
    .A_N(run),
    .B(resetn),
    .Y(_048_)
  );
  sky130_fd_sc_hd__clkinv_1 _139_ (
    .A(_048_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__a21oi_1 _140_ (
    .A1(state[1]),
    .A2(resetn),
    .B1(_016_),
    .Y(_049_)
  );
  sky130_fd_sc_hd__nand2_1 _141_ (
    .A(_047_),
    .B(_049_),
    .Y(_017_)
  );
  sky130_fd_sc_hd__a31oi_1 _142_ (
    .A1(state[0]),
    .A2(run),
    .A3(_046_),
    .B1(_055_),
    .Y(_018_)
  );
  sky130_fd_sc_hd__nor2_1 _143_ (
    .A(state[1]),
    .B(state[0]),
    .Y(_050_)
  );
  sky130_fd_sc_hd__o21ai_0 _144_ (
    .A1(state[1]),
    .A2(state[0]),
    .B1(run),
    .Y(_051_)
  );
  sky130_fd_sc_hd__a31oi_1 _145_ (
    .A1(IR[8]),
    .A2(_056_),
    .A3(_045_),
    .B1(_051_),
    .Y(_052_)
  );
  sky130_fd_sc_hd__o21ai_0 _146_ (
    .A1(_055_),
    .A2(_052_),
    .B1(_044_),
    .Y(_011_)
  );
  sky130_fd_sc_hd__o21ai_0 _147_ (
    .A1(IR[7]),
    .A2(IR[8]),
    .B1(_001_),
    .Y(_053_)
  );
  sky130_fd_sc_hd__nand2_1 _148_ (
    .A(_049_),
    .B(_053_),
    .Y(_012_)
  );
  sky130_fd_sc_hd__o21ai_0 _149_ (
    .A1(_060_),
    .A2(_050_),
    .B1(_048_),
    .Y(_013_)
  );
  sky130_fd_sc_hd__nand3_1 _150_ (
    .A(_044_),
    .B(_047_),
    .C(_048_),
    .Y(_014_)
  );
  sky130_fd_sc_hd__nand3b_1 _151_ (
    .A_N(_056_),
    .B(_044_),
    .C(_048_),
    .Y(_015_)
  );
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_017_) IRin = _000_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[0] = _007_[0];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[1] = _007_[1];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[2] = _007_[2];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[3] = _007_[3];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[4] = _007_[4];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[5] = _007_[5];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[6] = _007_[6];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_018_) rin[7] = _007_[7];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_011_) rout[0] = _008_[0];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_011_) rout[1] = _008_[1];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_011_) rout[2] = _008_[2];
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_012_) din_enable = _003_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_013_) gout = _006_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_014_) ain = _001_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_014_) gin = _005_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_015_) sub = _009_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_016_) clear = _002_;
  (* src = "CU.v:49.1-161.4" *)
  always @*
    if (!_016_) done = _004_;
  always @*
    if (_019_)
      $write("None values\n");
  always @*
    if (_020_)
      $write("None any values.\n");
  always @*
    if (1'h0)
      $write("Invalid opcode: %02b\n", $unsigned(state));
  always @*
    if (1'h0)
      $write("None initial values in this module\n");
  always @*
    if (1'h0)
      $write("None initial values in this module\n");
  always @*
    if (1'h0)
      $write("None initial values in this module\n");
  always @*
    if (1'h0)
      $write("None initial values in this module\n");
  assign opcode = IR[8:6];
  assign \rin_mux$func$CU.v:106$2.rx  = 3'hx;
  assign \rin_mux$func$CU.v:114$3.rx  = 3'hx;
  assign \rin_mux$func$CU.v:144$4.rx  = 3'hx;
  assign \rin_mux$func$CU.v:97$1.rx  = 3'hx;
  assign rx = IR[5:3];
  assign ry = IR[2:0];
endmodule
