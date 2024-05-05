`timescale 1ns / 1ps

module full(
		input logic clk,
    		input logic [127:0] key,
    		input logic sig_rx,
    		input  logic ready_rx,
		input  logic rst_rx,
		//output logic valid_rx,
		//output logic full_rx,
		//output logic [7:0] rx_byte,
		output logic [127:0] dout
	);

	// connecting output of UARt to plaintext input of AES
	logic [127:0] dout_uart;
	logic [127:0] din_aes;
	logic full_rx;


	rx_to_aes uart(
		.sig_rx(sig_rx),
		.ready_rx(ready_rx),
		.data(dout_uart),
		//.valid_rx(valid_rx),
		.full_rx(full_rx),
		.clk(clk),
		.rst_rx(rst_rx)
		//.rx_byte(rx_byte)
	);

	aes aes(
		.clk(clk),
		.din(din_aes),
		.key(key),
		.dout(dout)
	);

	always_ff @(posedge clk) begin
		if (full_rx) begin
			din_aes <= dout_uart;
		end
	end
	//assign din_aes = dout_uart;

endmodule
