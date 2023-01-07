create_clock -period 10.000 -name clk100 -waveform {0.000 5.000} [get_ports {clkin100}]

set_property IOSTANDARD LVCMOS25    [get_ports {clkin100}]; # Vadj is 2.5V
set_property PACKAGE_PIN F4         [get_ports {clkin100}]

set_property IOSTANDARD LVCMOS33    [get_ports {led[*]}]
set_property PACKAGE_PIN V11        [get_ports {led[0]}]
set_property PACKAGE_PIN V10        [get_ports {led[1]}]
set_property PACKAGE_PIN T11        [get_ports {led[2]}]
set_property PACKAGE_PIN  T9        [get_ports {led[3]}]



