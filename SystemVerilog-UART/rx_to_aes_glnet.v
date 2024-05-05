/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-1
// Date      : Sun May  5 16:52:28 2024
/////////////////////////////////////////////////////////////


module rx_to_aes ( sig_rx, ready_rx, data, valid_rx, full_rx, clk, rst_rx, 
        rx_byte );
  output [127:0] data;
  output [7:0] rx_byte;
  input sig_rx, ready_rx, clk, rst_rx;
  output valid_rx, full_rx;
  wire   N2, N3, N4, N5, N6, \in/net168 , \in/net163 , \in/net158 ,
         \in/net153 , \in/net148 , \in/N241 , \in/N210 , \in/N209 , \in/N208 ,
         \in/N207 , \in/N206 , \in/N205 , \in/N204 , \in/N203 , \in/N202 ,
         \in/N194 , \in/N193 , \in/N192 , \in/N191 , \in/N190 , \in/N189 ,
         \in/N188 , \in/N187 , \in/N186 , \in/N185 , \in/N184 , \in/N183 ,
         \in/N182 , \in/N181 , \in/N180 , \in/N179 , \in/N178 , \in/N177 ,
         \in/N176 , \in/N175 , \in/N174 , \in/N173 , \in/N172 , \in/N171 ,
         \in/N170 , \in/N169 , \in/N168 , \in/N159 , \in/N123 , \in/N91 ,
         \in/N82 , \in/N81 , \in/N80 , \in/N79 , \in/N78 , \in/N77 , \in/N76 ,
         \in/N75 , \in/N74 , \in/sig_r , n46, n47, n48, n49, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130;
  wire   [4:0] count;
  wire   [11:0] \in/clk_cnt ;
  wire   [3:0] \in/data_cnt ;
  wire   [7:0] \in/data_tmp_r ;
  wire   [1:0] \in/state ;
  wire   [4:0] \in/sig_q ;
  wire   [1:0] \in/sampling_cnt ;
  assign full_rx = count[4];

  SNPS_CLOCK_GATE_HIGH_uart_rx_0 \in/clk_gate_data_r_reg  ( .CLK(clk), .EN(
        \in/N202 ), .ENCLK(\in/net168 ) );
  SNPS_CLOCK_GATE_HIGH_uart_rx_0 \in/clk_gate_data_cnt_reg  ( .CLK(clk), .EN(
        \in/N177 ), .ENCLK(\in/net163 ) );
  SNPS_CLOCK_GATE_HIGH_uart_rx_0 \in/clk_gate_data_tmp_r_reg  ( .CLK(clk), 
        .EN(\in/N168 ), .ENCLK(\in/net158 ) );
  SNPS_CLOCK_GATE_HIGH_uart_rx_0 \in/clk_gate_clk_cnt_reg  ( .CLK(clk), .EN(
        \in/N182 ), .ENCLK(\in/net153 ) );
  SNPS_CLOCK_GATE_HIGH_uart_rx_0 \in/clk_gate_sig_q_reg  ( .CLK(clk), .EN(
        \in/N76 ), .ENCLK(\in/net148 ) );
  ffthq_x1 \in/sig_q_reg[4]  ( .D(\in/N81 ), .CLK(\in/net148 ), .Q(
        \in/sig_q [4]) );
  ffthq_x1 \in/sig_q_reg[3]  ( .D(\in/N80 ), .CLK(\in/net148 ), .Q(
        \in/sig_q [3]) );
  ffthq_x1 \in/sig_q_reg[2]  ( .D(\in/N79 ), .CLK(\in/net148 ), .Q(
        \in/sig_q [2]) );
  ffthq_x1 \in/sig_q_reg[1]  ( .D(\in/N78 ), .CLK(\in/net148 ), .Q(
        \in/sig_q [1]) );
  ffthq_x1 \in/sig_q_reg[0]  ( .D(\in/N77 ), .CLK(\in/net148 ), .Q(
        \in/sig_q [0]) );
  ffthq_x1 \in/sampling_cnt_reg[0]  ( .D(\in/N74 ), .CLK(clk), .Q(
        \in/sampling_cnt [0]) );
  ffthq_x1 \in/sampling_cnt_reg[1]  ( .D(\in/N75 ), .CLK(clk), .Q(
        \in/sampling_cnt [1]) );
  ffthq_x1 \in/sig_r_reg  ( .D(\in/N82 ), .CLK(clk), .Q(\in/sig_r ) );
  ffthq_x1 \in/data_tmp_r_reg[7]  ( .D(\in/N176 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [7]) );
  ffthq_x1 \in/data_tmp_r_reg[6]  ( .D(\in/N175 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [6]) );
  ffthq_x1 \in/data_tmp_r_reg[5]  ( .D(\in/N174 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [5]) );
  ffthq_x1 \in/data_tmp_r_reg[4]  ( .D(\in/N173 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [4]) );
  ffthq_x1 \in/data_tmp_r_reg[3]  ( .D(\in/N172 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [3]) );
  ffthq_x1 \in/data_tmp_r_reg[2]  ( .D(\in/N171 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [2]) );
  ffthq_x1 \in/data_tmp_r_reg[1]  ( .D(\in/N170 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [1]) );
  ffthq_x1 \in/data_tmp_r_reg[0]  ( .D(\in/N169 ), .CLK(\in/net158 ), .Q(
        \in/data_tmp_r [0]) );
  ffthq_x1 \in/state_reg[1]  ( .D(n48), .CLK(clk), .Q(\in/state [1]) );
  ffthq_x1 \in/data_cnt_reg[0]  ( .D(\in/N178 ), .CLK(\in/net163 ), .Q(
        \in/data_cnt [0]) );
  ffthq_x1 \in/data_cnt_reg[1]  ( .D(\in/N179 ), .CLK(\in/net163 ), .Q(
        \in/data_cnt [1]) );
  ffthq_x1 \in/data_cnt_reg[2]  ( .D(\in/N180 ), .CLK(\in/net163 ), .Q(
        \in/data_cnt [2]) );
  ffthq_x1 \in/data_cnt_reg[3]  ( .D(\in/N181 ), .CLK(\in/net163 ), .Q(
        \in/data_cnt [3]) );
  ffthq_x1 \in/state_reg[0]  ( .D(n49), .CLK(clk), .Q(\in/state [0]) );
  ffthq_x1 \in/clk_cnt_reg[0]  ( .D(\in/N183 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [0]) );
  ffthq_x1 \in/clk_cnt_reg[1]  ( .D(\in/N184 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [1]) );
  ffthq_x1 \in/clk_cnt_reg[3]  ( .D(\in/N186 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [3]) );
  ffthq_x1 \in/clk_cnt_reg[4]  ( .D(\in/N187 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [4]) );
  ffthq_x1 \in/clk_cnt_reg[7]  ( .D(\in/N190 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [7]) );
  ffthq_x1 \in/clk_cnt_reg[10]  ( .D(\in/N193 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [10]) );
  ffthq_x1 \in/clk_cnt_reg[11]  ( .D(\in/N194 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [11]) );
  ffthq_x1 \in/clk_cnt_reg[2]  ( .D(\in/N185 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [2]) );
  ffthq_x1 \in/clk_cnt_reg[8]  ( .D(\in/N191 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [8]) );
  ffthq_x1 \in/clk_cnt_reg[5]  ( .D(\in/N188 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [5]) );
  ffthq_x1 \in/clk_cnt_reg[6]  ( .D(\in/N189 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [6]) );
  ffthq_x1 \in/clk_cnt_reg[9]  ( .D(\in/N192 ), .CLK(\in/net153 ), .Q(
        \in/clk_cnt [9]) );
  ffthq_x1 \in/data_r_reg[0]  ( .D(\in/N203 ), .CLK(\in/net168 ), .Q(
        rx_byte[0]) );
  ffthq_x1 \in/data_r_reg[1]  ( .D(\in/N204 ), .CLK(\in/net168 ), .Q(
        rx_byte[1]) );
  ffthq_x1 \in/data_r_reg[2]  ( .D(\in/N205 ), .CLK(\in/net168 ), .Q(
        rx_byte[2]) );
  ffthq_x1 \in/data_r_reg[3]  ( .D(\in/N206 ), .CLK(\in/net168 ), .Q(
        rx_byte[3]) );
  ffthq_x1 \in/data_r_reg[4]  ( .D(\in/N207 ), .CLK(\in/net168 ), .Q(
        rx_byte[4]) );
  ffthq_x1 \in/data_r_reg[5]  ( .D(\in/N208 ), .CLK(\in/net168 ), .Q(
        rx_byte[5]) );
  ffthq_x1 \in/data_r_reg[6]  ( .D(\in/N209 ), .CLK(\in/net168 ), .Q(
        rx_byte[6]) );
  ffthq_x1 \in/data_r_reg[7]  ( .D(\in/N210 ), .CLK(\in/net168 ), .Q(
        rx_byte[7]) );
  ffthq_x1 \in/valid_r_reg  ( .D(n46), .CLK(clk), .Q(valid_rx) );
  mx2_x1 U101 ( .A0(n52), .A1(n47), .S(n59), .Y(\in/N182 ) );
  mx2_x1 U102 ( .A0(n51), .A1(n47), .S(n59), .Y(\in/N177 ) );
  mx2_x1 U103 ( .A0(\in/N159 ), .A1(n47), .S(n59), .Y(\in/N168 ) );
  mx2_x1 U104 ( .A0(\in/N241 ), .A1(n54), .S(\in/N91 ), .Y(\in/N123 ) );
  mx2_x1 U105 ( .A0(n53), .A1(n47), .S(n59), .Y(\in/N76 ) );
  ffr_x1 \data_reg[112]  ( .D(data[120]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[112]) );
  ffr_x1 \data_reg[121]  ( .D(rx_byte[1]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[121]) );
  ffr_x1 \data_reg[1]  ( .D(data[9]), .CLK(valid_rx), .RSTN(n55), .Q(data[1])
         );
  ffr_x1 \data_reg[10]  ( .D(data[18]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[10]) );
  ffr_x1 \data_reg[19]  ( .D(data[27]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[19]) );
  ffr_x1 \data_reg[28]  ( .D(data[36]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[28]) );
  ffr_x1 \data_reg[37]  ( .D(data[45]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[37]) );
  ffr_x1 \data_reg[46]  ( .D(data[54]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[46]) );
  ffr_x1 \data_reg[55]  ( .D(data[63]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[55]) );
  ffr_x1 \count_reg[4]  ( .D(N6), .CLK(valid_rx), .RSTN(n55), .Q(count[4]) );
  ffr_x1 \count_reg[0]  ( .D(N2), .CLK(valid_rx), .RSTN(n55), .Q(count[0]) );
  ffr_x1 \count_reg[1]  ( .D(N3), .CLK(valid_rx), .RSTN(n55), .Q(count[1]) );
  ffr_x1 \count_reg[2]  ( .D(N4), .CLK(valid_rx), .RSTN(n56), .Q(count[2]) );
  ffr_x1 \count_reg[3]  ( .D(N5), .CLK(valid_rx), .RSTN(n56), .Q(count[3]) );
  ffr_x1 \data_reg[0]  ( .D(data[8]), .CLK(valid_rx), .RSTN(n56), .Q(data[0])
         );
  ffr_x1 \data_reg[2]  ( .D(data[10]), .CLK(valid_rx), .RSTN(n56), .Q(data[2])
         );
  ffr_x1 \data_reg[3]  ( .D(data[11]), .CLK(valid_rx), .RSTN(n56), .Q(data[3])
         );
  ffr_x1 \data_reg[4]  ( .D(data[12]), .CLK(valid_rx), .RSTN(n56), .Q(data[4])
         );
  ffr_x1 \data_reg[5]  ( .D(data[13]), .CLK(valid_rx), .RSTN(n56), .Q(data[5])
         );
  ffr_x1 \data_reg[6]  ( .D(data[14]), .CLK(valid_rx), .RSTN(n56), .Q(data[6])
         );
  ffr_x1 \data_reg[7]  ( .D(data[15]), .CLK(valid_rx), .RSTN(n56), .Q(data[7])
         );
  ffr_x1 \data_reg[104]  ( .D(data[112]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[104]) );
  ffr_x1 \data_reg[96]  ( .D(data[104]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[96]) );
  ffr_x1 \data_reg[88]  ( .D(data[96]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[88]) );
  ffr_x1 \data_reg[80]  ( .D(data[88]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[80]) );
  ffr_x1 \data_reg[72]  ( .D(data[80]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[72]) );
  ffr_x1 \data_reg[64]  ( .D(data[72]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[64]) );
  ffr_x1 \data_reg[56]  ( .D(data[64]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[56]) );
  ffr_x1 \data_reg[48]  ( .D(data[56]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[48]) );
  ffr_x1 \data_reg[40]  ( .D(data[48]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[40]) );
  ffr_x1 \data_reg[32]  ( .D(data[40]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[32]) );
  ffr_x1 \data_reg[24]  ( .D(data[32]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[24]) );
  ffr_x1 \data_reg[16]  ( .D(data[24]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[16]) );
  ffr_x1 \data_reg[8]  ( .D(data[16]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[8]) );
  ffr_x1 \data_reg[113]  ( .D(data[121]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[113]) );
  ffr_x1 \data_reg[105]  ( .D(data[113]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[105]) );
  ffr_x1 \data_reg[97]  ( .D(data[105]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[97]) );
  ffr_x1 \data_reg[89]  ( .D(data[97]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[89]) );
  ffr_x1 \data_reg[81]  ( .D(data[89]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[81]) );
  ffr_x1 \data_reg[73]  ( .D(data[81]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[73]) );
  ffr_x1 \data_reg[65]  ( .D(data[73]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[65]) );
  ffr_x1 \data_reg[57]  ( .D(data[65]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[57]) );
  ffr_x1 \data_reg[49]  ( .D(data[57]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[49]) );
  ffr_x1 \data_reg[41]  ( .D(data[49]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[41]) );
  ffr_x1 \data_reg[33]  ( .D(data[41]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[33]) );
  ffr_x1 \data_reg[25]  ( .D(data[33]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[25]) );
  ffr_x1 \data_reg[17]  ( .D(data[25]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[17]) );
  ffr_x1 \data_reg[122]  ( .D(rx_byte[2]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[122]) );
  ffr_x1 \data_reg[114]  ( .D(data[122]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[114]) );
  ffr_x1 \data_reg[106]  ( .D(data[114]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[106]) );
  ffr_x1 \data_reg[98]  ( .D(data[106]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[98]) );
  ffr_x1 \data_reg[90]  ( .D(data[98]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[90]) );
  ffr_x1 \data_reg[82]  ( .D(data[90]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[82]) );
  ffr_x1 \data_reg[74]  ( .D(data[82]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[74]) );
  ffr_x1 \data_reg[66]  ( .D(data[74]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[66]) );
  ffr_x1 \data_reg[58]  ( .D(data[66]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[58]) );
  ffr_x1 \data_reg[50]  ( .D(data[58]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[50]) );
  ffr_x1 \data_reg[42]  ( .D(data[50]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[42]) );
  ffr_x1 \data_reg[34]  ( .D(data[42]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[34]) );
  ffr_x1 \data_reg[26]  ( .D(data[34]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[26]) );
  ffr_x1 \data_reg[123]  ( .D(rx_byte[3]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[123]) );
  ffr_x1 \data_reg[115]  ( .D(data[123]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[115]) );
  ffr_x1 \data_reg[107]  ( .D(data[115]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[107]) );
  ffr_x1 \data_reg[99]  ( .D(data[107]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[99]) );
  ffr_x1 \data_reg[91]  ( .D(data[99]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[91]) );
  ffr_x1 \data_reg[83]  ( .D(data[91]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[83]) );
  ffr_x1 \data_reg[75]  ( .D(data[83]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[75]) );
  ffr_x1 \data_reg[67]  ( .D(data[75]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[67]) );
  ffr_x1 \data_reg[59]  ( .D(data[67]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[59]) );
  ffr_x1 \data_reg[51]  ( .D(data[59]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[51]) );
  ffr_x1 \data_reg[43]  ( .D(data[51]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[43]) );
  ffr_x1 \data_reg[35]  ( .D(data[43]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[35]) );
  ffr_x1 \data_reg[11]  ( .D(data[19]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[11]) );
  ffr_x1 \data_reg[124]  ( .D(rx_byte[4]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[124]) );
  ffr_x1 \data_reg[116]  ( .D(data[124]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[116]) );
  ffr_x1 \data_reg[108]  ( .D(data[116]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[108]) );
  ffr_x1 \data_reg[100]  ( .D(data[108]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[100]) );
  ffr_x1 \data_reg[92]  ( .D(data[100]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[92]) );
  ffr_x1 \data_reg[84]  ( .D(data[92]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[84]) );
  ffr_x1 \data_reg[76]  ( .D(data[84]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[76]) );
  ffr_x1 \data_reg[68]  ( .D(data[76]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[68]) );
  ffr_x1 \data_reg[60]  ( .D(data[68]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[60]) );
  ffr_x1 \data_reg[52]  ( .D(data[60]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[52]) );
  ffr_x1 \data_reg[44]  ( .D(data[52]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[44]) );
  ffr_x1 \data_reg[20]  ( .D(data[28]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[20]) );
  ffr_x1 \data_reg[12]  ( .D(data[20]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[12]) );
  ffr_x1 \data_reg[125]  ( .D(rx_byte[5]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[125]) );
  ffr_x1 \data_reg[117]  ( .D(data[125]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[117]) );
  ffr_x1 \data_reg[109]  ( .D(data[117]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[109]) );
  ffr_x1 \data_reg[101]  ( .D(data[109]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[101]) );
  ffr_x1 \data_reg[93]  ( .D(data[101]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[93]) );
  ffr_x1 \data_reg[85]  ( .D(data[93]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[85]) );
  ffr_x1 \data_reg[77]  ( .D(data[85]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[77]) );
  ffr_x1 \data_reg[69]  ( .D(data[77]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[69]) );
  ffr_x1 \data_reg[61]  ( .D(data[69]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[61]) );
  ffr_x1 \data_reg[53]  ( .D(data[61]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[53]) );
  ffr_x1 \data_reg[29]  ( .D(data[37]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[29]) );
  ffr_x1 \data_reg[21]  ( .D(data[29]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[21]) );
  ffr_x1 \data_reg[13]  ( .D(data[21]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[13]) );
  ffr_x1 \data_reg[126]  ( .D(rx_byte[6]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[126]) );
  ffr_x1 \data_reg[118]  ( .D(data[126]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[118]) );
  ffr_x1 \data_reg[110]  ( .D(data[118]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[110]) );
  ffr_x1 \data_reg[102]  ( .D(data[110]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[102]) );
  ffr_x1 \data_reg[94]  ( .D(data[102]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[94]) );
  ffr_x1 \data_reg[86]  ( .D(data[94]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[86]) );
  ffr_x1 \data_reg[78]  ( .D(data[86]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[78]) );
  ffr_x1 \data_reg[70]  ( .D(data[78]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[70]) );
  ffr_x1 \data_reg[62]  ( .D(data[70]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[62]) );
  ffr_x1 \data_reg[38]  ( .D(data[46]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[38]) );
  ffr_x1 \data_reg[30]  ( .D(data[38]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[30]) );
  ffr_x1 \data_reg[22]  ( .D(data[30]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[22]) );
  ffr_x1 \data_reg[14]  ( .D(data[22]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[14]) );
  ffr_x1 \data_reg[127]  ( .D(rx_byte[7]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[127]) );
  ffr_x1 \data_reg[119]  ( .D(data[127]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[119]) );
  ffr_x1 \data_reg[111]  ( .D(data[119]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[111]) );
  ffr_x1 \data_reg[103]  ( .D(data[111]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[103]) );
  ffr_x1 \data_reg[95]  ( .D(data[103]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[95]) );
  ffr_x1 \data_reg[87]  ( .D(data[95]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[87]) );
  ffr_x1 \data_reg[79]  ( .D(data[87]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[79]) );
  ffr_x1 \data_reg[71]  ( .D(data[79]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[71]) );
  ffr_x1 \data_reg[47]  ( .D(data[55]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[47]) );
  ffr_x1 \data_reg[39]  ( .D(data[47]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[39]) );
  ffr_x1 \data_reg[31]  ( .D(data[39]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[31]) );
  ffr_x1 \data_reg[23]  ( .D(data[31]), .CLK(valid_rx), .RSTN(n58), .Q(
        data[23]) );
  ffr_x1 \data_reg[15]  ( .D(data[23]), .CLK(valid_rx), .RSTN(n57), .Q(
        data[15]) );
  ffr_x1 \data_reg[120]  ( .D(rx_byte[0]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[120]) );
  ffr_x1 \data_reg[9]  ( .D(data[17]), .CLK(valid_rx), .RSTN(n58), .Q(data[9])
         );
  ffr_x1 \data_reg[18]  ( .D(data[26]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[18]) );
  ffr_x1 \data_reg[27]  ( .D(data[35]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[27]) );
  ffr_x1 \data_reg[36]  ( .D(data[44]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[36]) );
  ffr_x1 \data_reg[45]  ( .D(data[53]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[45]) );
  ffr_x1 \data_reg[54]  ( .D(data[62]), .CLK(valid_rx), .RSTN(n56), .Q(
        data[54]) );
  ffr_x1 \data_reg[63]  ( .D(data[71]), .CLK(valid_rx), .RSTN(n55), .Q(
        data[63]) );
  inv_x1 U106 ( .A(n59), .Y(n55) );
  inv_x1 U107 ( .A(n59), .Y(n56) );
  inv_x1 U108 ( .A(n59), .Y(n57) );
  inv_x1 U109 ( .A(n59), .Y(n58) );
  inv_x1 U110 ( .A(rst_rx), .Y(n59) );
  or2_x1 U111 ( .A(\in/sig_q [4]), .B(\in/sig_q [2]), .Y(n64) );
  nor2_x1 U112 ( .A(\in/clk_cnt [6]), .B(\in/clk_cnt [8]), .Y(n61) );
  nor2_x1 U113 ( .A(\in/clk_cnt [8]), .B(n99), .Y(n98) );
  nand2_x1 U114 ( .A(n80), .B(count[3]), .Y(n81) );
  nand2_x1 U115 ( .A(n58), .B(valid_rx), .Y(n130) );
  nor2_x1 U116 ( .A(\in/clk_cnt [6]), .B(n93), .Y(n97) );
  nand2_x1 U117 ( .A(n86), .B(n124), .Y(n125) );
  nor2_x1 U118 ( .A(\in/clk_cnt [0]), .B(n105), .Y(\in/N183 ) );
  tiehi U119 ( .H(n47) );
  tielo U120 ( .L(n54) );
  nor2_x1 U121 ( .A(\in/state [1]), .B(n59), .Y(n86) );
  nor3_x1 U122 ( .A(\in/clk_cnt [2]), .B(\in/clk_cnt [1]), .C(\in/clk_cnt [0]), 
        .Y(n89) );
  nor3_x1 U123 ( .A(\in/clk_cnt [9]), .B(\in/clk_cnt [7]), .C(\in/clk_cnt [3]), 
        .Y(n60) );
  inv_x1 U124 ( .A(\in/clk_cnt [5]), .Y(n71) );
  nand4_x1 U125 ( .A(n61), .B(n89), .C(n60), .D(n71), .Y(n62) );
  nor3_x1 U126 ( .A(\in/clk_cnt [4]), .B(\in/clk_cnt [10]), .C(n62), .Y(n109)
         );
  inv_x1 U127 ( .A(\in/state [0]), .Y(n124) );
  nor3_x1 U128 ( .A(\in/clk_cnt [11]), .B(valid_rx), .C(n124), .Y(n63) );
  nand3_x1 U129 ( .A(n86), .B(n109), .C(n63), .Y(n129) );
  nand2_x1 U130 ( .A(n57), .B(n129), .Y(\in/N202 ) );
  nor2_x1 U131 ( .A(\in/sampling_cnt [1]), .B(\in/sampling_cnt [0]), .Y(n53)
         );
  nor2_x1 U132 ( .A(n109), .B(\in/clk_cnt [11]), .Y(\in/N91 ) );
  inv_x1 U133 ( .A(\in/state [1]), .Y(n127) );
  inv_x1 U134 ( .A(\in/sig_r ), .Y(n120) );
  oai21_x1 U135 ( .A0(n127), .A1(n120), .B0(n124), .Y(n118) );
  oai2bb1_x1 U136 ( .A0N(n127), .A1N(\in/N91 ), .B0(n118), .Y(n52) );
  oai21_x1 U137 ( .A0(\in/state [0]), .A1(\in/N91 ), .B0(n86), .Y(n105) );
  nor2_x1 U138 ( .A(\in/data_cnt [0]), .B(n125), .Y(\in/N178 ) );
  or2_x1 U139 ( .A(sig_rx), .B(n59), .Y(\in/N81 ) );
  nor3_x1 U140 ( .A(\in/sig_q [0]), .B(\in/sig_q [4]), .C(\in/sig_q [2]), .Y(
        n67) );
  nand2_x1 U141 ( .A(\in/sig_q [1]), .B(\in/sig_q [3]), .Y(n66) );
  aoi22_x1 U142 ( .A0(\in/sig_q [0]), .A1(n64), .B0(\in/sig_q [4]), .B1(
        \in/sig_q [2]), .Y(n65) );
  oai21_x1 U143 ( .A0(n67), .A1(n66), .B0(n65), .Y(n68) );
  oai21_x1 U144 ( .A0(\in/sig_q [1]), .A1(\in/sig_q [3]), .B0(n68), .Y(n70) );
  nand3_x1 U145 ( .A(\in/sig_q [0]), .B(\in/sig_q [4]), .C(\in/sig_q [2]), .Y(
        n69) );
  nand3_x1 U146 ( .A(n57), .B(n70), .C(n69), .Y(\in/N82 ) );
  nor2_x1 U147 ( .A(n59), .B(n120), .Y(\in/N176 ) );
  or2_x1 U148 ( .A(\in/sig_q [1]), .B(n59), .Y(\in/N77 ) );
  nor3_x1 U149 ( .A(\in/state [1]), .B(\in/state [0]), .C(\in/N91 ), .Y(
        \in/N159 ) );
  nand2_x1 U150 ( .A(rst_rx), .B(\in/N159 ), .Y(n94) );
  nand2b_x1 U151 ( .AN(\in/clk_cnt [3]), .B(n89), .Y(n91) );
  nor2_x1 U152 ( .A(\in/clk_cnt [4]), .B(n91), .Y(n90) );
  nand2_x1 U153 ( .A(n90), .B(n71), .Y(n93) );
  oai21_x1 U154 ( .A0(n71), .A1(n90), .B0(n93), .Y(n72) );
  nand2_x1 U155 ( .A(n86), .B(n72), .Y(n73) );
  nand2_x1 U156 ( .A(n94), .B(n73), .Y(\in/N188 ) );
  inv_x1 U157 ( .A(\in/clk_cnt [9]), .Y(n74) );
  nand2b_x1 U158 ( .AN(\in/clk_cnt [7]), .B(n97), .Y(n99) );
  nand2_x1 U159 ( .A(n98), .B(n74), .Y(n103) );
  oai21_x1 U160 ( .A0(n74), .A1(n98), .B0(n103), .Y(n75) );
  nand2_x1 U161 ( .A(n86), .B(n75), .Y(n76) );
  nand2_x1 U162 ( .A(n76), .B(n94), .Y(\in/N192 ) );
  nor2_x1 U163 ( .A(\in/sampling_cnt [0]), .B(n59), .Y(\in/N74 ) );
  nor2b_x1 U164 ( .AN(\in/data_tmp_r [6]), .B(n129), .Y(\in/N209 ) );
  nor2b_x1 U165 ( .AN(\in/data_tmp_r [4]), .B(n129), .Y(\in/N207 ) );
  nor2b_x1 U166 ( .AN(\in/data_tmp_r [3]), .B(n129), .Y(\in/N206 ) );
  nor2b_x1 U167 ( .AN(\in/data_tmp_r [2]), .B(n129), .Y(\in/N205 ) );
  nor2b_x1 U168 ( .AN(\in/data_tmp_r [7]), .B(n129), .Y(\in/N210 ) );
  nor2b_x1 U169 ( .AN(\in/data_tmp_r [5]), .B(n129), .Y(\in/N208 ) );
  nor2b_x1 U170 ( .AN(\in/data_tmp_r [6]), .B(n59), .Y(\in/N174 ) );
  nor2b_x1 U171 ( .AN(\in/data_tmp_r [2]), .B(n59), .Y(\in/N170 ) );
  nor2b_x1 U172 ( .AN(\in/data_tmp_r [1]), .B(n59), .Y(\in/N169 ) );
  nor2b_x1 U173 ( .AN(\in/data_tmp_r [3]), .B(n59), .Y(\in/N171 ) );
  nor2b_x1 U174 ( .AN(\in/data_tmp_r [4]), .B(n59), .Y(\in/N172 ) );
  nor2b_x1 U175 ( .AN(\in/data_tmp_r [5]), .B(n59), .Y(\in/N173 ) );
  nand2b_x1 U176 ( .AN(\in/sig_q [2]), .B(n57), .Y(\in/N78 ) );
  nor2b_x1 U177 ( .AN(\in/data_tmp_r [7]), .B(n59), .Y(\in/N175 ) );
  nor2b_x1 U178 ( .AN(\in/data_tmp_r [1]), .B(n129), .Y(\in/N204 ) );
  nor2b_x1 U179 ( .AN(\in/data_tmp_r [0]), .B(n129), .Y(\in/N203 ) );
  nand2b_x1 U180 ( .AN(\in/sig_q [4]), .B(rst_rx), .Y(\in/N80 ) );
  nand2b_x1 U181 ( .AN(\in/sig_q [3]), .B(n58), .Y(\in/N79 ) );
  nand4b_x1 U182 ( .AN(\in/data_cnt [3]), .B(\in/data_cnt [1]), .C(
        \in/data_cnt [0]), .D(\in/data_cnt [2]), .Y(\in/N241 ) );
  inv_x1 U183 ( .A(count[2]), .Y(n78) );
  nand2_x1 U184 ( .A(count[0]), .B(count[1]), .Y(n79) );
  nor2_x1 U185 ( .A(n78), .B(n79), .Y(n80) );
  nor2_x1 U186 ( .A(n80), .B(count[3]), .Y(n77) );
  aoi21_x1 U187 ( .A0(count[3]), .A1(n80), .B0(n77), .Y(N5) );
  aoi21_x1 U188 ( .A0(n79), .A1(n78), .B0(n80), .Y(N4) );
  inv_x1 U189 ( .A(count[0]), .Y(N2) );
  mxi2_x1 U190 ( .A0(N2), .A1(count[0]), .S(count[1]), .YN(N3) );
  inv_x1 U191 ( .A(count[4]), .Y(n82) );
  mxi2_x1 U192 ( .A0(count[4]), .A1(n82), .S(n81), .YN(N6) );
  nor2_x1 U193 ( .A(\in/clk_cnt [1]), .B(\in/clk_cnt [0]), .Y(n83) );
  aoi21_x1 U194 ( .A0(\in/clk_cnt [0]), .A1(\in/clk_cnt [1]), .B0(n83), .Y(n84) );
  nand3_x1 U195 ( .A(\in/state [1]), .B(n58), .C(n124), .Y(n104) );
  oai21_x1 U196 ( .A0(n84), .A1(n105), .B0(n104), .Y(\in/N184 ) );
  or2_x1 U197 ( .A(\in/clk_cnt [1]), .B(\in/clk_cnt [0]), .Y(n85) );
  aoi21_x1 U198 ( .A0(\in/clk_cnt [2]), .A1(n85), .B0(n89), .Y(n87) );
  inv_x1 U199 ( .A(n86), .Y(n101) );
  and2_x1 U200 ( .A(n104), .B(n94), .Y(n100) );
  oai21_x1 U201 ( .A0(n87), .A1(n101), .B0(n100), .Y(\in/N185 ) );
  inv_x1 U202 ( .A(n105), .Y(n107) );
  oai21_x1 U203 ( .A0(n89), .A1(\in/clk_cnt [3]), .B0(n107), .Y(n88) );
  aoi21_x1 U204 ( .A0(n89), .A1(\in/clk_cnt [3]), .B0(n88), .Y(\in/N186 ) );
  aoi21_x1 U205 ( .A0(\in/clk_cnt [4]), .A1(n91), .B0(n90), .Y(n92) );
  oai21_x1 U206 ( .A0(n92), .A1(n105), .B0(n104), .Y(\in/N187 ) );
  aoi21_x1 U207 ( .A0(\in/clk_cnt [6]), .A1(n93), .B0(n97), .Y(n95) );
  oai21_x1 U208 ( .A0(n95), .A1(n101), .B0(n94), .Y(\in/N189 ) );
  oai21_x1 U209 ( .A0(\in/clk_cnt [7]), .A1(n97), .B0(n107), .Y(n96) );
  aoi21_x1 U210 ( .A0(\in/clk_cnt [7]), .A1(n97), .B0(n96), .Y(\in/N190 ) );
  aoi21_x1 U211 ( .A0(\in/clk_cnt [8]), .A1(n99), .B0(n98), .Y(n102) );
  oai21_x1 U212 ( .A0(n102), .A1(n101), .B0(n100), .Y(\in/N191 ) );
  aoi21_x1 U213 ( .A0(\in/clk_cnt [10]), .A1(n103), .B0(n109), .Y(n106) );
  oai21_x1 U214 ( .A0(n106), .A1(n105), .B0(n104), .Y(\in/N193 ) );
  oai21_x1 U215 ( .A0(\in/clk_cnt [11]), .A1(n109), .B0(n107), .Y(n108) );
  aoi21_x1 U216 ( .A0(\in/clk_cnt [11]), .A1(n109), .B0(n108), .Y(\in/N194 )
         );
  aoi21_x1 U217 ( .A0(\in/data_cnt [0]), .A1(\in/data_cnt [1]), .B0(n125), .Y(
        n114) );
  oai21_x1 U218 ( .A0(\in/data_cnt [0]), .A1(\in/data_cnt [1]), .B0(n114), .Y(
        n110) );
  inv_x1 U219 ( .A(n110), .Y(\in/N179 ) );
  nor2_x1 U220 ( .A(\in/data_cnt [2]), .B(n125), .Y(n115) );
  inv_x1 U221 ( .A(n115), .Y(n113) );
  nand2_x1 U222 ( .A(\in/data_cnt [0]), .B(\in/data_cnt [1]), .Y(n112) );
  nand2_x1 U223 ( .A(\in/data_cnt [2]), .B(n114), .Y(n111) );
  oai21_x1 U224 ( .A0(n113), .A1(n112), .B0(n111), .Y(\in/N180 ) );
  oai21_x1 U225 ( .A0(n115), .A1(n114), .B0(\in/data_cnt [3]), .Y(n116) );
  oai21_x1 U226 ( .A0(n125), .A1(\in/N241 ), .B0(n116), .Y(\in/N181 ) );
  oai21_x1 U227 ( .A0(\in/sampling_cnt [1]), .A1(\in/sampling_cnt [0]), .B0(
        n58), .Y(n117) );
  aoi21_x1 U228 ( .A0(\in/sampling_cnt [1]), .A1(\in/sampling_cnt [0]), .B0(
        n117), .Y(\in/N75 ) );
  aoi2bb1_x1 U229 ( .A0N(\in/state [1]), .A1N(\in/N123 ), .B0(n118), .Y(n51)
         );
  inv_x1 U230 ( .A(\in/N241 ), .Y(n123) );
  oai21_x1 U231 ( .A0(\in/N91 ), .A1(n120), .B0(n127), .Y(n119) );
  oai21_x1 U232 ( .A0(\in/state [0]), .A1(n120), .B0(n119), .Y(n121) );
  nand2_x1 U233 ( .A(rst_rx), .B(n121), .Y(n122) );
  aoi21_x1 U234 ( .A0(\in/N159 ), .A1(n123), .B0(n122), .Y(n126) );
  mxi2_x1 U235 ( .A0(n125), .A1(n124), .S(n126), .YN(n49) );
  nor2_x1 U236 ( .A(\in/state [0]), .B(n59), .Y(n128) );
  mxi2_x1 U237 ( .A0(n128), .A1(n127), .S(n126), .YN(n48) );
  oai21_x1 U238 ( .A0(ready_rx), .A1(n130), .B0(n129), .Y(n46) );
endmodule

