##pynq Timing

# define clock and period

# Create a virtual clock for IO constraints

#input delay


#output delay


create_clock -period 8.000 -name clk_pin -waveform {0.000 4.000} [get_ports clk_pin]
create_clock -period 8.000 -name virtual_clock -waveform {0.000 4.000}
set_input_delay -clock virtual_clock -max 0.000 [get_ports rst_pin]
set_input_delay -clock virtual_clock -min -0.500 [get_ports rst_pin]
set_input_delay -clock virtual_clock -max 0.000 [get_ports btn_pin]
set_input_delay -clock virtual_clock -min -0.500 [get_ports btn_pin]
set_output_delay -clock virtual_clock -4.000 [get_ports {led_pins[*]}]
set_output_delay -clock virtual_clock -min -1.000 [get_ports {led_pins[*]}]
