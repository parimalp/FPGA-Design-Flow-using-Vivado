# pynq xdc
# LED [7:0]
# PMODB
############################
# On-board led             #
############################
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {led_pins[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {led_pins[1]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {led_pins[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {led_pins[3]}]
## LEDs maps to LDA (LD0) to LDD (LD3)
set_property PACKAGE_PIN B20 [get_ports led_pins[4]]
set_property IOSTANDARD LVCMOS33 [get_ports led_pins[4]]
set_property PACKAGE_PIN W8 [get_ports led_pins[5]]
set_property IOSTANDARD LVCMOS33 [get_ports led_pins[5]]
set_property PACKAGE_PIN U8 [get_ports led_pins[6]]
set_property IOSTANDARD LVCMOS33 [get_ports led_pins[6]]
set_property PACKAGE_PIN W6 [get_ports led_pins[7]]
set_property IOSTANDARD LVCMOS33 [get_ports led_pins[7]]

# CLK source 125 MHz
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk_pin]

# BTN0
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn_pin]

# Reset - BTN1
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports rst_pin]

