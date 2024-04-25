`timescale 1ns / 1ps

// AES testbench
module aes_tb;
    logic clk;
    logic [127:0] din;
    logic [127:0] key;
    logic [127:0] dout;

    // instantiate AES module
    aes dut (
        .clk(clk),
        .din(din),
        .key(key),
        .dout(dout)
    );

    // clk gen
    // 1 cycle = 10 time units
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // toggle every 5 time units
    end

    // stimulus for AES
    initial begin
        // first test inputs
        din = 128'h0123456789ABCDEF0123456789ABCDEF;
        key = 128'h00112233445566778899aabbccddeeff;
        // encrypted output: 363eff6cde1adea8b244ad2e3c4ebdc8

        // wait 12 cycles for good measure
        #120;

        // second test inputs - swap din and key
        din = 128'h00112233445566778899aabbccddeeff;
        key = 128'h0123456789ABCDEF0123456789ABCDEF;
        // encrypted output: c0ea267917f34bf3616e3a50d8c3c507

        // wait
        #120;

        // third test inputs - new din, old key
        din = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
        key = 128'h00112233445566778899aabbccddeeff;
        // encrypted output: f47a9849bb3e509b09067ec2cac74ddb

        // wait and finish
        #120;
        $finish;
    end

    // monitor n display
    always @(posedge clk) begin
        $display("Time=%0t din=%h key=%h dout=%h", $time, din, key, dout);
    end

endmodule
