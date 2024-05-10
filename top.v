module top(clk, rst_rx, write_en, ready_rx,
           sig_rx, key, dout);

    input clk;
    input rst_rx;
    input ready_rx;
    input sig_rx;
    input write_en;
    input [127:0] key;
    output[127:0] dout;
    wire [3:0] address;
    wire [127:0] key_bits;
    wire read_sig;



    full full_insance(.clk(clk), .sig_rx(sig_rx), .rst_rx(rst_rx), .ready_rx(ready_rx), .addr(address), .sram_data(key_bits), .dout(dout), .read_sig(read_sig));
sram_compiled_array sram_instance(.addr0(address[0]),.addr1(address[1]),.addr2(address[2]),.addr3(address[3]),.din0(key[0]), .din1(key[1]), .din2(key[2]), .din3(key[3]), .din4(key[4]), .din5(key[5]), .din6(key[6]), .din7(key[7]), .din8(key[8]), .din9(key[9]), .din10(key[10]), .din11(key[11]), .din12(key[12]), .din13(key[13]), .din14(key[14]), .din15(key[15]), .din16(key[16]), .din17(key[17]), .din18(key[18]), .din19(key[19]), .din20(key[20]), .din21(key[21]), .din22(key[22]), .din23(key[23]), .din24(key[24]), .din25(key[25]), .din26(key[26]), .din27(key[27]), .din28(key[28]), .din29(key[29]), .din30(key[30]), .din31(key[31]), .din32(key[32]), .din33(key[33]), .din34(key[34]), .din35(key[35]), .din36(key[36]), .din37(key[37]), .din38(key[38]), .din39(key[39]), .din40(key[40]), .din41(key[41]), .din42(key[42]), .din43(key[43]), .din44(key[44]), .din45(key[45]), .din46(key[46]), .din47(key[47]), .din48(key[48]), .din49(key[49]), .din50(key[50]), .din51(key[51]), .din52(key[52]), .din53(key[53]), .din54(key[54]), .din55(key[55]), .din56(key[56]), .din57(key[57]), .din58(key[58]), .din59(key[59]), .din60(key[60]), .din61(key[61]), .din62(key[62]), .din63(key[63]), .din64(key[64]), .din65(key[65]), .din66(key[66]), .din67(key[67]), .din68(key[68]), .din69(key[69]), .din70(key[70]), .din71(key[71]), .din72(key[72]), .din73(key[73]), .din74(key[74]), .din75(key[75]), .din76(key[76]), .din77(key[77]), .din78(key[78]), .din79(key[79]), .din80(key[80]), .din81(key[81]), .din82(key[82]), .din83(key[83]), .din84(key[84]), .din85(key[85]), .din86(key[86]), .din87(key[87]), .din88(key[88]), .din89(key[89]), .din90(key[90]), .din91(key[91]), .din92(key[92]), .din93(key[93]), .din94(key[94]), .din95(key[95]), .din96(key[96]), .din97(key[97]), .din98(key[98]), .din99(key[99]), .din100(key[100]), .din101(key[101]), .din102(key[102]), .din103(key[103]), .din104(key[104]), .din105(key[105]), .din106(key[106]), .din107(key[107]), .din108(key[108]), .din109(key[109]), .din110(key[110]), .din111(key[111]), .din112(key[112]), .din113(key[113]), .din114(key[114]), .din115(key[115]), .din116(key[116]), .din117(key[117]), .din118(key[118]), .din119(key[119]), .din120(key[120]), .din121(key[121]), .din122(key[122]), .din123(key[123]), .din124(key[124]), .din125(key[125]), .din126(key[126]), .din127(key[127]), .dout0(key_bits[0]), .dout1(key_bits[1]), .dout2(key_bits[2]), .dout3(key_bits[3]), .dout4(key_bits[4]), .dout5(key_bits[5]), .dout6(key_bits[6]), .dout7(key_bits[7]), .dout8(key_bits[8]), .dout9(key_bits[9]), .dout10(key_bits[10]), .dout11(key_bits[11]), .dout12(key_bits[12]), .dout13(key_bits[13]), .dout14(key_bits[14]), .dout15(key_bits[15]), .dout16(key_bits[16]), .dout17(key_bits[17]), .dout18(key_bits[18]), .dout19(key_bits[19]), .dout20(key_bits[20]), .dout21(key_bits[21]), .dout22(key_bits[22]), .dout23(key_bits[23]), .dout24(key_bits[24]), .dout25(key_bits[25]), .dout26(key_bits[26]), .dout27(key_bits[27]), .dout28(key_bits[28]), .dout29(key_bits[29]), .dout30(key_bits[30]), .dout31(key_bits[31]), .dout32(key_bits[32]), .dout33(key_bits[33]), .dout34(key_bits[34]), .dout35(key_bits[35]), .dout36(key_bits[36]), .dout37(key_bits[37]), .dout38(key_bits[38]), .dout39(key_bits[39]), .dout40(key_bits[40]), .dout41(key_bits[41]), .dout42(key_bits[42]), .dout43(key_bits[43]), .dout44(key_bits[44]), .dout45(key_bits[45]), .dout46(key_bits[46]), .dout47(key_bits[47]), .dout48(key_bits[48]), .dout49(key_bits[49]), .dout50(key_bits[50]), .dout51(key_bits[51]), .dout52(key_bits[52]), .dout53(key_bits[53]), .dout54(key_bits[54]), .dout55(key_bits[55]), .dout56(key_bits[56]), .dout57(key_bits[57]), .dout58(key_bits[58]), .dout59(key_bits[59]), .dout60(key_bits[60]), .dout61(key_bits[61]), .dout62(key_bits[62]), .dout63(key_bits[63]), .dout64(key_bits[64]), .dout65(key_bits[65]), .dout66(key_bits[66]), .dout67(key_bits[67]), .dout68(key_bits[68]), .dout69(key_bits[69]), .dout70(key_bits[70]), .dout71(key_bits[71]), .dout72(key_bits[72]), .dout73(key_bits[73]), .dout74(key_bits[74]), .dout75(key_bits[75]), .dout76(key_bits[76]), .dout77(key_bits[77]), .dout78(key_bits[78]), .dout79(key_bits[79]), .dout80(key_bits[80]), .dout81(key_bits[81]), .dout82(key_bits[82]), .dout83(key_bits[83]), .dout84(key_bits[84]), .dout85(key_bits[85]), .dout86(key_bits[86]), .dout87(key_bits[87]), .dout88(key_bits[88]), .dout89(key_bits[89]), .dout90(key_bits[90]), .dout91(key_bits[91]), .dout92(key_bits[92]), .dout93(key_bits[93]), .dout94(key_bits[94]), .dout95(key_bits[95]), .dout96(key_bits[96]), .dout97(key_bits[97]), .dout98(key_bits[98]), .dout99(key_bits[99]), .dout100(key_bits[100]), .dout101(key_bits[101]), .dout102(key_bits[102]), .dout103(key_bits[103]), .dout104(key_bits[104]), .dout105(key_bits[105]), .dout106(key_bits[106]), .dout107(key_bits[107]), .dout108(key_bits[108]), .dout109(key_bits[109]), .dout110(key_bits[110]), .dout111(key_bits[111]), .dout112(key_bits[112]), .dout113(key_bits[113]), .dout114(key_bits[114]), .dout115(key_bits[115]), .dout116(key_bits[116]), .dout117(key_bits[117]), .dout118(key_bits[118]), .dout119(key_bits[119]), .dout120(key_bits[120]), .dout121(key_bits[121]), .dout122(key_bits[122]), .dout123(key_bits[123]), .dout124(key_bits[124]), .dout125(key_bits[125]), .dout126(key_bits[126]), .dout127(key_bits[127]), .clk(clk),.write_en(write_en),.sense_en(read_sig));

endmodule
