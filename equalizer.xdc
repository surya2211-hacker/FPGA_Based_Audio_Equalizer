###############################################################################
# Clock (100 MHz onboard oscillator)
###############################################################################
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk -period 10.000 -waveform {0 5} [get_ports clk]

###############################################################################
# Reset Button (BTN0)
###############################################################################
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PULLUP true [get_ports reset]

###############################################################################
# Address Bus (SW0–SW9)
###############################################################################
set_property PACKAGE_PIN V17 [get_ports {address[0]}]   ;# SW0
set_property PACKAGE_PIN V16 [get_ports {address[1]}]   ;# SW1
set_property PACKAGE_PIN W16 [get_ports {address[2]}]   ;# SW2
set_property PACKAGE_PIN W17 [get_ports {address[3]}]   ;# SW3
set_property PACKAGE_PIN W15 [get_ports {address[4]}]   ;# SW4
set_property PACKAGE_PIN V15 [get_ports {address[5]}]   ;# SW5
set_property PACKAGE_PIN W14 [get_ports {address[6]}]   ;# SW6
set_property PACKAGE_PIN W13 [get_ports {address[7]}]   ;# SW7
set_property PACKAGE_PIN V2  [get_ports {address[8]}]   ;# SW8
set_property PACKAGE_PIN T3  [get_ports {address[9]}]   ;# SW9

set_property IOSTANDARD LVCMOS33 [get_ports address[*]]

###############################################################################
# ROM Output Data (LED0–LED7)
###############################################################################
set_property PACKAGE_PIN U16 [get_ports {ROM_Data[0]}]  ;# LED0
set_property PACKAGE_PIN E19 [get_ports {ROM_Data[1]}]  ;# LED1
set_property PACKAGE_PIN U19 [get_ports {ROM_Data[2]}]  ;# LED2
set_property PACKAGE_PIN V19 [get_ports {ROM_Data[3]}]  ;# LED3
set_property PACKAGE_PIN W18 [get_ports {ROM_Data[4]}]  ;# LED4
set_property PACKAGE_PIN U15 [get_ports {ROM_Data[5]}]  ;# LED5
set_property PACKAGE_PIN U14 [get_ports {ROM_Data[6]}]  ;# LED6
set_property PACKAGE_PIN V14 [get_ports {ROM_Data[7]}]  ;# LED7

set_property IOSTANDARD LVCMOS33 [get_ports ROM_Data[*]]

###############################################################################
# Filtered Output Data (LED8–LED15)
###############################################################################
set_property PACKAGE_PIN V13 [get_ports {filtered_data[0]}]   ;# LED8
set_property PACKAGE_PIN V3  [get_ports {filtered_data[1]}]   ;# LED9
set_property PACKAGE_PIN W3  [get_ports {filtered_data[2]}]   ;# LED10
set_property PACKAGE_PIN U3  [get_ports {filtered_data[3]}]   ;# LED11
set_property PACKAGE_PIN P3  [get_ports {filtered_data[4]}]   ;# LED12
set_property PACKAGE_PIN N3  [get_ports {filtered_data[5]}]   ;# LED13
set_property PACKAGE_PIN P1  [get_ports {filtered_data[6]}]   ;# LED14
set_property PACKAGE_PIN L1  [get_ports {filtered_data[7]}]   ;# LED15

# Remaining upper bits (optional – comment if unused)
# set_property PACKAGE_PIN M1  [get_ports {filtered_data[8]}]
# set_property PACKAGE_PIN N1  [get_ports {filtered_data[9]}]
# set_property PACKAGE_PIN R1  [get_ports {filtered_data[10]}]
# set_property PACKAGE_PIN T1  [get_ports {filtered_data[11]}]
# set_property PACKAGE_PIN U1  [get_ports {filtered_data[12]}]
# set_property PACKAGE_PIN V1  [get_ports {filtered_data[13]}]
# set_property PACKAGE_PIN W1  [get_ports {filtered_data[14]}]
# set_property PACKAGE_PIN Y1  [get_ports {filtered_data[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports filtered_data[*]]

###############################################################################
# Signal Integrity (Safe Defaults)
###############################################################################
set_property SLEW SLOW [get_ports address[*]]
set_property SLEW SLOW [get_ports ROM_Data[*]]
set_property SLEW SLOW [get_ports filtered_data[*]]
