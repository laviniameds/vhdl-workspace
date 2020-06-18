vlib work
vmap work

vcom mux2to1.vhdl
vcom mux8to1.vhdl
vcom fa2.vhdl
vcom fs2.vhdl
vcom and2.vhdl
vcom and3.vhdl
vcom xor2.vhdl
vcom not2.vhdl
vcom or2.vhdl
vcom cell.vhdl

vsim cell_tb

add wave a_signal
add wave b_signal
add wave cin_signal
add wave sel_signal
add wave cout_signal
add wave s_signal

view wave 
run 100 ns
wave zoom full
