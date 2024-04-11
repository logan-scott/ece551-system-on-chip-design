`timescale 1ns / 1ps

module addroundkey(
    input logic clk,
    input logic [127:0] din,
    input logic [127:0] key,
    output logic [127:0] dout);

    logic [127:0] subbytes_out, shiftrows_out, mixcols_out; 

    // AES round operations
    subbytes a1(clk, din, subbytes_out);
    shiftrows a2(clk,subbytes_out,shiftrows_out);
    mixcolumns a3(clk,shiftrows_out,mixcols_out);
    
    // XOR with key (actual add round key)
    assign dout = mixcols_out^key;
endmodule

module finalround(
    input logic clk,
    input logic [127:0]din,
    input logic [127:0]key,
    output logic [127:0] dout);

    logic [127:0] subbytes_out, shiftrows_out;

    // AES round operations, no mix columns or add round key in final round
    subbytes s1(clk, din, subbytes_out);
    shiftrows s2(clk, subbytes_out, shiftrows_out);
    assign dout = shiftrows_out^key;
endmodule

