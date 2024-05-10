`timescale 1ns/10ps
module test;
  reg [2:0] addr;
  reg clk 	= 0;
  	reg din0;
	reg din1;
	reg din2;
	reg din3;
	reg din4;
	reg din5;
	reg din6;
	reg din7;
	reg din8;
	reg din9;
	reg din10;
	reg din11;
	reg din12;
	reg din13;
	reg din14;
	reg din15;
	reg din16;
	reg din17;
	reg din18;
	reg din19;
	reg din20;
	reg din21;
	reg din22;
	reg din23;
	reg din24;
	reg din25;
	reg din26;
	reg din27;
	reg din28;
	reg din29;
	reg din30;
	reg din31;
	reg din32;
	reg din33;
	reg din34;
	reg din35;
	reg din36;
	reg din37;
	reg din38;
	reg din39;
	reg din40;
	reg din41;
	reg din42;
	reg din43;
	reg din44;
	reg din45;
	reg din46;
	reg din47;
	reg din48;
	reg din49;
	reg din50;
	reg din51;
	reg din52;
	reg din53;
	reg din54;
	reg din55;
	reg din56;
	reg din57;
	reg din58;
	reg din59;
	reg din60;
	reg din61;
	reg din62;
	reg din63;
	reg din64;
	reg din65;
	reg din66;
	reg din67;
	reg din68;
	reg din69;
	reg din70;
	reg din71;
	reg din72;
	reg din73;
	reg din74;
	reg din75;
	reg din76;
	reg din77;
	reg din78;
	reg din79;
	reg din80;
	reg din81;
	reg din82;
	reg din83;
	reg din84;
	reg din85;
	reg din86;
	reg din87;
	reg din88;
	reg din89;
	reg din90;
	reg din91;
	reg din92;
	reg din93;
	reg din94;
	reg din95;
	reg din96;
	reg din97;
	reg din98;
	reg din99;
	reg din100;
	reg din101;
	reg din102;
	reg din103;
	reg din104;
	reg din105;
	reg din106;
	reg din107;
	reg din108;
	reg din109;
	reg din110;
	reg din111;
	reg din112;
	reg din113;
	reg din114;
	reg din115;
	reg din116;
	reg din117;
	reg din118;
	reg din119;
	reg din120;
	reg din121;
	reg din122;
	reg din123;
	reg din124;
	reg din125;
	reg din126;
	reg din127;
  wire [127:0] key;
  reg write_en  = 0;
  reg sense_en = 0;
  reg rst;
	sram_fetch c1 (clk,write_en,sense_en,key,din0,din1,din2,din3,din4,din5,din6,din7,din8,din9,din10,din11,din12,din13,din14,din15,din16,din17,din18,din19,din20,din21,din22,din23,din24,din25,din26,din27,din28,din29,din30,din31,din32,din33,din34,din35,din36,din37,din38,din39,din40,din41,din42,din43,din44,din45,din46,din47,din48,din49,din50,din51,din52,din53,din54,din55,din56,din57,din58,din59,din60,din61,din62,din63,din64,din65,din66,din67,din68,din69,din70,din71,din72,din73,din74,din75,din76,din77,din78,din79,din80,din81,din82,din83,din84,din85,din86,din87,din88,din89,din90,din91,din92,din93,din94,din95,din96,din97,din98,din99,din100,din101,din102,din103,din104,din105,din106,din107,din108,din109,din110,din111,din112,din113,din114,din115,din116,din117,din118,din119,din120,din121,din122,din123,din124,din125,din126,din127,addr,rst);
  
    always 
    #2 clk = !clk;
	
  
  initial begin
	rst = 0;
	#12
	rst = 0;
	#12
	write_en = 0;
	addr = 0;
	#8
	{din0,din1,din2,din3,din4,din5,din6,din7,din8,din9,din10,din11,din12,din13,din14,din15,din16,din17,din18,din19,din20,din21,din22,din23,din24,din25,din26,din27,din28,din29,din30,din31,din32,din33,din34,din35,din36,din37,din38,din39,din40,din41,din42,din43,din44,din45,din46,din47,din48,din49,din50,din51,din52,din53,din54,din55,din56,din57,din58,din59,din60,din61,din62,din63,din64,din65,din66,din67,din68,din69,din70,din71,din72,din73,din74,din75,din76,din77,din78,din79,din80,din81,din82,din83,din84,din85,din86,din87,din88,din89,din90,din91,din92,din93,din94,din95,din96,din97,din98,din99,din100,din101,din102,din103,din104,din105,din106,din107,din108,din109,din110,din111,din112,din113,din114,din115,din116,din117,din118,din119,din120,din121,din122,din123,din124,din125,din126,din127} = 'h0123456789abcdef0123456789abcdef;
	#8
	write_en = 1;
	#256
	write_en = 0;
	#128
	addr = 0;
	#128
	sense_en  = 1;
	#128
	sense_en = 0;
	#128
	addr = 'b001;
	#8
	{din0,din1,din2,din3,din4,din5,din6,din7,din8,din9,din10,din11,din12,din13,din14,din15,din16,din17,din18,din19,din20,din21,din22,din23,din24,din25,din26,din27,din28,din29,din30,din31,din32,din33,din34,din35,din36,din37,din38,din39,din40,din41,din42,din43,din44,din45,din46,din47,din48,din49,din50,din51,din52,din53,din54,din55,din56,din57,din58,din59,din60,din61,din62,din63,din64,din65,din66,din67,din68,din69,din70,din71,din72,din73,din74,din75,din76,din77,din78,din79,din80,din81,din82,din83,din84,din85,din86,din87,din88,din89,din90,din91,din92,din93,din94,din95,din96,din97,din98,din99,din100,din101,din102,din103,din104,din105,din106,din107,din108,din109,din110,din111,din112,din113,din114,din115,din116,din117,din118,din119,din120,din121,din122,din123,din124,din125,din126,din127} = 'h01234567890123456789abcdefabcdef;
	#8
	write_en = 1;
	#8
	write_en = 0;
	#8
	addr = 'b000;
	#128
	sense_en  = 1;
	#128
	addr = 'b001;
	#128
	addr = 'b010;
	#128
	addr = 'b011;
	#128
	addr = 'b100;
	#128
	addr = 'b101;
	#128
	addr = 'b110;
	#128
	addr = 'b111;
  end // initial begin
endmodule // test
