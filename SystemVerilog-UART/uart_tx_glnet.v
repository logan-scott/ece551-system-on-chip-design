/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-1
// Date      : Sun May  5 16:36:07 2024
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_uart_tx_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net80, net82, net83, net86, n1;
  assign net80 = CLK;
  assign ENCLK = net82;
  assign net83 = EN;

  latchgd_x1 latch ( .G(n1), .D(net83), .Q(net86) );
  and2_x1 main_gate ( .A(net86), .B(net80), .Y(net82) );
  inv_x1 U2 ( .A(net80), .Y(n1) );
endmodule


module SNPS_CLOCK_GATE_HIGH_uart_tx_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net80, net82, net83, net86, n2;
  assign net80 = CLK;
  assign ENCLK = net82;
  assign net83 = EN;

  latchgd_x1 latch ( .G(n2), .D(net83), .Q(net86) );
  and2_x1 main_gate ( .A(net86), .B(net80), .Y(net82) );
  inv_x1 U2 ( .A(net80), .Y(n2) );
endmodule


module SNPS_CLOCK_GATE_HIGH_uart_tx_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net80, net82, net83, net86, n2;
  assign net80 = CLK;
  assign ENCLK = net82;
  assign net83 = EN;

  latchgd_x1 latch ( .G(n2), .D(net83), .Q(net86) );
  and2_x1 main_gate ( .A(net86), .B(net80), .Y(net82) );
  inv_x1 U2 ( .A(net80), .Y(n2) );
endmodule


