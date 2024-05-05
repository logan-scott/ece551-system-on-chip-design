set search_path ". ./rtl /research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library"
set link_library "/research/pdk/cmos10lpe_pdk/cmos10lpe_stdlib/stdlib_char/generated/library/stdlib_10lpe_ccs_comb.db"
set target_library "stdlib_10lpe_ccs_comb.db"
set symbol_library "dw_foundation.sldb"

read_file -format sverilog {/home/mbowlby/ece551/UART/SystemVerilog-UART/rtl/rx_to_aes.sv}
analyze -library WORK -format sverilog {rx_to_aes.sv}
elaborate rx_to_aes
link

check_design

create_clock -name "clk" -period 10 -waveform { 0 5  }  { clk  }
define_design_lib WORK -path "./work"

compile_ultra

write -f verilog -h -o rx_to_aes_glnet.v
write_sdf rx_to_aes.sdf
write_sdc rx_to_aes.sdc
