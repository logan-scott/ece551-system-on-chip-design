`timescale 1ns/10ps
module test;
  reg [11:0] address   = 'h000;
  reg [15:0] data_in = 'h0000;
  wire [15:0] data_out;
  reg write_enable = 0;
  reg read_enable  = 0;

  SRAM c1 (address, data_in, write_enable, read_enable, data_out);
  
  initial begin
	address = 'hcf9;
	data_in = 'hfe58;
	#5
	write_enable = 1;
	read_enable  = 0;
	#5
	write_enable = 0;
	read_enable  = 1;
	#5
	address = 'hcff;
	data_in = 'hfe48;
	#5
	write_enable = 1;
	read_enable  = 0;
	#5
	write_enable = 0;
	read_enable  = 1;
	#5
	address = 'hcf9;
	#5
	write_enable = 0;
	read_enable  = 1;
	#5
	address = 'hcff;
  end // initial begin
endmodule // test
