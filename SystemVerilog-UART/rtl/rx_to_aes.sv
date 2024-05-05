module rx_to_aes (input  logic sig_rx,
    		input  logic ready_rx,
		output logic [127:0] data,
		output logic valid_rx,
		output logic full_rx,
    		input  logic clk,
    		input  logic rst_rx,
		output logic [7:0] rx_byte);
		//input logic rst);

	//logic [7:0] rx_byte;
	logic [4:0] count;
	logic valid, valid2;

	assign valid = ~valid_rx;
	assign valid2 = ~valid;

	uart_rx in (.sig_rx (sig_rx), .ready_rx (ready_rx), .data_rx (rx_byte), .valid_rx (valid_rx), .clk (clk), .rstn (rst_rx));


	always_ff @(posedge valid2, negedge rst_rx) begin
	    if (!rst_rx) begin
	        data <= 0;
		count <= 0;
  	    end
	    else begin
	        data <= {rx_byte, data[127:8]};
		count <= count + 1;
	    end
	end

	

	always_comb begin
	    if (count >= 16)
		full_rx = 1;
	    else
		full_rx = 0;
	end

	

endmodule

