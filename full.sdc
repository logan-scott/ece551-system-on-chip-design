###################################################################

# Created by write_sdc on Mon May  6 08:31:16 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 40  -waveform {0 20}
set_clock_gating_check -rise -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_sig_q_reg@main_gate]
set_clock_gating_check -fall -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_sig_q_reg@main_gate]
set_clock_gating_check -rise -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_sig_q_reg@main_gate]
set_clock_gating_check -fall -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_sig_q_reg@main_gate]
set_clock_gating_check -rise -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_clk_cnt_reg@main_gate]
set_clock_gating_check -fall -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_clk_cnt_reg@main_gate]
set_clock_gating_check -rise -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_clk_cnt_reg@main_gate]
set_clock_gating_check -fall -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_clk_cnt_reg@main_gate]
set_clock_gating_check -rise -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_tmp_r_reg@main_gate]
set_clock_gating_check -fall -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_tmp_r_reg@main_gate]
set_clock_gating_check -rise -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_tmp_r_reg@main_gate]
set_clock_gating_check -fall -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_tmp_r_reg@main_gate]
set_clock_gating_check -rise -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_cnt_reg@main_gate]
set_clock_gating_check -fall -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_cnt_reg@main_gate]
set_clock_gating_check -rise -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_cnt_reg@main_gate]
set_clock_gating_check -fall -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_cnt_reg@main_gate]
set_clock_gating_check -rise -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_r_reg@main_gate]
set_clock_gating_check -fall -setup 0 [get_cells -hsc @                        \
uart/in/clk_gate_data_r_reg@main_gate]
set_clock_gating_check -rise -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_r_reg@main_gate]
set_clock_gating_check -fall -hold 0 [get_cells -hsc @                         \
uart/in/clk_gate_data_r_reg@main_gate]
set_clock_gating_check -rise -setup 0 [get_cells clk_gate_din_aes_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells clk_gate_din_aes_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells clk_gate_din_aes_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells clk_gate_din_aes_reg/main_gate]
