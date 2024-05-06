`timescale 1ns / 1ps

// Full testbench of AES and UART
module full_tb();
		logic clk;
    		logic [127:0] key;
    		logic sig_rx;
    		logic ready_rx;
		logic rst_rx;
		logic [127:0] dout;

    // instantiate full
	full dut(
	.clk(clk),
	.key(key),
	.sig_rx(sig_rx),
	.ready_rx(ready_rx),
	.rst_rx(rst_rx),
	.dout(dout)
	);

    // clk gen
    // 1 cycle = 10 time units
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // toggle every 5 time units
    end

	
	//din = 128'h01234567890123456789012345678901;
        //key = 128'h00000000009876543210987654321098;
int index = 0;
localparam DATA_WIDTH = 8;
   localparam BAUD_RATE  = 115200;
   localparam CLK_FREQ   = 100_000_000;
localparam PULSE_WIDTH   = CLK_FREQ / BAUD_RATE;
 //logic data[127:0] = 128'h01234567890123456789012345678901;
 logic [7:0] data_transfer;
 logic [7:0] data [0:16] = '{8'h11, 8'h01, 8'h23, 8'h45, 8'h67, 8'h89, 8'h01, 8'h23, 8'h45, 8'h67, 8'h89, 8'h01, 8'h23, 8'h45, 8'h67, 8'h89, 8'h01};
 initial begin
      	key = 128'h00000000009876543210987654321098;

	sig_rx   = 1;
      	ready_rx = 0;
	rst_rx = 1;
    
	repeat(100) @(posedge clk);
      		rst_rx       = 0;

      	repeat(100) @(posedge clk);
      		rst_rx       = 1;



      	for(int i = 16; i >= 0; i--) begin

         	data_transfer = data[i];
         	for(index = -1; index <= DATA_WIDTH; index++) begin
            		case(index)
              			-1:         sig_rx = 0;
              			DATA_WIDTH: sig_rx = 1;
              			default:    sig_rx = data_transfer[index];
            		endcase

            		repeat(PULSE_WIDTH) @(posedge clk);
         	end

         	repeat(100) @(posedge clk);


         	repeat($urandom_range(PULSE_WIDTH/2, PULSE_WIDTH)) @(posedge clk);
         		ready_rx = 1;

         		repeat(1) @(posedge clk);
         		ready_rx = 0;
      
	end	
	#3000000;
	$finish;
   end

    // monitor n display
    //always @(posedge clk) begin
    //    $display("Time=%0t din=%h key=%p dout=%h", $time, data, key, dout);
    //end

endmodule
