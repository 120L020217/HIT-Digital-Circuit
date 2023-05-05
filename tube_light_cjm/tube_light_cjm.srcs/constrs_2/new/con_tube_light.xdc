set_property PACKAGE_PIN F6 [get_ports {led[0]}]
set_property PACKAGE_PIN G4 [get_ports {led[1]}]
set_property PACKAGE_PIN G3 [get_ports {led[2]}]
set_property PACKAGE_PIN J4 [get_ports {led[3]}]
set_property PACKAGE_PIN H4 [get_ports {led[4]}]
set_property PACKAGE_PIN J3 [get_ports {led[5]}]
set_property PACKAGE_PIN J2 [get_ports {led[6]}]
set_property PACKAGE_PIN K2 [get_ports {led[7]}]
set_property PACKAGE_PIN R15 [get_ports rst]
set_property PACKAGE_PIN P17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports clk]









create_clock -period 8.000 -name clk_pin -waveform {0.000 4.000} [get_ports clk]
set_input_delay -clock [get_clocks *] 0.000 [get_ports rst]
set_input_delay -clock [get_clocks *] -min -0.500 [get_ports rst]
set_output_delay -clock [get_clocks *] 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]


