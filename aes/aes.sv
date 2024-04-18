`timescale 1ns / 1ps

module aes(clk, din, key, dout);
    input logic clk;
    input logic [127:0] din;
    input logic [127:0] key;
    output logic [127:0] dout;

    // internal signals for key expansion and AES rounds
    logic [127:0] key_s,key_s0,key_s1,key_s2,key_s3,key_s4,key_s5,key_s6,key_s7,key_s8,key_s9;
    logic [127:0] r_dout,r0_dout,r1_dout,r2_dout,r3_dout,r4_dout,r5_dout,r6_dout,r7_dout,r8_dout,r9_dout;

    assign r_dout = din ^ key_s;

    // key expansion then 10 rounds of AES
    // give same clk to all modules
    keyexpansion a0(clk,key, key_s,key_s0,key_s1,key_s2,key_s3,key_s4,key_s5,key_s6,key_s7,key_s8,key_s9);
    addroundkey r0(clk,r_dout,key_s0,r0_dout);
    addroundkey r1(clk,r0_dout,key_s1,r1_dout);
    addroundkey r2(clk,r1_dout,key_s2,r2_dout);
    addroundkey r3(clk,r2_dout,key_s3,r3_dout);
    addroundkey r4(clk,r3_dout,key_s4,r4_dout);
    addroundkey r5(clk,r4_dout,key_s5,r5_dout);
    addroundkey r6(clk,r5_dout,key_s6,r6_dout);
    addroundkey r7(clk,r6_dout,key_s7,r7_dout);
    addroundkey r8(clk,r7_dout,key_s8,r8_dout);
    finalround r9(clk,r8_dout,key_s9,r9_dout);

    assign dout = r9_dout;
endmodule
