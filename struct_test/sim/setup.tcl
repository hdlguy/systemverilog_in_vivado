# This script sets up a Vivado project with all ip references resolved.
close_project -quiet
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -force -part xczu3eg-sfva625-1-i proj
set_property target_language Verilog [current_project]
set_property default_lib work [current_project]
load_features ipintegrator

#read_ip ../ram_delay_nco/chip_ram/chip_ram_core/chip_ram_core.xci
#upgrade_ip -quiet  [get_ips *]
#generate_target {all} [get_ips *]

read_verilog -sv ../struct_test_pkg.sv
read_verilog -sv ../struct_test_tb.sv

add_files -fileset sim_1 -norecurse ./struct_test_tb_behav.wcfg

close_project




