set search_path ". /research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library"
set link_library "/research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library/stdlib_10lpe_ccs_comb.db"
set target_library "stdlib_10lpe_ccs_comb.db"
set symbol_library "dw_foundation.sldb"

read_file -format sverilog {/home/mbowlby/ece551/UART/SystemVerilog-UART/rtl/uart_tx.sv}
analyze -library WORK -format sverilog {uart_tx.sv}
elaborate uart_tx
link

check_design

create_clock -name "clk" -period 10 -waveform { 0 5  }  { clk  }
define_design_lib WORK -path "./work"

compile_ultra

write -f verilog -h -o uart_tx_glnet.v
write_sdf uart_tx.sdf
write_sdc uart_tx.sdc
