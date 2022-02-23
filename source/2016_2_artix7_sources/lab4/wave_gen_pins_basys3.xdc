# Basys3 xdc
# LED [7:0]
############################
# On-board led             #
############################
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { led_pins[0] }];
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { led_pins[1] }];
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { led_pins[2] }];
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { led_pins[3] }];
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { led_pins[4] }];
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { led_pins[5] }];
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[6] }];
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { led_pins[7] }]; 

# CLK source 100 MHz
set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { clk_pin }];

# SW0
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { lb_sel_pin }];

# RXD UART
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { rxd_pin }];

# TXD UART
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { txd_pin }];

# Reset - BTNC
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { rst_pin }];

# dac_clr_n_pin - JB PMOD connector Pin 1, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { dac_clr_n_pin }];

# dac_cs_n_pin - - JB PMOD connector Pin 2, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { dac_cs_n_pin }];

# spi_clk_pin - - JB PMOD connector Pin 3, just a placeholdere
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { spi_clk_pin }];

# spi_mosi_pin - - JB PMOD connector Pin 4, just a placeholder
# Use appropriate pin when SPI DAC is available
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { spi_mosi_pin }];

set_property IOB TRUE [all_fanin -only_cells -startpoints_only -flat [all_outputs]]