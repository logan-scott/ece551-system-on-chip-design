/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-1
// Date      : Sat May  4 21:14:33 2024
/////////////////////////////////////////////////////////////


module uart_rx ( sig_rx, data_rx, valid_rx, ready_rx, clk, rstn );
  output [7:0] data_rx;
  input sig_rx, ready_rx, clk, rstn;
  output valid_rx;
  wire   sig_r, N74, N75, N82, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n118, n119, n120, n121, n122, n123, n126,
         n127, n128, n129, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235;
  wire   [1:0] sampling_cnt;
  wire   [4:0] sig_q;
  wire   [1:0] state;
  wire   [7:0] data_tmp_r;
  wire   [3:0] data_cnt;
  wire   [11:0] clk_cnt;

  ffthq_x1 \sampling_cnt_reg[0]  ( .D(N74), .CLK(clk), .Q(sampling_cnt[0]) );
  ffthq_x1 \sampling_cnt_reg[1]  ( .D(N75), .CLK(clk), .Q(sampling_cnt[1]) );
  ffthq_x1 \sig_q_reg[4]  ( .D(n102), .CLK(clk), .Q(sig_q[4]) );
  ffthq_x1 \sig_q_reg[3]  ( .D(n103), .CLK(clk), .Q(sig_q[3]) );
  ffthq_x1 \sig_q_reg[2]  ( .D(n104), .CLK(clk), .Q(sig_q[2]) );
  ffthq_x1 \sig_q_reg[1]  ( .D(n105), .CLK(clk), .Q(sig_q[1]) );
  ffthq_x1 \sig_q_reg[0]  ( .D(n106), .CLK(clk), .Q(sig_q[0]) );
  ffthq_x1 sig_r_reg ( .D(N82), .CLK(clk), .Q(sig_r) );
  ffthq_x1 \data_cnt_reg[0]  ( .D(n132), .CLK(clk), .Q(data_cnt[0]) );
  ffthq_x1 \state_reg[1]  ( .D(n107), .CLK(clk), .Q(state[1]) );
  ffthq_x1 \state_reg[0]  ( .D(n108), .CLK(clk), .Q(state[0]) );
  ffthq_x1 \clk_cnt_reg[0]  ( .D(n131), .CLK(clk), .Q(clk_cnt[0]) );
  ffthq_x1 \clk_cnt_reg[10]  ( .D(n129), .CLK(clk), .Q(clk_cnt[10]) );
  ffthq_x1 \clk_cnt_reg[7]  ( .D(n126), .CLK(clk), .Q(clk_cnt[7]) );
  ffthq_x1 \clk_cnt_reg[4]  ( .D(n123), .CLK(clk), .Q(clk_cnt[4]) );
  ffthq_x1 \clk_cnt_reg[3]  ( .D(n122), .CLK(clk), .Q(clk_cnt[3]) );
  ffthq_x1 \clk_cnt_reg[1]  ( .D(n120), .CLK(clk), .Q(clk_cnt[1]) );
  ffthq_x1 \clk_cnt_reg[9]  ( .D(n128), .CLK(clk), .Q(clk_cnt[9]) );
  ffthq_x1 \clk_cnt_reg[6]  ( .D(n234), .CLK(clk), .Q(clk_cnt[6]) );
  ffthq_x1 \clk_cnt_reg[5]  ( .D(n235), .CLK(clk), .Q(clk_cnt[5]) );
  ffthq_x1 \clk_cnt_reg[8]  ( .D(n127), .CLK(clk), .Q(clk_cnt[8]) );
  ffthq_x1 \clk_cnt_reg[2]  ( .D(n121), .CLK(clk), .Q(clk_cnt[2]) );
  ffthq_x1 \data_cnt_reg[1]  ( .D(n119), .CLK(clk), .Q(data_cnt[1]) );
  ffthq_x1 \data_cnt_reg[2]  ( .D(n118), .CLK(clk), .Q(data_cnt[2]) );
  ffthq_x1 \data_tmp_r_reg[7]  ( .D(n115), .CLK(clk), .Q(data_tmp_r[7]) );
  ffthq_x1 \data_tmp_r_reg[6]  ( .D(n114), .CLK(clk), .Q(data_tmp_r[6]) );
  ffthq_x1 \data_tmp_r_reg[5]  ( .D(n113), .CLK(clk), .Q(data_tmp_r[5]) );
  ffthq_x1 \data_tmp_r_reg[4]  ( .D(n112), .CLK(clk), .Q(data_tmp_r[4]) );
  ffthq_x1 \data_tmp_r_reg[3]  ( .D(n111), .CLK(clk), .Q(data_tmp_r[3]) );
  ffthq_x1 \data_tmp_r_reg[2]  ( .D(n110), .CLK(clk), .Q(data_tmp_r[2]) );
  ffthq_x1 \data_tmp_r_reg[1]  ( .D(n109), .CLK(clk), .Q(data_tmp_r[1]) );
  ffthq_x1 \data_tmp_r_reg[0]  ( .D(n116), .CLK(clk), .Q(data_tmp_r[0]) );
  ffthq_x1 valid_r_reg ( .D(n101), .CLK(clk), .Q(valid_rx) );
  ffthq_x1 \data_r_reg[7]  ( .D(n100), .CLK(clk), .Q(data_rx[7]) );
  ffthq_x1 \data_r_reg[6]  ( .D(n99), .CLK(clk), .Q(data_rx[6]) );
  ffthq_x1 \data_r_reg[5]  ( .D(n98), .CLK(clk), .Q(data_rx[5]) );
  ffthq_x1 \data_r_reg[4]  ( .D(n97), .CLK(clk), .Q(data_rx[4]) );
  ffthq_x1 \data_r_reg[3]  ( .D(n96), .CLK(clk), .Q(data_rx[3]) );
  ffthq_x1 \data_r_reg[2]  ( .D(n95), .CLK(clk), .Q(data_rx[2]) );
  ffthq_x1 \data_r_reg[1]  ( .D(n94), .CLK(clk), .Q(data_rx[1]) );
  ffthq_x1 \data_r_reg[0]  ( .D(n93), .CLK(clk), .Q(data_rx[0]) );
  or2_x1 U138 ( .A(sig_q[1]), .B(sig_q[0]), .Y(n133) );
  nor2_x1 U139 ( .A(clk_cnt[1]), .B(clk_cnt[0]), .Y(n155) );
  nor2_x1 U140 ( .A(clk_cnt[10]), .B(n176), .Y(n150) );
  oai2bb1_x1 U141 ( .A0N(n180), .A1N(n165), .B0(n186), .Y(n158) );
  nor2_x1 U142 ( .A(clk_cnt[6]), .B(n182), .Y(n177) );
  nand2_x1 U143 ( .A(n147), .B(data_tmp_r[0]), .Y(n148) );
  nand2_x1 U144 ( .A(rstn), .B(n212), .Y(n209) );
  nand2_x1 U145 ( .A(n163), .B(n161), .Y(n205) );
  aoi2bb1_x1 U146 ( .A0N(data_cnt[0]), .A1N(n152), .B0(n205), .Y(n132) );
  inv_x1 U147 ( .A(rstn), .Y(n220) );
  nor2_x1 U148 ( .A(sampling_cnt[0]), .B(n220), .Y(N74) );
  nor3_x1 U149 ( .A(sig_q[3]), .B(sig_q[1]), .C(sig_q[0]), .Y(n136) );
  nand2_x1 U150 ( .A(sig_q[4]), .B(sig_q[2]), .Y(n135) );
  aoi22_x1 U151 ( .A0(sig_q[3]), .A1(n133), .B0(sig_q[1]), .B1(sig_q[0]), .Y(
        n134) );
  oai21_x1 U152 ( .A0(n136), .A1(n135), .B0(n134), .Y(n137) );
  oai21_x1 U153 ( .A0(sig_q[4]), .A1(sig_q[2]), .B0(n137), .Y(n139) );
  nand3_x1 U154 ( .A(sig_q[3]), .B(sig_q[1]), .C(sig_q[0]), .Y(n138) );
  nand3_x1 U155 ( .A(rstn), .B(n139), .C(n138), .Y(N82) );
  nor2_x1 U156 ( .A(sampling_cnt[1]), .B(sampling_cnt[0]), .Y(n144) );
  inv_x1 U157 ( .A(n144), .Y(n168) );
  aoi22_x1 U158 ( .A0(n144), .A1(sig_q[3]), .B0(sig_q[2]), .B1(n168), .Y(n140)
         );
  nand2_x1 U159 ( .A(rstn), .B(n140), .Y(n104) );
  aoi22_x1 U160 ( .A0(n144), .A1(sig_q[4]), .B0(sig_q[3]), .B1(n168), .Y(n141)
         );
  nand2_x1 U161 ( .A(rstn), .B(n141), .Y(n103) );
  aoi22_x1 U162 ( .A0(n144), .A1(sig_q[2]), .B0(sig_q[1]), .B1(n168), .Y(n142)
         );
  nand2_x1 U163 ( .A(rstn), .B(n142), .Y(n105) );
  aoi22_x1 U164 ( .A0(n144), .A1(sig_q[1]), .B0(sig_q[0]), .B1(n168), .Y(n143)
         );
  nand2_x1 U165 ( .A(rstn), .B(n143), .Y(n106) );
  aoi22_x1 U166 ( .A0(n144), .A1(sig_rx), .B0(sig_q[4]), .B1(n168), .Y(n145)
         );
  nand2_x1 U167 ( .A(rstn), .B(n145), .Y(n102) );
  nor3_x1 U168 ( .A(clk_cnt[2]), .B(clk_cnt[1]), .C(clk_cnt[0]), .Y(n185) );
  inv_x1 U169 ( .A(n185), .Y(n191) );
  nor3_x1 U170 ( .A(clk_cnt[3]), .B(clk_cnt[4]), .C(n191), .Y(n164) );
  inv_x1 U171 ( .A(clk_cnt[5]), .Y(n183) );
  nand2_x1 U172 ( .A(n164), .B(n183), .Y(n182) );
  nand2b_x1 U173 ( .AN(clk_cnt[7]), .B(n177), .Y(n180) );
  nor2_x1 U174 ( .A(clk_cnt[8]), .B(n180), .Y(n173) );
  nand2b_x1 U175 ( .AN(clk_cnt[9]), .B(n173), .Y(n176) );
  nor2_x1 U176 ( .A(state[1]), .B(n220), .Y(n170) );
  inv_x1 U177 ( .A(state[0]), .Y(n215) );
  nor2_x1 U178 ( .A(valid_rx), .B(n215), .Y(n146) );
  nand3_x1 U179 ( .A(n150), .B(n170), .C(n146), .Y(n232) );
  inv_x1 U180 ( .A(n232), .Y(n147) );
  nor2_x1 U181 ( .A(n147), .B(n220), .Y(n231) );
  nand2_x1 U182 ( .A(data_rx[0]), .B(n231), .Y(n149) );
  nand2_x1 U183 ( .A(n149), .B(n148), .Y(n93) );
  inv_x1 U184 ( .A(n150), .Y(n210) );
  nor3_x1 U185 ( .A(state[1]), .B(state[0]), .C(n210), .Y(n212) );
  nand3_x1 U186 ( .A(data_cnt[1]), .B(data_cnt[0]), .C(data_cnt[2]), .Y(n213)
         );
  inv_x1 U187 ( .A(state[1]), .Y(n222) );
  nor2_x1 U188 ( .A(sig_r), .B(n222), .Y(n218) );
  aoi22_x1 U189 ( .A0(n212), .A1(n213), .B0(n218), .B1(n215), .Y(n151) );
  nand2_x1 U190 ( .A(rstn), .B(n151), .Y(n152) );
  nand2_x1 U191 ( .A(rstn), .B(n215), .Y(n203) );
  oai21_x1 U192 ( .A0(state[1]), .A1(n203), .B0(n152), .Y(n163) );
  nand2_x1 U193 ( .A(data_cnt[0]), .B(n152), .Y(n161) );
  nor3_x1 U194 ( .A(sig_r), .B(n222), .C(n203), .Y(n198) );
  inv_x1 U195 ( .A(n198), .Y(n160) );
  aoi21_x1 U196 ( .A0(state[1]), .A1(sig_r), .B0(state[0]), .Y(n153) );
  aoi21_x1 U197 ( .A0(n222), .A1(n210), .B0(n153), .Y(n154) );
  nand2_x1 U198 ( .A(rstn), .B(n154), .Y(n186) );
  nand2_x1 U199 ( .A(n170), .B(n186), .Y(n181) );
  oai21_x1 U200 ( .A0(n155), .A1(n181), .B0(n186), .Y(n156) );
  inv_x1 U201 ( .A(n181), .Y(n165) );
  aoi22_x1 U202 ( .A0(clk_cnt[2]), .A1(n156), .B0(n185), .B1(n165), .Y(n157)
         );
  nand2_x1 U203 ( .A(n160), .B(n157), .Y(n121) );
  aoi22_x1 U204 ( .A0(clk_cnt[8]), .A1(n158), .B0(n173), .B1(n165), .Y(n159)
         );
  nand2_x1 U205 ( .A(n160), .B(n159), .Y(n127) );
  inv_x1 U206 ( .A(n161), .Y(n204) );
  aoi21_x1 U207 ( .A0(data_cnt[1]), .A1(n204), .B0(data_cnt[2]), .Y(n162) );
  nor2b_x1 U208 ( .AN(n163), .B(n162), .Y(n118) );
  inv_x1 U209 ( .A(n164), .Y(n190) );
  inv_x1 U210 ( .A(n186), .Y(n195) );
  aoi21_x1 U211 ( .A0(n165), .A1(n190), .B0(n195), .Y(n184) );
  oai21_x1 U212 ( .A0(n183), .A1(n181), .B0(n184), .Y(n166) );
  aoi22_x1 U213 ( .A0(clk_cnt[6]), .A1(n166), .B0(n177), .B1(n165), .Y(n167)
         );
  inv_x1 U214 ( .A(n167), .Y(n234) );
  nand2_x1 U215 ( .A(n168), .B(rstn), .Y(n169) );
  aoi21_x1 U216 ( .A0(sampling_cnt[1]), .A1(sampling_cnt[0]), .B0(n169), .Y(
        N75) );
  nand2_x1 U217 ( .A(n210), .B(n170), .Y(n197) );
  mxi2_x1 U218 ( .A0(n197), .A1(n186), .S(clk_cnt[0]), .YN(n131) );
  inv_x1 U219 ( .A(n197), .Y(n196) );
  oai2bb1_x1 U220 ( .A0N(n196), .A1N(n176), .B0(n186), .Y(n171) );
  aoi21_x1 U221 ( .A0(n171), .A1(clk_cnt[10]), .B0(n198), .Y(n172) );
  inv_x1 U222 ( .A(n172), .Y(n129) );
  oai21_x1 U223 ( .A0(n173), .A1(n181), .B0(n186), .Y(n174) );
  nand2_x1 U224 ( .A(n174), .B(clk_cnt[9]), .Y(n175) );
  oai21_x1 U225 ( .A0(n176), .A1(n181), .B0(n175), .Y(n128) );
  oai21_x1 U226 ( .A0(n197), .A1(n177), .B0(n186), .Y(n178) );
  nand2_x1 U227 ( .A(clk_cnt[7]), .B(n178), .Y(n179) );
  oai21_x1 U228 ( .A0(n197), .A1(n180), .B0(n179), .Y(n126) );
  oai22_x1 U229 ( .A0(n184), .A1(n183), .B0(n182), .B1(n181), .Y(n235) );
  inv_x1 U230 ( .A(clk_cnt[3]), .Y(n193) );
  nand2_x1 U231 ( .A(n185), .B(n193), .Y(n192) );
  inv_x1 U232 ( .A(n192), .Y(n187) );
  oai21_x1 U233 ( .A0(n197), .A1(n187), .B0(n186), .Y(n188) );
  aoi21_x1 U234 ( .A0(clk_cnt[4]), .A1(n188), .B0(n198), .Y(n189) );
  oai21_x1 U235 ( .A0(n190), .A1(n197), .B0(n189), .Y(n123) );
  aoi21_x1 U236 ( .A0(n196), .A1(n191), .B0(n195), .Y(n194) );
  oai22_x1 U237 ( .A0(n194), .A1(n193), .B0(n192), .B1(n197), .Y(n122) );
  aoi21_x1 U238 ( .A0(clk_cnt[0]), .A1(n196), .B0(n195), .Y(n202) );
  inv_x1 U239 ( .A(clk_cnt[1]), .Y(n201) );
  nor2_x1 U240 ( .A(clk_cnt[0]), .B(n197), .Y(n199) );
  aoi21_x1 U241 ( .A0(n199), .A1(n201), .B0(n198), .Y(n200) );
  oai21_x1 U242 ( .A0(n202), .A1(n201), .B0(n200), .Y(n120) );
  nor2_x1 U243 ( .A(state[1]), .B(n203), .Y(n219) );
  nand2_x1 U244 ( .A(n204), .B(n219), .Y(n206) );
  mxi2_x1 U245 ( .A0(n206), .A1(n205), .S(data_cnt[1]), .YN(n119) );
  inv_x1 U246 ( .A(data_tmp_r[1]), .Y(n233) );
  nor2_x1 U247 ( .A(n212), .B(n220), .Y(n207) );
  oai2bb2_x1 U248 ( .B0(n209), .B1(n233), .A0N(data_tmp_r[0]), .A1N(n207), .Y(
        n116) );
  inv_x1 U249 ( .A(sig_r), .Y(n211) );
  inv_x1 U250 ( .A(n207), .Y(n208) );
  inv_x1 U251 ( .A(data_tmp_r[7]), .Y(n225) );
  oai22_x1 U252 ( .A0(n209), .A1(n211), .B0(n208), .B1(n225), .Y(n115) );
  inv_x1 U253 ( .A(data_tmp_r[6]), .Y(n226) );
  oai22_x1 U254 ( .A0(n209), .A1(n225), .B0(n208), .B1(n226), .Y(n114) );
  inv_x1 U255 ( .A(data_tmp_r[5]), .Y(n227) );
  oai22_x1 U256 ( .A0(n209), .A1(n226), .B0(n208), .B1(n227), .Y(n113) );
  inv_x1 U257 ( .A(data_tmp_r[4]), .Y(n228) );
  oai22_x1 U258 ( .A0(n209), .A1(n227), .B0(n208), .B1(n228), .Y(n112) );
  inv_x1 U259 ( .A(data_tmp_r[3]), .Y(n229) );
  oai22_x1 U260 ( .A0(n209), .A1(n228), .B0(n208), .B1(n229), .Y(n111) );
  inv_x1 U261 ( .A(data_tmp_r[2]), .Y(n230) );
  oai22_x1 U262 ( .A0(n209), .A1(n229), .B0(n208), .B1(n230), .Y(n110) );
  oai22_x1 U263 ( .A0(n209), .A1(n230), .B0(n208), .B1(n233), .Y(n109) );
  aoi2bb1_x1 U264 ( .A0N(n211), .A1N(n210), .B0(state[1]), .Y(n216) );
  inv_x1 U265 ( .A(n212), .Y(n214) );
  oai22_x1 U266 ( .A0(n216), .A1(n215), .B0(n214), .B1(n213), .Y(n217) );
  nor3_x1 U267 ( .A(n218), .B(n220), .C(n217), .Y(n221) );
  mx2_x1 U268 ( .A0(n219), .A1(state[0]), .S(n221), .Y(n108) );
  nor2_x1 U269 ( .A(state[0]), .B(n220), .Y(n223) );
  mxi2_x1 U270 ( .A0(n223), .A1(n222), .S(n221), .YN(n107) );
  nand2_x1 U271 ( .A(rstn), .B(valid_rx), .Y(n224) );
  oai21_x1 U272 ( .A0(ready_rx), .A1(n224), .B0(n232), .Y(n101) );
  oai2bb2_x1 U273 ( .B0(n225), .B1(n232), .A0N(n231), .A1N(data_rx[7]), .Y(
        n100) );
  oai2bb2_x1 U274 ( .B0(n226), .B1(n232), .A0N(n231), .A1N(data_rx[6]), .Y(n99) );
  oai2bb2_x1 U275 ( .B0(n227), .B1(n232), .A0N(n231), .A1N(data_rx[5]), .Y(n98) );
  oai2bb2_x1 U276 ( .B0(n228), .B1(n232), .A0N(n231), .A1N(data_rx[4]), .Y(n97) );
  oai2bb2_x1 U277 ( .B0(n229), .B1(n232), .A0N(n231), .A1N(data_rx[3]), .Y(n96) );
  oai2bb2_x1 U278 ( .B0(n230), .B1(n232), .A0N(n231), .A1N(data_rx[2]), .Y(n95) );
  oai2bb2_x1 U279 ( .B0(n233), .B1(n232), .A0N(n231), .A1N(data_rx[1]), .Y(n94) );
endmodule

