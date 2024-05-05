/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-1
// Date      : Tue Apr 30 18:59:23 2024
/////////////////////////////////////////////////////////////


module uart_tx ( sig_tx, data_tx, valid_tx, ready_tx, clk, rstn );
  input [7:0] data_tx;
  input valid_tx, clk, rstn;
  output sig_tx, ready_tx;
  wire   \state[1] , n73, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183;
  wire   [7:0] data_r;
  wire   [2:0] data_cnt;
  wire   [10:0] clk_cnt;

  ffthq_x1 ready_r_reg ( .D(n84), .CLK(clk), .Q(ready_tx) );
  ffthq_x1 \clk_cnt_reg[8]  ( .D(n94), .CLK(clk), .Q(clk_cnt[8]) );
  ffthq_x1 \clk_cnt_reg[2]  ( .D(n88), .CLK(clk), .Q(clk_cnt[2]) );
  ffthq_x1 \clk_cnt_reg[0]  ( .D(n97), .CLK(clk), .Q(clk_cnt[0]) );
  ffthq_x1 \clk_cnt_reg[7]  ( .D(n93), .CLK(clk), .Q(clk_cnt[7]) );
  ffthq_x1 \clk_cnt_reg[3]  ( .D(n89), .CLK(clk), .Q(clk_cnt[3]) );
  ffthq_x1 \data_r_reg[0]  ( .D(n83), .CLK(clk), .Q(data_r[0]) );
  ffthq_x1 \data_r_reg[7]  ( .D(n82), .CLK(clk), .Q(data_r[7]) );
  ffthq_x1 \data_r_reg[6]  ( .D(n81), .CLK(clk), .Q(data_r[6]) );
  ffthq_x1 \data_r_reg[5]  ( .D(n80), .CLK(clk), .Q(data_r[5]) );
  ffthq_x1 \data_r_reg[4]  ( .D(n79), .CLK(clk), .Q(data_r[4]) );
  ffthq_x1 \data_r_reg[3]  ( .D(n78), .CLK(clk), .Q(data_r[3]) );
  ffthq_x1 \data_r_reg[2]  ( .D(n77), .CLK(clk), .Q(data_r[2]) );
  ffthq_x1 \data_r_reg[1]  ( .D(n76), .CLK(clk), .Q(data_r[1]) );
  ffthq_x1 \clk_cnt_reg[4]  ( .D(n90), .CLK(clk), .Q(clk_cnt[4]) );
  ffthq_x1 \clk_cnt_reg[1]  ( .D(n87), .CLK(clk), .Q(clk_cnt[1]) );
  ffthq_x1 \clk_cnt_reg[9]  ( .D(n95), .CLK(clk), .Q(clk_cnt[9]) );
  ffthq_x1 \clk_cnt_reg[6]  ( .D(n92), .CLK(clk), .Q(clk_cnt[6]) );
  ffthq_x1 \clk_cnt_reg[5]  ( .D(n91), .CLK(clk), .Q(clk_cnt[5]) );
  ffthq_x1 \data_cnt_reg[0]  ( .D(n98), .CLK(clk), .Q(data_cnt[0]) );
  ffthq_x1 \data_cnt_reg[1]  ( .D(n85), .CLK(clk), .Q(data_cnt[1]) );
  ffthq_x1 \data_cnt_reg[2]  ( .D(n86), .CLK(clk), .Q(data_cnt[2]) );
  ffthq_x1 sig_r_reg ( .D(n75), .CLK(clk), .Q(sig_tx) );
  fft_x1 \state_reg[1]  ( .D(n73), .CLK(clk), .Q(\state[1] ), .QN(n183) );
  nor2_x1 U101 ( .A(data_cnt[2]), .B(data_cnt[1]), .Y(n169) );
  nand3_x1 U102 ( .A(data_cnt[2]), .B(data_cnt[1]), .C(data_r[7]), .Y(n174) );
  nand2_x1 U103 ( .A(ready_tx), .B(valid_tx), .Y(n142) );
  nor2_x1 U104 ( .A(n182), .B(n167), .Y(n162) );
  nor2_x1 U105 ( .A(clk_cnt[3]), .B(n154), .Y(n118) );
  nor2_x1 U106 ( .A(n139), .B(n138), .Y(n182) );
  nand2_x1 U107 ( .A(clk_cnt[3]), .B(n131), .Y(n116) );
  nor2_x1 U108 ( .A(n178), .B(n112), .Y(n76) );
  nor2_x1 U109 ( .A(clk_cnt[2]), .B(clk_cnt[5]), .Y(n103) );
  nor3_x1 U110 ( .A(clk_cnt[8]), .B(clk_cnt[6]), .C(clk_cnt[1]), .Y(n100) );
  nor3_x1 U111 ( .A(clk_cnt[9]), .B(clk_cnt[4]), .C(clk_cnt[0]), .Y(n99) );
  nand2_x1 U112 ( .A(n100), .B(n99), .Y(n101) );
  nor3_x1 U113 ( .A(clk_cnt[3]), .B(clk_cnt[7]), .C(n101), .Y(n102) );
  nand2_x1 U114 ( .A(n103), .B(n102), .Y(n123) );
  oai21_x1 U115 ( .A0(n142), .A1(n123), .B0(\state[1] ), .Y(n104) );
  nand2_x1 U116 ( .A(rstn), .B(n104), .Y(n73) );
  nor2_x1 U117 ( .A(n123), .B(n183), .Y(n141) );
  nand3_x1 U118 ( .A(ready_tx), .B(valid_tx), .C(n141), .Y(n137) );
  oai21_x1 U119 ( .A0(n141), .A1(ready_tx), .B0(n137), .Y(n105) );
  nand2_x1 U120 ( .A(rstn), .B(n105), .Y(n84) );
  inv_x1 U121 ( .A(rstn), .Y(n178) );
  mxi2_x1 U122 ( .A0(data_tx[0]), .A1(data_r[0]), .S(n137), .YN(n106) );
  nor2_x1 U123 ( .A(n178), .B(n106), .Y(n83) );
  mxi2_x1 U124 ( .A0(data_tx[7]), .A1(data_r[7]), .S(n137), .YN(n107) );
  nor2_x1 U125 ( .A(n178), .B(n107), .Y(n82) );
  mxi2_x1 U126 ( .A0(data_tx[6]), .A1(data_r[6]), .S(n137), .YN(n108) );
  nor2_x1 U127 ( .A(n178), .B(n108), .Y(n81) );
  mxi2_x1 U128 ( .A0(data_tx[5]), .A1(data_r[5]), .S(n137), .YN(n109) );
  nor2_x1 U129 ( .A(n178), .B(n109), .Y(n80) );
  mxi2_x1 U130 ( .A0(data_tx[4]), .A1(data_r[4]), .S(n137), .YN(n110) );
  nor2_x1 U131 ( .A(n178), .B(n110), .Y(n79) );
  mxi2_x1 U132 ( .A0(data_tx[3]), .A1(data_r[3]), .S(n137), .YN(n111) );
  nor2_x1 U133 ( .A(n178), .B(n111), .Y(n78) );
  mxi2_x1 U134 ( .A0(data_tx[1]), .A1(data_r[1]), .S(n137), .YN(n112) );
  mxi2_x1 U135 ( .A0(data_tx[2]), .A1(data_r[2]), .S(n137), .YN(n113) );
  nor2_x1 U136 ( .A(n178), .B(n113), .Y(n77) );
  inv_x1 U137 ( .A(clk_cnt[0]), .Y(n114) );
  inv_x1 U138 ( .A(clk_cnt[1]), .Y(n135) );
  nand2_x1 U139 ( .A(n114), .B(n135), .Y(n156) );
  nor2_x1 U140 ( .A(n156), .B(clk_cnt[2]), .Y(n115) );
  inv_x1 U141 ( .A(n115), .Y(n154) );
  and2_x1 U142 ( .A(n123), .B(rstn), .Y(n147) );
  nand2_x1 U143 ( .A(n118), .B(n147), .Y(n117) );
  nand2_x1 U144 ( .A(rstn), .B(n123), .Y(n140) );
  nor2_x1 U145 ( .A(n115), .B(n140), .Y(n131) );
  nand2_x1 U146 ( .A(n117), .B(n116), .Y(n89) );
  inv_x1 U147 ( .A(clk_cnt[4]), .Y(n133) );
  nand2_x1 U148 ( .A(n118), .B(n133), .Y(n132) );
  inv_x1 U149 ( .A(n132), .Y(n119) );
  nor2_x1 U150 ( .A(n119), .B(n140), .Y(n122) );
  nor2_x1 U151 ( .A(n132), .B(n140), .Y(n121) );
  inv_x1 U152 ( .A(clk_cnt[5]), .Y(n120) );
  aoi22_x1 U153 ( .A0(clk_cnt[5]), .A1(n122), .B0(n121), .B1(n120), .Y(n125)
         );
  nor2_x1 U154 ( .A(\state[1] ), .B(n123), .Y(n139) );
  inv_x1 U155 ( .A(n137), .Y(n124) );
  oai21_x1 U156 ( .A0(n139), .A1(n124), .B0(rstn), .Y(n129) );
  nand2_x1 U157 ( .A(n125), .B(n129), .Y(n91) );
  nor2_x1 U158 ( .A(clk_cnt[5]), .B(n132), .Y(n126) );
  nor2_x1 U159 ( .A(n140), .B(n126), .Y(n127) );
  nor3_x1 U160 ( .A(clk_cnt[5]), .B(clk_cnt[6]), .C(n132), .Y(n148) );
  aoi22_x1 U161 ( .A0(clk_cnt[6]), .A1(n127), .B0(n148), .B1(n147), .Y(n128)
         );
  nand2_x1 U162 ( .A(n128), .B(n129), .Y(n92) );
  inv_x1 U163 ( .A(clk_cnt[7]), .Y(n149) );
  nand2_x1 U164 ( .A(n148), .B(n149), .Y(n144) );
  nor2_x1 U165 ( .A(clk_cnt[8]), .B(n144), .Y(n143) );
  nor2_x1 U166 ( .A(n140), .B(n143), .Y(n130) );
  oai2bb1_x1 U167 ( .A0N(clk_cnt[9]), .A1N(n130), .B0(n129), .Y(n95) );
  aoi21_x1 U168 ( .A0(clk_cnt[3]), .A1(n147), .B0(n131), .Y(n134) );
  oai22_x1 U169 ( .A0(n134), .A1(n133), .B0(n132), .B1(n140), .Y(n90) );
  nand2_x1 U170 ( .A(n147), .B(clk_cnt[0]), .Y(n136) );
  oai22_x1 U171 ( .A0(n136), .A1(n135), .B0(n156), .B1(n140), .Y(n87) );
  nand2_x1 U172 ( .A(rstn), .B(n137), .Y(n138) );
  inv_x1 U173 ( .A(data_cnt[0]), .Y(n167) );
  nor2_x1 U174 ( .A(\state[1] ), .B(n178), .Y(n161) );
  aoi21_x1 U175 ( .A0(n161), .A1(n167), .B0(n182), .Y(n164) );
  aoi21_x1 U176 ( .A0(n182), .A1(n167), .B0(n164), .Y(n98) );
  nor2_x1 U177 ( .A(clk_cnt[0]), .B(n140), .Y(n97) );
  nand2_x1 U178 ( .A(n142), .B(n141), .Y(n152) );
  aoi22_x1 U179 ( .A0(clk_cnt[8]), .A1(n144), .B0(n143), .B1(n152), .Y(n145)
         );
  nor2_x1 U180 ( .A(n145), .B(n178), .Y(n94) );
  inv_x1 U181 ( .A(n148), .Y(n146) );
  nand2_x1 U182 ( .A(n146), .B(n147), .Y(n151) );
  nand2_x1 U183 ( .A(n148), .B(n147), .Y(n150) );
  aoi22_x1 U184 ( .A0(clk_cnt[7]), .A1(n151), .B0(n150), .B1(n149), .Y(n93) );
  inv_x1 U185 ( .A(n152), .Y(n153) );
  nor2_x1 U186 ( .A(n154), .B(n153), .Y(n155) );
  aoi21_x1 U187 ( .A0(clk_cnt[2]), .A1(n156), .B0(n155), .Y(n157) );
  nor2_x1 U188 ( .A(n157), .B(n178), .Y(n88) );
  inv_x1 U189 ( .A(data_cnt[1]), .Y(n165) );
  nor2_x1 U190 ( .A(data_cnt[2]), .B(n165), .Y(n173) );
  inv_x1 U191 ( .A(data_cnt[2]), .Y(n158) );
  nor2_x1 U192 ( .A(data_cnt[1]), .B(n158), .Y(n170) );
  aoi21_x1 U193 ( .A0(n173), .A1(n162), .B0(n170), .Y(n160) );
  nand2_x1 U194 ( .A(rstn), .B(n183), .Y(n159) );
  oai22_x1 U195 ( .A0(n160), .A1(n159), .B0(n164), .B1(n158), .Y(n86) );
  nand3_x1 U196 ( .A(n162), .B(n161), .C(n165), .Y(n163) );
  oai21_x1 U197 ( .A0(n165), .A1(n164), .B0(n163), .Y(n85) );
  aoi22_x1 U198 ( .A0(n170), .A1(data_r[4]), .B0(n169), .B1(data_r[0]), .Y(
        n166) );
  nand2_x1 U199 ( .A(n167), .B(n166), .Y(n168) );
  aoi21_x1 U200 ( .A0(n173), .A1(data_r[2]), .B0(n168), .Y(n177) );
  nand3_x1 U201 ( .A(data_cnt[2]), .B(data_cnt[1]), .C(data_r[6]), .Y(n176) );
  aoi22_x1 U202 ( .A0(n170), .A1(data_r[5]), .B0(data_r[1]), .B1(n169), .Y(
        n171) );
  nand2_x1 U203 ( .A(data_cnt[0]), .B(n171), .Y(n172) );
  aoi21_x1 U204 ( .A0(data_r[3]), .A1(n173), .B0(n172), .Y(n175) );
  aoi22_x1 U205 ( .A0(n177), .A1(n176), .B0(n175), .B1(n174), .Y(n179) );
  aoi21_x1 U206 ( .A0(n179), .A1(n183), .B0(n178), .Y(n181) );
  nand2_x1 U207 ( .A(sig_tx), .B(n182), .Y(n180) );
  oai21_x1 U208 ( .A0(n182), .A1(n181), .B0(n180), .Y(n75) );
endmodule

