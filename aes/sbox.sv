module sbox(input logic [7:0] data_in,
            output logic [7:0] data_out);

    logic [7:0] rot1, rot2, rot3, rot4;

    rsl rot_1 (.data_in (in), 3'h1 (rot), .rot1 (out));
    rsl rot_2 (.data_in (in), 3'h2 (rot), .rot2 (out));
    rsl rot_3 (.data_in (in), 3'h3 (rot), .rot3 (out));
    rsl rot_4 (.data_in (in), 3'h4 (rot), .rot4 (out));

    always_comb begin
        data_out = data_in ^ (rot1) ^ (rot2) ^ (rot3) ^ (rot4) ^ 8'h63;
    end 


endmodule //sbox

module rsl (input logic [7:0] in,
            input logic [2:0] rot,
            output logic [7:0] out);
    parameter WIDTH = 8;

    always_comb begin
        out = (in << (rot % WIDTH)) | (A >> (WIDTH - (B % WIDTH)));
    end

endmodule //rsl