module uart_tx ( sig_tx, data_tx, valid_tx, ready_tx, clk, rstn );
  input [7:0] data_tx;
  input valid_tx, clk, rstn;
  output sig_tx, ready_tx;
  wire   N150, N151, N152, N153, N154, N155, N156, N157, N158, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, net92, net97, net102, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126;
  wire   [1:0] state;
  wire   [7:0] data_r;
  wire   [2:0] data_cnt;
  wire   [11:0] clk_cnt;

  SNPS_CLOCK_GATE_HIGH_uart_tx_0 clk_gate_clk_cnt_reg ( .CLK(clk), .EN(N165), 
        .ENCLK(net92) );
  SNPS_CLOCK_GATE_HIGH_uart_tx_2 clk_gate_data_r_reg ( .CLK(clk), .EN(N150), 
        .ENCLK(net97) );
  SNPS_CLOCK_GATE_HIGH_uart_tx_1 clk_gate_data_cnt_reg ( .CLK(clk), .EN(N161), 
        .ENCLK(net102) );
  ffthq_x1 \data_cnt_reg[1]  ( .D(N163), .CLK(net102), .Q(data_cnt[1]) );
  ffthq_x1 \state_reg[1]  ( .D(n53), .CLK(clk), .Q(state[1]) );
  ffthq_x1 \state_reg[0]  ( .D(n54), .CLK(clk), .Q(state[0]) );
  ffthq_x1 ready_r_reg ( .D(n55), .CLK(clk), .Q(ready_tx) );
  ffthq_x1 \clk_cnt_reg[10]  ( .D(N176), .CLK(net92), .Q(clk_cnt[10]) );
  ffthq_x1 \clk_cnt_reg[7]  ( .D(N173), .CLK(net92), .Q(clk_cnt[7]) );
  ffthq_x1 \clk_cnt_reg[4]  ( .D(N170), .CLK(net92), .Q(clk_cnt[4]) );
  ffthq_x1 \clk_cnt_reg[3]  ( .D(N169), .CLK(net92), .Q(clk_cnt[3]) );
  ffthq_x1 \clk_cnt_reg[1]  ( .D(N167), .CLK(net92), .Q(clk_cnt[1]) );
  ffthq_x1 \clk_cnt_reg[0]  ( .D(N166), .CLK(net92), .Q(clk_cnt[0]) );
  ffthq_x1 \clk_cnt_reg[2]  ( .D(N168), .CLK(net92), .Q(clk_cnt[2]) );
  ffthq_x1 \clk_cnt_reg[8]  ( .D(N174), .CLK(net92), .Q(clk_cnt[8]) );
  ffthq_x1 \data_r_reg[7]  ( .D(N158), .CLK(net97), .Q(data_r[7]) );
  ffthq_x1 \data_r_reg[6]  ( .D(N157), .CLK(net97), .Q(data_r[6]) );
  ffthq_x1 \data_r_reg[5]  ( .D(N156), .CLK(net97), .Q(data_r[5]) );
  ffthq_x1 \data_r_reg[4]  ( .D(N155), .CLK(net97), .Q(data_r[4]) );
  ffthq_x1 \data_r_reg[3]  ( .D(N154), .CLK(net97), .Q(data_r[3]) );
  ffthq_x1 \data_r_reg[2]  ( .D(N153), .CLK(net97), .Q(data_r[2]) );
  ffthq_x1 \data_r_reg[1]  ( .D(N152), .CLK(net97), .Q(data_r[1]) );
  ffthq_x1 \data_r_reg[0]  ( .D(N151), .CLK(net97), .Q(data_r[0]) );
  ffthq_x1 \clk_cnt_reg[5]  ( .D(N171), .CLK(net92), .Q(clk_cnt[5]) );
  ffthq_x1 \clk_cnt_reg[6]  ( .D(N172), .CLK(net92), .Q(clk_cnt[6]) );
  ffthq_x1 \clk_cnt_reg[9]  ( .D(N175), .CLK(net92), .Q(clk_cnt[9]) );
  ffthq_x1 \data_cnt_reg[2]  ( .D(N164), .CLK(net102), .Q(data_cnt[2]) );
  ffthq_x1 sig_r_reg ( .D(n52), .CLK(net92), .Q(sig_tx) );
  fft_x1 \data_cnt_reg[0]  ( .D(N162), .CLK(net102), .Q(data_cnt[0]), .QN(n126) );
  and2_x1 U84 ( .A(data_tx[6]), .B(rstn), .Y(N157) );
  and2_x1 U85 ( .A(data_tx[0]), .B(rstn), .Y(N151) );
  and2_x1 U86 ( .A(data_tx[1]), .B(rstn), .Y(N152) );
  and2_x1 U87 ( .A(data_tx[2]), .B(rstn), .Y(N153) );
  and2_x1 U88 ( .A(data_tx[3]), .B(rstn), .Y(N154) );
  and2_x1 U89 ( .A(data_tx[4]), .B(rstn), .Y(N155) );
  and2_x1 U90 ( .A(data_tx[5]), .B(rstn), .Y(N156) );
  and2_x1 U91 ( .A(data_tx[7]), .B(rstn), .Y(N158) );
  inv_x1 U92 ( .A(state[1]), .Y(n125) );
  inv_x1 U93 ( .A(state[0]), .Y(n121) );
  nand3_x1 U94 ( .A(rstn), .B(n125), .C(n121), .Y(n120) );
  nor2_x1 U95 ( .A(data_cnt[0]), .B(n120), .Y(N162) );
  inv_x1 U96 ( .A(data_cnt[1]), .Y(n58) );
  aoi22_x1 U97 ( .A0(data_cnt[1]), .A1(data_r[6]), .B0(data_r[4]), .B1(n58), 
        .Y(n57) );
  nand2_x1 U98 ( .A(data_cnt[0]), .B(data_cnt[1]), .Y(n107) );
  nand2_x1 U99 ( .A(data_cnt[0]), .B(n58), .Y(n105) );
  oai22_x1 U100 ( .A0(data_r[7]), .A1(n107), .B0(data_r[5]), .B1(n105), .Y(n56) );
  aoi21_x1 U101 ( .A0(n57), .A1(n126), .B0(n56), .Y(n62) );
  aoi22_x1 U102 ( .A0(data_cnt[1]), .A1(data_r[2]), .B0(data_r[0]), .B1(n58), 
        .Y(n60) );
  oai22_x1 U103 ( .A0(data_r[3]), .A1(n107), .B0(data_r[1]), .B1(n105), .Y(n59) );
  aoi21_x1 U104 ( .A0(n60), .A1(n126), .B0(n59), .Y(n61) );
  inv_x1 U105 ( .A(data_cnt[2]), .Y(n106) );
  aoi22_x1 U106 ( .A0(data_cnt[2]), .A1(n62), .B0(n61), .B1(n106), .Y(n63) );
  aoi21_x1 U107 ( .A0(n63), .A1(n121), .B0(state[1]), .Y(n70) );
  nor3_x1 U108 ( .A(clk_cnt[2]), .B(clk_cnt[3]), .C(clk_cnt[1]), .Y(n65) );
  nor3_x1 U109 ( .A(clk_cnt[6]), .B(clk_cnt[7]), .C(clk_cnt[10]), .Y(n64) );
  nand2_x1 U110 ( .A(n65), .B(n64), .Y(n66) );
  nor3_x1 U111 ( .A(clk_cnt[8]), .B(clk_cnt[4]), .C(n66), .Y(n68) );
  nor3_x1 U112 ( .A(clk_cnt[5]), .B(clk_cnt[9]), .C(clk_cnt[0]), .Y(n67) );
  nand2_x1 U113 ( .A(n68), .B(n67), .Y(n114) );
  aoi21_x1 U114 ( .A0(state[0]), .A1(state[1]), .B0(n114), .Y(n69) );
  mxi2_x1 U115 ( .A0(sig_tx), .A1(n70), .S(n69), .YN(n71) );
  nand2_x1 U116 ( .A(rstn), .B(n71), .Y(n52) );
  inv_x1 U117 ( .A(rstn), .Y(n122) );
  aoi21_x1 U118 ( .A0(state[1]), .A1(state[0]), .B0(n122), .Y(n119) );
  nand2_x1 U119 ( .A(n114), .B(n119), .Y(n98) );
  nor2_x1 U120 ( .A(clk_cnt[0]), .B(n98), .Y(N166) );
  nor2_x1 U121 ( .A(clk_cnt[0]), .B(clk_cnt[1]), .Y(n83) );
  nand2b_x1 U122 ( .AN(clk_cnt[2]), .B(n83), .Y(n72) );
  nor2_x1 U123 ( .A(clk_cnt[3]), .B(n72), .Y(n74) );
  aoi21_x1 U124 ( .A0(n72), .A1(clk_cnt[3]), .B0(n74), .Y(n73) );
  nor2_x1 U125 ( .A(n98), .B(n73), .Y(N169) );
  nor2_x1 U126 ( .A(state[1]), .B(n114), .Y(n116) );
  nand3_x1 U127 ( .A(rstn), .B(state[0]), .C(n116), .Y(n101) );
  inv_x1 U128 ( .A(n98), .Y(n100) );
  inv_x1 U129 ( .A(clk_cnt[4]), .Y(n75) );
  nand2_x1 U130 ( .A(n74), .B(n75), .Y(n85) );
  oai21_x1 U131 ( .A0(n75), .A1(n74), .B0(n85), .Y(n76) );
  nand2_x1 U132 ( .A(n100), .B(n76), .Y(n77) );
  nand2_x1 U133 ( .A(n101), .B(n77), .Y(N170) );
  nor2_x1 U134 ( .A(clk_cnt[5]), .B(n85), .Y(n88) );
  inv_x1 U135 ( .A(clk_cnt[6]), .Y(n89) );
  nand2_x1 U136 ( .A(n88), .B(n89), .Y(n78) );
  nor2_x1 U137 ( .A(clk_cnt[7]), .B(n78), .Y(n95) );
  aoi21_x1 U138 ( .A0(n78), .A1(clk_cnt[7]), .B0(n95), .Y(n79) );
  nor2_x1 U139 ( .A(n98), .B(n79), .Y(N173) );
  aoi21_x1 U140 ( .A0(n114), .A1(n121), .B0(n125), .Y(n91) );
  nand3_x1 U141 ( .A(ready_tx), .B(valid_tx), .C(n121), .Y(n80) );
  nand3_x1 U142 ( .A(n91), .B(rstn), .C(n80), .Y(N165) );
  nor2_x1 U143 ( .A(n114), .B(n125), .Y(n111) );
  nand3_x1 U144 ( .A(ready_tx), .B(valid_tx), .C(n111), .Y(n117) );
  nor2_x1 U145 ( .A(state[0]), .B(n117), .Y(n113) );
  or2_x1 U146 ( .A(n113), .B(n122), .Y(N150) );
  aoi21_x1 U147 ( .A0(clk_cnt[1]), .A1(clk_cnt[0]), .B0(n83), .Y(n81) );
  oai21_x1 U148 ( .A0(n81), .A1(n98), .B0(n101), .Y(N167) );
  inv_x1 U149 ( .A(n113), .Y(n94) );
  aoi21_x1 U150 ( .A0(clk_cnt[2]), .A1(n83), .B0(n91), .Y(n82) );
  oai21_x1 U151 ( .A0(clk_cnt[2]), .A1(n83), .B0(n82), .Y(n84) );
  aoi21_x1 U152 ( .A0(n94), .A1(n84), .B0(n122), .Y(N168) );
  aoi21_x1 U153 ( .A0(clk_cnt[5]), .A1(n85), .B0(n88), .Y(n87) );
  and2_x1 U154 ( .A(n116), .B(n121), .Y(n86) );
  oai21_x1 U155 ( .A0(n113), .A1(n86), .B0(rstn), .Y(n97) );
  oai21_x1 U156 ( .A0(n87), .A1(n98), .B0(n97), .Y(N171) );
  mxi2_x1 U157 ( .A0(clk_cnt[6]), .A1(n89), .S(n88), .YN(n90) );
  oai21_x1 U158 ( .A0(n90), .A1(n98), .B0(n97), .Y(N172) );
  aoi21_x1 U159 ( .A0(clk_cnt[8]), .A1(n95), .B0(n91), .Y(n92) );
  oai21_x1 U160 ( .A0(clk_cnt[8]), .A1(n95), .B0(n92), .Y(n93) );
  aoi21_x1 U161 ( .A0(n94), .A1(n93), .B0(n122), .Y(N174) );
  nand2b_x1 U162 ( .AN(clk_cnt[8]), .B(n95), .Y(n96) );
  nor2_x1 U163 ( .A(clk_cnt[9]), .B(n96), .Y(n103) );
  aoi21_x1 U164 ( .A0(clk_cnt[9]), .A1(n96), .B0(n103), .Y(n99) );
  oai21_x1 U165 ( .A0(n99), .A1(n98), .B0(n97), .Y(N175) );
  nand2_x1 U166 ( .A(clk_cnt[10]), .B(n100), .Y(n102) );
  oai21_x1 U167 ( .A0(n103), .A1(n102), .B0(n101), .Y(N176) );
  nand2_x1 U168 ( .A(data_cnt[1]), .B(n126), .Y(n104) );
  aoi21_x1 U169 ( .A0(n105), .A1(n104), .B0(n120), .Y(N163) );
  nor2_x1 U170 ( .A(n107), .B(n106), .Y(n115) );
  and2_x1 U171 ( .A(n107), .B(n106), .Y(n108) );
  nor3_x1 U172 ( .A(n115), .B(n120), .C(n108), .Y(N164) );
  nand2_x1 U173 ( .A(n116), .B(n121), .Y(n110) );
  nor2_x1 U174 ( .A(n113), .B(n122), .Y(n109) );
  oai21_x1 U175 ( .A0(n115), .A1(n110), .B0(n109), .Y(N161) );
  aoi21_x1 U176 ( .A0(n111), .A1(n121), .B0(ready_tx), .Y(n112) );
  oai21_x1 U177 ( .A0(n113), .A1(n112), .B0(rstn), .Y(n55) );
  aoi2bb2_x1 U178 ( .B0(n116), .B1(n115), .A0N(n121), .A1N(n114), .Y(n118) );
  nand3_x1 U179 ( .A(n119), .B(n118), .C(n117), .Y(n123) );
  mxi2_x1 U180 ( .A0(n121), .A1(n120), .S(n123), .YN(n54) );
  nor2_x1 U181 ( .A(state[0]), .B(n122), .Y(n124) );
  mxi2_x1 U182 ( .A0(n125), .A1(n124), .S(n123), .YN(n53) );
endmodule

