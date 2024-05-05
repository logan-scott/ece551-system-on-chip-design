set search_path ". ./rtl /research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library"
set link_library "/research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library/stdlib_10lpe_ccs_comb.db"
set target_library "stdlib_10lpe_ccs_comb.db"
set symbol_library "dw_foundation.sldb"

read_file -format sverilog {/home/mbowlby/ece551/UART/SystemVerilog-UART/rtl/uart_rx.sv}
analyze -library WORK -format sverilog {uart_rx.sv}
elaborate uart_rx
link

check_design

create_clock -name "clk" -period 10 -waveform { 0 5  }  { clk  }
define_design_lib WORK -path "./work"

compile_ultra

write -f verilog -h -o uart_rx_glnet.v
write_sdf uart_rx.sdf
write_sdc uart_rx.sdc
