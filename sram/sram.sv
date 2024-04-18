parameter width = 16;
parameter address_w = 12;
module SRAM (
    input logic [address_w-1:0] address,      // Address bus (12 bits)
    input logic [width-1:0] data_in,      // Data input bus (16 bits)
    input logic write_enable,        // Write enable signal
    input logic read_enable,         // Read enable signal
    output logic [width-1:0] data_out     // Data output bus (16 bits)
);

    // Internal memory array declaration
    logic [width-1:0] memory [0:2**address_w-1];    // 12x16 SRAM array (4096 words of 16 bits each)

    // Read operation
    always_comb begin
        if (read_enable)
            data_out = memory[address];
        else
            data_out = 'z; // Tri-state output when read is disabled
    end

    // Write operation
    always_ff @(posedge write_enable) begin
        if (write_enable)
            memory[address] <= data_in;
    end

endmodule
