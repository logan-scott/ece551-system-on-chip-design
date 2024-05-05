/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-1
// Date      : Sun May  5 01:56:01 2024
/////////////////////////////////////////////////////////////


module rx_to_aes ( sig_rx, ready_rx, data, valid_rx, full_rx, clk, rst_rx, 
        rx_byte );
  output [127:0] data;
  output [7:0] rx_byte;
  input sig_rx, ready_rx, clk, rst_rx;
  output valid_rx, full_rx;
  wire   N2, N3, N4, N5, N6, \in/N82 , \in/N75 , \in/N74 , \in/sig_r , n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n127, n128, n129, n130, n131, n132, n133, n136, n137, n138,
         n139, n141, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262;
  wire   [4:0] count;
  wire   [11:0] \in/clk_cnt ;
  wire   [3:0] \in/data_cnt ;
  wire   [7:0] \in/data_tmp_r ;
  wire   [1:0] \in/state ;
  wire   [4:0] \in/sig_q ;
  wire   [1:0] \in/sampling_cnt ;

  ffthq_x1 \in/sampling_cnt_reg[0]  ( .D(\in/N74 ), .CLK(clk), .Q(
        \in/sampling_cnt [0]) );
  ffthq_x1 \in/sampling_cnt_reg[1]  ( .D(\in/N75 ), .CLK(clk), .Q(
        \in/sampling_cnt [1]) );
  ffthq_x1 \in/sig_q_reg[4]  ( .D(n102), .CLK(clk), .Q(\in/sig_q [4]) );
  ffthq_x1 \in/sig_q_reg[3]  ( .D(n103), .CLK(clk), .Q(\in/sig_q [3]) );
  ffthq_x1 \in/sig_q_reg[2]  ( .D(n104), .CLK(clk), .Q(\in/sig_q [2]) );
  ffthq_x1 \in/sig_q_reg[1]  ( .D(n105), .CLK(clk), .Q(\in/sig_q [1]) );
  ffthq_x1 \in/sig_q_reg[0]  ( .D(n106), .CLK(clk), .Q(\in/sig_q [0]) );
  ffthq_x1 \in/sig_r_reg  ( .D(\in/N82 ), .CLK(clk), .Q(\in/sig_r ) );
  ffthq_x1 \in/state_reg[1]  ( .D(n116), .CLK(clk), .Q(\in/state [1]) );
  ffthq_x1 \in/state_reg[0]  ( .D(n117), .CLK(clk), .Q(\in/state [0]) );
  ffthq_x1 \in/clk_cnt_reg[0]  ( .D(n141), .CLK(clk), .Q(\in/clk_cnt [0]) );
  ffthq_x1 \in/clk_cnt_reg[10]  ( .D(n139), .CLK(clk), .Q(\in/clk_cnt [10]) );
  ffthq_x1 \in/clk_cnt_reg[7]  ( .D(n136), .CLK(clk), .Q(\in/clk_cnt [7]) );
  ffthq_x1 \in/clk_cnt_reg[4]  ( .D(n133), .CLK(clk), .Q(\in/clk_cnt [4]) );
  ffthq_x1 \in/clk_cnt_reg[3]  ( .D(n132), .CLK(clk), .Q(\in/clk_cnt [3]) );
  ffthq_x1 \in/clk_cnt_reg[1]  ( .D(n130), .CLK(clk), .Q(\in/clk_cnt [1]) );
  ffthq_x1 \in/clk_cnt_reg[9]  ( .D(n138), .CLK(clk), .Q(\in/clk_cnt [9]) );
  ffthq_x1 \in/clk_cnt_reg[6]  ( .D(n261), .CLK(clk), .Q(\in/clk_cnt [6]) );
  ffthq_x1 \in/clk_cnt_reg[5]  ( .D(n262), .CLK(clk), .Q(\in/clk_cnt [5]) );
  ffthq_x1 \in/clk_cnt_reg[8]  ( .D(n137), .CLK(clk), .Q(\in/clk_cnt [8]) );
  ffthq_x1 \in/clk_cnt_reg[2]  ( .D(n131), .CLK(clk), .Q(\in/clk_cnt [2]) );
  ffthq_x1 \in/data_cnt_reg[0]  ( .D(n129), .CLK(clk), .Q(\in/data_cnt [0]) );
  ffthq_x1 \in/data_cnt_reg[1]  ( .D(n128), .CLK(clk), .Q(\in/data_cnt [1]) );
  ffthq_x1 \in/data_cnt_reg[2]  ( .D(n127), .CLK(clk), .Q(\in/data_cnt [2]) );
  ffthq_x1 \in/data_tmp_r_reg[7]  ( .D(n124), .CLK(clk), .Q(\in/data_tmp_r [7]) );
  ffthq_x1 \in/data_tmp_r_reg[6]  ( .D(n123), .CLK(clk), .Q(\in/data_tmp_r [6]) );
  ffthq_x1 \in/data_tmp_r_reg[5]  ( .D(n122), .CLK(clk), .Q(\in/data_tmp_r [5]) );
  ffthq_x1 \in/data_tmp_r_reg[4]  ( .D(n121), .CLK(clk), .Q(\in/data_tmp_r [4]) );
  ffthq_x1 \in/data_tmp_r_reg[3]  ( .D(n120), .CLK(clk), .Q(\in/data_tmp_r [3]) );
  ffthq_x1 \in/data_tmp_r_reg[2]  ( .D(n119), .CLK(clk), .Q(\in/data_tmp_r [2]) );
  ffthq_x1 \in/data_tmp_r_reg[1]  ( .D(n118), .CLK(clk), .Q(\in/data_tmp_r [1]) );
  ffthq_x1 \in/data_tmp_r_reg[0]  ( .D(n125), .CLK(clk), .Q(\in/data_tmp_r [0]) );
  ffthq_x1 \in/valid_r_reg  ( .D(n115), .CLK(clk), .Q(valid_rx) );
  ffthq_x1 \in/data_r_reg[0]  ( .D(n114), .CLK(clk), .Q(rx_byte[0]) );
  ffthq_x1 \in/data_r_reg[7]  ( .D(n113), .CLK(clk), .Q(rx_byte[7]) );
  ffthq_x1 \in/data_r_reg[6]  ( .D(n112), .CLK(clk), .Q(rx_byte[6]) );
  ffthq_x1 \in/data_r_reg[5]  ( .D(n111), .CLK(clk), .Q(rx_byte[5]) );
  ffthq_x1 \in/data_r_reg[4]  ( .D(n110), .CLK(clk), .Q(rx_byte[4]) );
  ffthq_x1 \in/data_r_reg[3]  ( .D(n109), .CLK(clk), .Q(rx_byte[3]) );
  ffthq_x1 \in/data_r_reg[2]  ( .D(n108), .CLK(clk), .Q(rx_byte[2]) );
  ffthq_x1 \in/data_r_reg[1]  ( .D(n107), .CLK(clk), .Q(rx_byte[1]) );
  ffr_x1 \count_reg[3]  ( .D(N5), .CLK(valid_rx), .RSTN(rst_rx), .Q(count[3])
         );
  ffr_x1 \data_reg[16]  ( .D(data[24]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[16]) );
  ffr_x1 \data_reg[31]  ( .D(data[39]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[31]) );
  ffr_x1 \data_reg[38]  ( .D(data[46]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[38]) );
  ffr_x1 \data_reg[45]  ( .D(data[53]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[45]) );
  ffr_x1 \data_reg[52]  ( .D(data[60]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[52]) );
  ffr_x1 \data_reg[59]  ( .D(data[67]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[59]) );
  ffr_x1 \data_reg[66]  ( .D(data[74]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[66]) );
  ffr_x1 \data_reg[73]  ( .D(data[81]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[73]) );
  ffr_x1 \data_reg[1]  ( .D(data[9]), .CLK(valid_rx), .RSTN(n144), .Q(data[1])
         );
  ffr_x1 \count_reg[0]  ( .D(N2), .CLK(valid_rx), .RSTN(rst_rx), .Q(count[0])
         );
  ffr_x1 \count_reg[1]  ( .D(N3), .CLK(valid_rx), .RSTN(rst_rx), .Q(count[1])
         );
  ffr_x1 \count_reg[2]  ( .D(N4), .CLK(valid_rx), .RSTN(n146), .Q(count[2]) );
  ffr_x1 \count_reg[4]  ( .D(N6), .CLK(valid_rx), .RSTN(n145), .Q(count[4]) );
  ffr_x1 \data_reg[0]  ( .D(data[8]), .CLK(valid_rx), .RSTN(n146), .Q(data[0])
         );
  ffr_x1 \data_reg[7]  ( .D(data[15]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[7]) );
  ffr_x1 \data_reg[6]  ( .D(data[14]), .CLK(valid_rx), .RSTN(n145), .Q(data[6]) );
  ffr_x1 \data_reg[5]  ( .D(data[13]), .CLK(valid_rx), .RSTN(n144), .Q(data[5]) );
  ffr_x1 \data_reg[4]  ( .D(data[12]), .CLK(valid_rx), .RSTN(n144), .Q(data[4]) );
  ffr_x1 \data_reg[3]  ( .D(data[11]), .CLK(valid_rx), .RSTN(n144), .Q(data[3]) );
  ffr_x1 \data_reg[2]  ( .D(data[10]), .CLK(valid_rx), .RSTN(n143), .Q(data[2]) );
  ffr_x1 \data_reg[120]  ( .D(rx_byte[0]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[120]) );
  ffr_x1 \data_reg[112]  ( .D(data[120]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[112]) );
  ffr_x1 \data_reg[104]  ( .D(data[112]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[104]) );
  ffr_x1 \data_reg[96]  ( .D(data[104]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[96]) );
  ffr_x1 \data_reg[88]  ( .D(data[96]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[88]) );
  ffr_x1 \data_reg[80]  ( .D(data[88]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[80]) );
  ffr_x1 \data_reg[72]  ( .D(data[80]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[72]) );
  ffr_x1 \data_reg[64]  ( .D(data[72]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[64]) );
  ffr_x1 \data_reg[56]  ( .D(data[64]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[56]) );
  ffr_x1 \data_reg[48]  ( .D(data[56]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[48]) );
  ffr_x1 \data_reg[40]  ( .D(data[48]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[40]) );
  ffr_x1 \data_reg[32]  ( .D(data[40]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[32]) );
  ffr_x1 \data_reg[8]  ( .D(data[16]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[8]) );
  ffr_x1 \data_reg[127]  ( .D(rx_byte[7]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[127]) );
  ffr_x1 \data_reg[119]  ( .D(data[127]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[119]) );
  ffr_x1 \data_reg[111]  ( .D(data[119]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[111]) );
  ffr_x1 \data_reg[103]  ( .D(data[111]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[103]) );
  ffr_x1 \data_reg[95]  ( .D(data[103]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[95]) );
  ffr_x1 \data_reg[87]  ( .D(data[95]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[87]) );
  ffr_x1 \data_reg[79]  ( .D(data[87]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[79]) );
  ffr_x1 \data_reg[71]  ( .D(data[79]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[71]) );
  ffr_x1 \data_reg[63]  ( .D(data[71]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[63]) );
  ffr_x1 \data_reg[55]  ( .D(data[63]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[55]) );
  ffr_x1 \data_reg[47]  ( .D(data[55]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[47]) );
  ffr_x1 \data_reg[23]  ( .D(data[31]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[23]) );
  ffr_x1 \data_reg[15]  ( .D(data[23]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[15]) );
  ffr_x1 \data_reg[126]  ( .D(rx_byte[6]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[126]) );
  ffr_x1 \data_reg[118]  ( .D(data[126]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[118]) );
  ffr_x1 \data_reg[110]  ( .D(data[118]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[110]) );
  ffr_x1 \data_reg[102]  ( .D(data[110]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[102]) );
  ffr_x1 \data_reg[94]  ( .D(data[102]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[94]) );
  ffr_x1 \data_reg[86]  ( .D(data[94]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[86]) );
  ffr_x1 \data_reg[78]  ( .D(data[86]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[78]) );
  ffr_x1 \data_reg[70]  ( .D(data[78]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[70]) );
  ffr_x1 \data_reg[62]  ( .D(data[70]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[62]) );
  ffr_x1 \data_reg[54]  ( .D(data[62]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[54]) );
  ffr_x1 \data_reg[30]  ( .D(data[38]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[30]) );
  ffr_x1 \data_reg[22]  ( .D(data[30]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[22]) );
  ffr_x1 \data_reg[14]  ( .D(data[22]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[14]) );
  ffr_x1 \data_reg[125]  ( .D(rx_byte[5]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[125]) );
  ffr_x1 \data_reg[117]  ( .D(data[125]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[117]) );
  ffr_x1 \data_reg[109]  ( .D(data[117]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[109]) );
  ffr_x1 \data_reg[101]  ( .D(data[109]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[101]) );
  ffr_x1 \data_reg[93]  ( .D(data[101]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[93]) );
  ffr_x1 \data_reg[85]  ( .D(data[93]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[85]) );
  ffr_x1 \data_reg[77]  ( .D(data[85]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[77]) );
  ffr_x1 \data_reg[69]  ( .D(data[77]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[69]) );
  ffr_x1 \data_reg[61]  ( .D(data[69]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[61]) );
  ffr_x1 \data_reg[37]  ( .D(data[45]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[37]) );
  ffr_x1 \data_reg[29]  ( .D(data[37]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[29]) );
  ffr_x1 \data_reg[21]  ( .D(data[29]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[21]) );
  ffr_x1 \data_reg[13]  ( .D(data[21]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[13]) );
  ffr_x1 \data_reg[124]  ( .D(rx_byte[4]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[124]) );
  ffr_x1 \data_reg[116]  ( .D(data[124]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[116]) );
  ffr_x1 \data_reg[108]  ( .D(data[116]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[108]) );
  ffr_x1 \data_reg[100]  ( .D(data[108]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[100]) );
  ffr_x1 \data_reg[92]  ( .D(data[100]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[92]) );
  ffr_x1 \data_reg[84]  ( .D(data[92]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[84]) );
  ffr_x1 \data_reg[76]  ( .D(data[84]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[76]) );
  ffr_x1 \data_reg[68]  ( .D(data[76]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[68]) );
  ffr_x1 \data_reg[44]  ( .D(data[52]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[44]) );
  ffr_x1 \data_reg[36]  ( .D(data[44]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[36]) );
  ffr_x1 \data_reg[28]  ( .D(data[36]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[28]) );
  ffr_x1 \data_reg[20]  ( .D(data[28]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[20]) );
  ffr_x1 \data_reg[12]  ( .D(data[20]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[12]) );
  ffr_x1 \data_reg[123]  ( .D(rx_byte[3]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[123]) );
  ffr_x1 \data_reg[115]  ( .D(data[123]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[115]) );
  ffr_x1 \data_reg[107]  ( .D(data[115]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[107]) );
  ffr_x1 \data_reg[99]  ( .D(data[107]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[99]) );
  ffr_x1 \data_reg[91]  ( .D(data[99]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[91]) );
  ffr_x1 \data_reg[83]  ( .D(data[91]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[83]) );
  ffr_x1 \data_reg[75]  ( .D(data[83]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[75]) );
  ffr_x1 \data_reg[51]  ( .D(data[59]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[51]) );
  ffr_x1 \data_reg[43]  ( .D(data[51]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[43]) );
  ffr_x1 \data_reg[35]  ( .D(data[43]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[35]) );
  ffr_x1 \data_reg[27]  ( .D(data[35]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[27]) );
  ffr_x1 \data_reg[19]  ( .D(data[27]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[19]) );
  ffr_x1 \data_reg[11]  ( .D(data[19]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[11]) );
  ffr_x1 \data_reg[122]  ( .D(rx_byte[2]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[122]) );
  ffr_x1 \data_reg[114]  ( .D(data[122]), .CLK(valid_rx), .RSTN(n143), .Q(
        data[114]) );
  ffr_x1 \data_reg[106]  ( .D(data[114]), .CLK(valid_rx), .RSTN(n144), .Q(
        data[106]) );
  ffr_x1 \data_reg[98]  ( .D(data[106]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[98]) );
  ffr_x1 \data_reg[90]  ( .D(data[98]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[90]) );
  ffr_x1 \data_reg[82]  ( .D(data[90]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[82]) );
  ffr_x1 \data_reg[58]  ( .D(data[66]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[58]) );
  ffr_x1 \data_reg[50]  ( .D(data[58]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[50]) );
  ffr_x1 \data_reg[42]  ( .D(data[50]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[42]) );
  ffr_x1 \data_reg[34]  ( .D(data[42]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[34]) );
  ffr_x1 \data_reg[26]  ( .D(data[34]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[26]) );
  ffr_x1 \data_reg[18]  ( .D(data[26]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[18]) );
  ffr_x1 \data_reg[10]  ( .D(data[18]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[10]) );
  ffr_x1 \data_reg[121]  ( .D(rx_byte[1]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[121]) );
  ffr_x1 \data_reg[113]  ( .D(data[121]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[113]) );
  ffr_x1 \data_reg[105]  ( .D(data[113]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[105]) );
  ffr_x1 \data_reg[97]  ( .D(data[105]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[97]) );
  ffr_x1 \data_reg[89]  ( .D(data[97]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[89]) );
  ffr_x1 \data_reg[65]  ( .D(data[73]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[65]) );
  ffr_x1 \data_reg[57]  ( .D(data[65]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[57]) );
  ffr_x1 \data_reg[49]  ( .D(data[57]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[49]) );
  ffr_x1 \data_reg[41]  ( .D(data[49]), .CLK(valid_rx), .RSTN(n145), .Q(
        data[41]) );
  ffr_x1 \data_reg[33]  ( .D(data[41]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[33]) );
  ffr_x1 \data_reg[25]  ( .D(data[33]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[25]) );
  ffr_x1 \data_reg[17]  ( .D(data[25]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[17]) );
  ffr_x1 \data_reg[24]  ( .D(data[32]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[24]) );
  ffr_x1 \data_reg[39]  ( .D(data[47]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[39]) );
  ffr_x1 \data_reg[46]  ( .D(data[54]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[46]) );
  ffr_x1 \data_reg[53]  ( .D(data[61]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[53]) );
  ffr_x1 \data_reg[60]  ( .D(data[68]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[60]) );
  ffr_x1 \data_reg[67]  ( .D(data[75]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[67]) );
  ffr_x1 \data_reg[74]  ( .D(data[82]), .CLK(valid_rx), .RSTN(rst_rx), .Q(
        data[74]) );
  ffr_x1 \data_reg[81]  ( .D(data[89]), .CLK(valid_rx), .RSTN(n146), .Q(
        data[81]) );
  ffr_x1 \data_reg[9]  ( .D(data[17]), .CLK(valid_rx), .RSTN(n143), .Q(data[9]) );
  inv_x1 U148 ( .A(n147), .Y(n143) );
  inv_x1 U149 ( .A(n147), .Y(n144) );
  inv_x1 U150 ( .A(n147), .Y(n145) );
  inv_x1 U151 ( .A(n147), .Y(n146) );
  inv_x1 U152 ( .A(rst_rx), .Y(n147) );
  nand2_x1 U153 ( .A(rst_rx), .B(valid_rx), .Y(n242) );
  or2_x1 U154 ( .A(\in/sig_q [1]), .B(\in/sig_q [0]), .Y(n148) );
  nor2_x1 U155 ( .A(\in/clk_cnt [1]), .B(\in/clk_cnt [0]), .Y(n165) );
  nor2_x1 U156 ( .A(\in/clk_cnt [10]), .B(n193), .Y(n241) );
  nand2_x1 U157 ( .A(\in/data_cnt [0]), .B(n162), .Y(n171) );
  nor2_x1 U158 ( .A(\in/clk_cnt [6]), .B(n199), .Y(n194) );
  nand2_x1 U159 ( .A(count[3]), .B(n181), .Y(n182) );
  nand2_x1 U160 ( .A(rst_rx), .B(n259), .Y(n258) );
  nand2_x1 U161 ( .A(rst_rx), .B(n229), .Y(n226) );
  nand3_x1 U162 ( .A(rst_rx), .B(n240), .C(n203), .Y(n198) );
  nor2_x1 U163 ( .A(\in/sampling_cnt [0]), .B(n147), .Y(\in/N74 ) );
  nor3_x1 U164 ( .A(\in/sig_q [3]), .B(\in/sig_q [1]), .C(\in/sig_q [0]), .Y(
        n151) );
  nand2_x1 U165 ( .A(\in/sig_q [4]), .B(\in/sig_q [2]), .Y(n150) );
  aoi22_x1 U166 ( .A0(\in/sig_q [3]), .A1(n148), .B0(\in/sig_q [1]), .B1(
        \in/sig_q [0]), .Y(n149) );
  oai21_x1 U167 ( .A0(n151), .A1(n150), .B0(n149), .Y(n152) );
  oai21_x1 U168 ( .A0(\in/sig_q [4]), .A1(\in/sig_q [2]), .B0(n152), .Y(n154)
         );
  nand3_x1 U169 ( .A(\in/sig_q [3]), .B(\in/sig_q [1]), .C(\in/sig_q [0]), .Y(
        n153) );
  nand3_x1 U170 ( .A(rst_rx), .B(n154), .C(n153), .Y(\in/N82 ) );
  nor2_x1 U171 ( .A(\in/sampling_cnt [1]), .B(\in/sampling_cnt [0]), .Y(n159)
         );
  inv_x1 U172 ( .A(n159), .Y(n183) );
  aoi22_x1 U173 ( .A0(n159), .A1(sig_rx), .B0(\in/sig_q [4]), .B1(n183), .Y(
        n155) );
  nand2_x1 U174 ( .A(rst_rx), .B(n155), .Y(n102) );
  aoi22_x1 U175 ( .A0(n159), .A1(\in/sig_q [4]), .B0(\in/sig_q [3]), .B1(n183), 
        .Y(n156) );
  nand2_x1 U176 ( .A(rst_rx), .B(n156), .Y(n103) );
  aoi22_x1 U177 ( .A0(n159), .A1(\in/sig_q [1]), .B0(\in/sig_q [0]), .B1(n183), 
        .Y(n157) );
  nand2_x1 U178 ( .A(rst_rx), .B(n157), .Y(n106) );
  aoi22_x1 U179 ( .A0(n159), .A1(\in/sig_q [2]), .B0(\in/sig_q [1]), .B1(n183), 
        .Y(n158) );
  nand2_x1 U180 ( .A(rst_rx), .B(n158), .Y(n105) );
  aoi22_x1 U181 ( .A0(n159), .A1(\in/sig_q [3]), .B0(\in/sig_q [2]), .B1(n183), 
        .Y(n160) );
  nand2_x1 U182 ( .A(rst_rx), .B(n160), .Y(n104) );
  nor3_x1 U183 ( .A(\in/clk_cnt [2]), .B(\in/clk_cnt [1]), .C(\in/clk_cnt [0]), 
        .Y(n202) );
  inv_x1 U184 ( .A(n202), .Y(n208) );
  nor3_x1 U185 ( .A(\in/clk_cnt [3]), .B(\in/clk_cnt [4]), .C(n208), .Y(n174)
         );
  inv_x1 U186 ( .A(\in/clk_cnt [5]), .Y(n200) );
  nand2_x1 U187 ( .A(n174), .B(n200), .Y(n199) );
  nand2b_x1 U188 ( .AN(\in/clk_cnt [7]), .B(n194), .Y(n197) );
  nor2_x1 U189 ( .A(\in/clk_cnt [8]), .B(n197), .Y(n190) );
  nand2b_x1 U190 ( .AN(\in/clk_cnt [9]), .B(n190), .Y(n193) );
  inv_x1 U191 ( .A(n241), .Y(n227) );
  nor3_x1 U192 ( .A(\in/state [1]), .B(\in/state [0]), .C(n227), .Y(n229) );
  nand3_x1 U193 ( .A(\in/data_cnt [1]), .B(\in/data_cnt [0]), .C(
        \in/data_cnt [2]), .Y(n230) );
  inv_x1 U194 ( .A(\in/state [1]), .Y(n240) );
  nor2_x1 U195 ( .A(\in/sig_r ), .B(n240), .Y(n234) );
  inv_x1 U196 ( .A(\in/state [0]), .Y(n238) );
  aoi22_x1 U197 ( .A0(n229), .A1(n230), .B0(n234), .B1(n238), .Y(n161) );
  nand2_x1 U198 ( .A(rst_rx), .B(n161), .Y(n162) );
  nor2_x1 U199 ( .A(\in/state [0]), .B(n147), .Y(n237) );
  inv_x1 U200 ( .A(n237), .Y(n220) );
  oai21_x1 U201 ( .A0(\in/state [1]), .A1(n220), .B0(n162), .Y(n173) );
  nand2_x1 U202 ( .A(n173), .B(n171), .Y(n222) );
  aoi2bb1_x1 U203 ( .A0N(\in/data_cnt [0]), .A1N(n162), .B0(n222), .Y(n129) );
  nor3_x1 U204 ( .A(\in/sig_r ), .B(n240), .C(n220), .Y(n215) );
  inv_x1 U205 ( .A(n215), .Y(n170) );
  aoi21_x1 U206 ( .A0(\in/state [1]), .A1(\in/sig_r ), .B0(\in/state [0]), .Y(
        n163) );
  aoi21_x1 U207 ( .A0(n240), .A1(n227), .B0(n163), .Y(n164) );
  nand2_x1 U208 ( .A(rst_rx), .B(n164), .Y(n203) );
  oai21_x1 U209 ( .A0(n165), .A1(n198), .B0(n203), .Y(n166) );
  inv_x1 U210 ( .A(n198), .Y(n175) );
  aoi22_x1 U211 ( .A0(\in/clk_cnt [2]), .A1(n166), .B0(n202), .B1(n175), .Y(
        n167) );
  nand2_x1 U212 ( .A(n170), .B(n167), .Y(n131) );
  oai2bb1_x1 U213 ( .A0N(n197), .A1N(n175), .B0(n203), .Y(n168) );
  aoi22_x1 U214 ( .A0(\in/clk_cnt [8]), .A1(n168), .B0(n190), .B1(n175), .Y(
        n169) );
  nand2_x1 U215 ( .A(n170), .B(n169), .Y(n137) );
  inv_x1 U216 ( .A(n171), .Y(n221) );
  aoi21_x1 U217 ( .A0(\in/data_cnt [1]), .A1(n221), .B0(\in/data_cnt [2]), .Y(
        n172) );
  nor2b_x1 U218 ( .AN(n173), .B(n172), .Y(n127) );
  inv_x1 U219 ( .A(n174), .Y(n207) );
  inv_x1 U220 ( .A(n203), .Y(n212) );
  aoi21_x1 U221 ( .A0(n175), .A1(n207), .B0(n212), .Y(n201) );
  oai21_x1 U222 ( .A0(n200), .A1(n198), .B0(n201), .Y(n176) );
  aoi22_x1 U223 ( .A0(\in/clk_cnt [6]), .A1(n176), .B0(n194), .B1(n175), .Y(
        n177) );
  inv_x1 U224 ( .A(n177), .Y(n261) );
  inv_x1 U225 ( .A(count[2]), .Y(n186) );
  nand2_x1 U226 ( .A(count[1]), .B(count[0]), .Y(n179) );
  nor2_x1 U227 ( .A(n186), .B(n179), .Y(n181) );
  nor2_x1 U228 ( .A(count[3]), .B(n181), .Y(n178) );
  aoi21_x1 U229 ( .A0(n181), .A1(count[3]), .B0(n178), .Y(N5) );
  aoi21_x1 U230 ( .A0(n186), .A1(n179), .B0(n181), .Y(N4) );
  nor2_x1 U231 ( .A(count[1]), .B(count[0]), .Y(n180) );
  aoi21_x1 U232 ( .A0(count[0]), .A1(count[1]), .B0(n180), .Y(N3) );
  inv_x1 U233 ( .A(count[0]), .Y(N2) );
  inv_x1 U234 ( .A(count[4]), .Y(n185) );
  mxi2_x1 U235 ( .A0(count[4]), .A1(n185), .S(n182), .YN(N6) );
  nand2_x1 U236 ( .A(n183), .B(rst_rx), .Y(n184) );
  aoi21_x1 U237 ( .A0(\in/sampling_cnt [1]), .A1(\in/sampling_cnt [0]), .B0(
        n184), .Y(\in/N75 ) );
  nor3_x1 U238 ( .A(count[3]), .B(count[1]), .C(count[0]), .Y(n187) );
  aoi21_x1 U239 ( .A0(n187), .A1(n186), .B0(n185), .Y(full_rx) );
  nand3_x1 U240 ( .A(rst_rx), .B(n227), .C(n240), .Y(n214) );
  mxi2_x1 U241 ( .A0(n214), .A1(n203), .S(\in/clk_cnt [0]), .YN(n141) );
  inv_x1 U242 ( .A(n214), .Y(n213) );
  oai2bb1_x1 U243 ( .A0N(n213), .A1N(n193), .B0(n203), .Y(n188) );
  aoi21_x1 U244 ( .A0(n188), .A1(\in/clk_cnt [10]), .B0(n215), .Y(n189) );
  inv_x1 U245 ( .A(n189), .Y(n139) );
  oai21_x1 U246 ( .A0(n190), .A1(n198), .B0(n203), .Y(n191) );
  nand2_x1 U247 ( .A(n191), .B(\in/clk_cnt [9]), .Y(n192) );
  oai21_x1 U248 ( .A0(n193), .A1(n198), .B0(n192), .Y(n138) );
  oai21_x1 U249 ( .A0(n214), .A1(n194), .B0(n203), .Y(n195) );
  nand2_x1 U250 ( .A(\in/clk_cnt [7]), .B(n195), .Y(n196) );
  oai21_x1 U251 ( .A0(n214), .A1(n197), .B0(n196), .Y(n136) );
  oai22_x1 U252 ( .A0(n201), .A1(n200), .B0(n199), .B1(n198), .Y(n262) );
  inv_x1 U253 ( .A(\in/clk_cnt [3]), .Y(n210) );
  nand2_x1 U254 ( .A(n202), .B(n210), .Y(n209) );
  inv_x1 U255 ( .A(n209), .Y(n204) );
  oai21_x1 U256 ( .A0(n214), .A1(n204), .B0(n203), .Y(n205) );
  aoi21_x1 U257 ( .A0(\in/clk_cnt [4]), .A1(n205), .B0(n215), .Y(n206) );
  oai21_x1 U258 ( .A0(n207), .A1(n214), .B0(n206), .Y(n133) );
  aoi21_x1 U259 ( .A0(n213), .A1(n208), .B0(n212), .Y(n211) );
  oai22_x1 U260 ( .A0(n211), .A1(n210), .B0(n209), .B1(n214), .Y(n132) );
  aoi21_x1 U261 ( .A0(\in/clk_cnt [0]), .A1(n213), .B0(n212), .Y(n219) );
  inv_x1 U262 ( .A(\in/clk_cnt [1]), .Y(n218) );
  nor2_x1 U263 ( .A(\in/clk_cnt [0]), .B(n214), .Y(n216) );
  aoi21_x1 U264 ( .A0(n216), .A1(n218), .B0(n215), .Y(n217) );
  oai21_x1 U265 ( .A0(n219), .A1(n218), .B0(n217), .Y(n130) );
  nor2_x1 U266 ( .A(\in/state [1]), .B(n220), .Y(n235) );
  nand2_x1 U267 ( .A(n221), .B(n235), .Y(n223) );
  mxi2_x1 U268 ( .A0(n223), .A1(n222), .S(\in/data_cnt [1]), .YN(n128) );
  inv_x1 U269 ( .A(\in/data_tmp_r [1]), .Y(n260) );
  nor2_x1 U270 ( .A(n229), .B(n147), .Y(n224) );
  oai2bb2_x1 U271 ( .B0(n226), .B1(n260), .A0N(\in/data_tmp_r [0]), .A1N(n224), 
        .Y(n125) );
  inv_x1 U272 ( .A(\in/sig_r ), .Y(n228) );
  inv_x1 U273 ( .A(n224), .Y(n225) );
  inv_x1 U274 ( .A(\in/data_tmp_r [7]), .Y(n246) );
  oai22_x1 U275 ( .A0(n226), .A1(n228), .B0(n225), .B1(n246), .Y(n124) );
  inv_x1 U276 ( .A(\in/data_tmp_r [6]), .Y(n248) );
  oai22_x1 U277 ( .A0(n226), .A1(n246), .B0(n225), .B1(n248), .Y(n123) );
  inv_x1 U278 ( .A(\in/data_tmp_r [5]), .Y(n250) );
  oai22_x1 U279 ( .A0(n226), .A1(n248), .B0(n225), .B1(n250), .Y(n122) );
  inv_x1 U280 ( .A(\in/data_tmp_r [4]), .Y(n252) );
  oai22_x1 U281 ( .A0(n226), .A1(n250), .B0(n225), .B1(n252), .Y(n121) );
  inv_x1 U282 ( .A(\in/data_tmp_r [3]), .Y(n254) );
  oai22_x1 U283 ( .A0(n226), .A1(n252), .B0(n225), .B1(n254), .Y(n120) );
  inv_x1 U284 ( .A(\in/data_tmp_r [2]), .Y(n256) );
  oai22_x1 U285 ( .A0(n226), .A1(n254), .B0(n225), .B1(n256), .Y(n119) );
  oai22_x1 U286 ( .A0(n226), .A1(n256), .B0(n225), .B1(n260), .Y(n118) );
  aoi2bb1_x1 U287 ( .A0N(n228), .A1N(n227), .B0(\in/state [1]), .Y(n232) );
  inv_x1 U288 ( .A(n229), .Y(n231) );
  oai22_x1 U289 ( .A0(n232), .A1(n238), .B0(n231), .B1(n230), .Y(n233) );
  nor3_x1 U290 ( .A(n234), .B(n147), .C(n233), .Y(n236) );
  mx2_x1 U291 ( .A0(n235), .A1(\in/state [0]), .S(n236), .Y(n117) );
  mxi2_x1 U292 ( .A0(n237), .A1(n240), .S(n236), .YN(n116) );
  nor3_x1 U293 ( .A(valid_rx), .B(n238), .C(n147), .Y(n239) );
  nand3_x1 U294 ( .A(n241), .B(n240), .C(n239), .Y(n259) );
  oai21_x1 U295 ( .A0(ready_rx), .A1(n242), .B0(n259), .Y(n115) );
  inv_x1 U296 ( .A(rx_byte[0]), .Y(n244) );
  inv_x1 U297 ( .A(\in/data_tmp_r [0]), .Y(n243) );
  oai22_x1 U298 ( .A0(n258), .A1(n244), .B0(n243), .B1(n259), .Y(n114) );
  inv_x1 U299 ( .A(rx_byte[7]), .Y(n245) );
  oai22_x1 U300 ( .A0(n246), .A1(n259), .B0(n258), .B1(n245), .Y(n113) );
  inv_x1 U301 ( .A(rx_byte[6]), .Y(n247) );
  oai22_x1 U302 ( .A0(n248), .A1(n259), .B0(n258), .B1(n247), .Y(n112) );
  inv_x1 U303 ( .A(rx_byte[5]), .Y(n249) );
  oai22_x1 U304 ( .A0(n250), .A1(n259), .B0(n258), .B1(n249), .Y(n111) );
  inv_x1 U305 ( .A(rx_byte[4]), .Y(n251) );
  oai22_x1 U306 ( .A0(n252), .A1(n259), .B0(n258), .B1(n251), .Y(n110) );
  inv_x1 U307 ( .A(rx_byte[3]), .Y(n253) );
  oai22_x1 U308 ( .A0(n254), .A1(n259), .B0(n258), .B1(n253), .Y(n109) );
  inv_x1 U309 ( .A(rx_byte[2]), .Y(n255) );
  oai22_x1 U310 ( .A0(n256), .A1(n259), .B0(n258), .B1(n255), .Y(n108) );
  inv_x1 U311 ( .A(rx_byte[1]), .Y(n257) );
  oai22_x1 U312 ( .A0(n260), .A1(n259), .B0(n258), .B1(n257), .Y(n107) );
endmodule

