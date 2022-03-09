# clk input is from the 100 MHz oscillator on Boolean board
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {clk_pin}]

# On-board LEDs
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {led_pins[0]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {led_pins[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {led_pins[2]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {led_pins[3]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {led_pins[4]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {led_pins[5]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {led_pins[6]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {led_pins[7]}]

# UART
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {rxd_pin}]
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {txd_pin}]

# On-board Slide Switches
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {lb_sel_pin}]

# On-board Buttons, here we use button 0 (the upper right one)
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports {rst_pin}]

# dac_clr_n_pin - PMOD D (the lower right one) connector Pin 1, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN N4   IOSTANDARD LVCMOS33 } [get_ports { dac_clr_n_pin }];

# dac_cs_n_pin - - PMOD D (the lower right one) connector Pin 2, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN N5   IOSTANDARD LVCMOS33 } [get_ports { dac_cs_n_pin }];

# spi_clk_pin - - PMOD D (the lower right one) connector Pin 3, just a placeholdere
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN T3   IOSTANDARD LVCMOS33 } [get_ports { spi_clk_pin }];

# spi_mosi_pin - - PMOD D (the lower right one) connector Pin 4, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN R4  IOSTANDARD LVCMOS33 } [get_ports { spi_mosi_pin }];

set_property IOB TRUE [all_fanin -only_cells -startpoints_only -flat [all_outputs]]