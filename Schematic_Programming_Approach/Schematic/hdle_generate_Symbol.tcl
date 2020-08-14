lappend auto_path "C:/lscc/diamond/3.11_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) Stable_Data
set ::bali::Para(PROJECT) Trial_Schematic
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.11_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.11_x64/cae_library/synthesis/verilog/machxo3l.v"}
set ::bali::Para(FILELIST) {"C:/Users/User/Documents/FPGA/Projects/Schematic/int1.v=work" "C:/Users/User/Documents/FPGA/Projects/Schematic/impl1Sch/Trying.v=work" "C:/Users/User/Documents/FPGA/Projects/Schematic/load_reg.v=work" "C:/Users/User/Documents/FPGA/Projects/Schematic/parrallel_serial.v=work" "C:/Users/User/Documents/FPGA/Projects/Schematic/impl1Sch/Data_Acq.v=work" "C:/Users/User/Documents/FPGA/Projects/Schematic/Stable_Data.v=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
