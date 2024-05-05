/*
 The MIT License (MIT)

 Copyright (c) 2019 Yuya Kudo.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/

timeunit 1ns;
timeprecision 1ns;

module uart_tx_tb();
   localparam DATA_WIDTH = 8;
   localparam BAUD_RATE  = 115200;
   localparam CLK_FREQ   = 100_000_000;

   logic                  sig_tx;
   logic [DATA_WIDTH-1:0] data_tx;
   logic                  valid_tx;
   logic                  ready_tx;
   logic                 clk, rstn;

   //-----------------------------------------------------------------------------
   // clock generater
   localparam CLK_PERIOD = 1_000_000_000 / CLK_FREQ;

   initial begin
      clk = 1'b0;
      forever #5 clk = ~clk;
   end

   //-----------------------------------------------------------------------------
   // DUT connection
   uart_tx dut(.*);

   //-----------------------------------------------------------------------------
   // test scenario
   localparam LB_DATA_WIDTH = $clog2(DATA_WIDTH);
   localparam PULSE_WIDTH   = CLK_FREQ / BAUD_RATE;

   logic [DATA_WIDTH-1:0] data;

   int                    index    = 0;
   int                    success  = 1;
   int                    end_flag = 0;

   initial begin
      // in    = 0;
      @(negedge clk);
      #1;
      valid_tx = 0;
      rstn  = 0;

      repeat(10) @(posedge clk);
      rstn  = 1;
      data = $urandom_range(0, 2**DATA_WIDTH-1);

      while(!end_flag) begin

         while(!ready_tx) @(posedge clk);
         data_tx  = data;
         valid_tx = 1;

         while(ready_tx)  @(posedge clk);
         valid_tx = 0;

         repeat(PULSE_WIDTH / 2) @(posedge clk);
         for(index = -1; index <= DATA_WIDTH; index++) begin
            case(index)
              -1:         if(sig_tx != 0)           success = 0;
              DATA_WIDTH: if(sig_tx != 1)           success = 0;
              default:    if(sig_tx != data[index]) success = 0;
            endcase

            repeat(PULSE_WIDTH) @(posedge clk);
         end

         // if(data == $pow(2, DATA_WIDTH)-1) begin
         //    end_flag = 1;
         // end
         // else begin
         //    data++;
         // end
         end_flag = 1;

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