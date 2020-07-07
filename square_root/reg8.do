vlib work
vmap work

vcom reg8.vhdl

vsim reg8_tb

add wave data_in_signal
add wave clk_signal
add wave enable_signal
add wave data_out_signal

view wave 
run 20 ns
wave zoom full
