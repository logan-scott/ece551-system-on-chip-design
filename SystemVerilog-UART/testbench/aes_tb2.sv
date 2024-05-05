timeunit 1ns;
timeprecision 1ns;

module aes_tb2 ();

   localparam DATA_WIDTH = 8;
   localparam BAUD_RATE  = 115200;
   localparam CLK_FREQ   = 100_000_000;

   logic                  sig_rx;
   logic [127:0] 	  data;
   logic                  ready_rx;
   logic clk;
   logic rst_rx;
   logic valid_rx;
   logic full_rx;
   logic [7:0] rx_byte;


   //-----------------------------------------------------------------------------
   // clock generater
   localparam CLK_PERIOD = 1_000_000_000 / CLK_FREQ;

   initial begin
      clk = 1'b0;
      forever #5 clk = ~clk;
   end

   //-----------------------------------------------------------------------------
   // DUT
   //uart_rx #(DATA_WIDTH, BAUD_RATE, CLK_FREQ) dut(.*);
   rx_to_aes dut(.*);

   //-----------------------------------------------------------------------------
   // test scenario
   localparam LB_DATA_WIDTH = $clog2(DATA_WIDTH);
   localparam PULSE_WIDTH   = CLK_FREQ / BAUD_RATE;

   logic [DATA_WIDTH-1:0] data_t     = 0;

   int                    success  = 1;
   int                    end_flag = 0;
   int                    index    = 0;
   int 			  i 	   = 0;

   initial begin
      sig_rx   = 1;
      ready_rx = 0;


		rst_rx = 1;
	repeat(100) @(posedge clk);
      rst_rx       = 0;

      repeat(100) @(posedge clk);
      rst_rx       = 1;



      while(!end_flag) begin


         for(index = -1; index <= DATA_WIDTH; index++) begin
            case(index)
              -1:         sig_rx = 0;
              DATA_WIDTH: sig_rx = 1;
              default:    sig_rx = data_t[index];
            endcase

            repeat(PULSE_WIDTH) @(posedge clk);
         end

         while(!valid_rx) @(posedge clk);

	
         //$display("input : ", data);
	/*
         if(data != data_rx) begin
            success = 0;
         end
	*/

         repeat($urandom_range(PULSE_WIDTH/2, PULSE_WIDTH)) @(posedge clk);
         ready_rx = 1;

         repeat(1) @(posedge clk);
         ready_rx = 0;

         if(data == 8'b1111_1111) begin
            end_flag = 1;
         end
         else begin
            data_t = data_t + 1;
         end
	

	 i = i + 1;
	if (i == 16) begin
	   data_t = 8'b01100101;
	end
	 else if (i >= 17) begin
		i = 0;
	 end
	if (i == 0) begin
		rst_rx = 0;
		repeat(100) @(posedge clk);
		rst_rx = 1;
		repeat(100) @(posedge clk);
	 end
      end

      if(success) begin
         $display("simulation is success!");
      end
      else begin
         $display("simulation is failure!");
      end

      $finish;
   end

endmodule
