`timescale 1ns / 1ps

// main mix columns module
module mixcolumns(
	input logic clk,
	input logic [127:0] din,
	output logic [127:0] dout);

	logic [31:0] d1,d2,d3,d4;
	logic [31:0] n1out, n2out, n3out, n4out;

	assign d1 = din[127:96];
	assign d2 = din[95:64];
	assign d3 = din[63:32];
	assign d4 = din[31:0];

	// 4 * 32 bit instantiations = 128 bits
	mul_32 m1 (clk, d1, n1out);
	mul_32 m2 (clk, d2, n2out);
	mul_32 m3 (clk, d3, n3out);
	mul_32 m4 (clk, d4, n4out);

	assign dout = {n1out, n2out, n3out, n4out};
endmodule

// sub modules
// 8-bit multiplication
module mul_2_xtime(clk, din, dout);
	input clk;
	input [7:0] din;
	output logic [7:0] dout;

	// XOR equation from FIPS 197
	// if bit 8 is set, XOR with irreducible polynomial 0x1b
	always@ (posedge clk)
		dout<={din[6:0],1'b0} ^ (8'h1b & {8{din[7]}});
endmodule

// 8-bit multiplication
module mul_3_ff(clk, din, dout);
	input clk;
	input [7:0] din;
	output [7:0] dout;
	logic [7:0] tout;

	mul_2_xtime m1(clk, din, tout);
	assign dout = tout^din;
endmodule

// 32-bit multiplication
module mul_32(clk, ddin, ddout);
	input clk;
	input [31:0] ddin;
	output [31:0] ddout;

	// internal, intermediate signals
	logic [7:0] t1,t2,t3,t4;
	logic [7:0] ma0,ma1,ma2,ma3;
	logic [7:0] m2out1,m2out2,m2out3,m2out4;
	logic [7:0] m3out1,m3out2,m3out3,m3out4;

	assign t1 = ddin[31:24];
	assign t2 = ddin[23:16];
	assign t3 = ddin[15:8];
	assign t4 = ddin[7:0];

	// 4 * 8 bit instantiations = 32 bits
	//begin
		mul_2_xtime m1 (clk, t1, m2out1);
		mul_2_xtime m2 (clk, t2, m2out2);
		mul_2_xtime m3 (clk, t3, m2out3);
		mul_2_xtime m4 (clk, t4, m2out4);

		mul_3_ff m5 (clk, t1, m3out1);
		mul_3_ff m6 (clk, t2, m3out2);
		mul_3_ff m7 (clk, t3, m3out3);
		mul_3_ff m8 (clk, t4, m3out4);
	//end

	// XOR equations from FIPS 197
	assign ma0 = m2out1 ^ m3out2 ^ t3 ^ t4;
	assign ma1 = t1 ^ m2out2 ^ m3out3 ^ t4;
	assign ma2 = t1 ^ t2 ^ m2out3 ^ m3out4;
	assign ma3 = m3out1 ^ t2 ^ t3 ^ m2out4;

	assign ddout = {ma0, ma1, ma2, ma3};
endmodule





