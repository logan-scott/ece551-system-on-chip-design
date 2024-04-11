`timescale 1ns / 1ps

// subbytes module
module subbytes(clk,data,dout);
    input logic clk;
    input logic [127:0] data;
    output logic [127:0] dout;

    logic [127:0] outsbox;

    // substitute each byte with corresponding sbox value
    sbox s0(data[127:120], outsbox[127:120]);
    sbox s1(data[119:112], outsbox[119:112]);
    sbox s2(data[111:104], outsbox[111:104]);
    sbox s3(data[103:96], outsbox[103:96]);

    sbox s4(data[95:88], outsbox[95:88]);
    sbox s5(data[87:80], outsbox[87:80]);
    sbox s6(data[79:72], outsbox[79:72]);
    sbox s7(data[71:64], outsbox[71:64]);

    sbox s8(data[63:56], outsbox[63:56]);
    sbox s9(data[55:48], outsbox[55:48]);
    sbox s10(data[47:40], outsbox[47:40]);
    sbox s11(data[39:32], outsbox[39:32]);

    sbox s12(data[31:24], outsbox[31:24]);
    sbox s13(data[23:16], outsbox[23:16]);
    sbox s14(data[15:8], outsbox[15:8]);
    sbox s15(data[7:0], outsbox[7:0]);

    // output
    always@ (posedge clk)
    begin

        dout<=outsbox;
    end

endmodule
