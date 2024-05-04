module top_module(
    input logic clk, rstn, valid_c1_tx, valid_c2_tx, 
    input logic[7:0] data_c1_tx, data_c2_tx,
    output logic valid_c1_rx, valid_c2_rx,
    output logic[7:0] data_c1_rx, data_c2_rx
);

logic sig_c1, ready_c1;
logic sig_c2, ready_c2;

uart uart_port_1(
    .clk(clk),
    .rstn(rstn),

    .valid_tx(~valid_c1_tx),
    .sig_tx(sig_c1),
    .data_tx(data_c1_tx),
    .ready_tx(ready_c1),

    .sig_rx(sig_c2),
    .data_rx(data_c2_rx),
    .valid_rx(valid_c2_rx),
    .ready_rx(ready_c2)
);

uart uart_port_2(
    .clk(clk),
    .rstn(rstn),

    .valid_tx(~valid_c2_tx),
    .sig_tx(sig_c2),
    .data_tx(data_c2_tx),
    .ready_tx(ready_c2),

    .sig_rx(sig_c1),
    .data_rx(data_c1_rx),
    .valid_rx(valid_c1_rx),
    .ready_rx(ready_c1)
);

endmodule