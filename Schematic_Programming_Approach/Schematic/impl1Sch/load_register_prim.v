// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Aug 14 12:01:57 2020
//
// Verilog Description of module load_register
//

module load_register (D, Clk, reset, load, out_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(1[8:21])
    input [13:0]D;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(2[19:20])
    input Clk;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[24:27])
    input reset;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[17:22])
    input load;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[12:16])
    output [3:0]out_data;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(4[11:19])
    
    wire Clk_c /* synthesis is_clock=1, SET_AS_NETWORK=Clk_c */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[24:27])
    
    wire GND_net, D_c_3, D_c_2, D_c_1, D_c_0, load_c, reset_c, 
        out_data_c_3, out_data_c_2, out_data_c_1, out_data_c_0, VCC_net, 
        Clk_c_enable_4;
    
    VHI i25 (.Z(VCC_net));
    FD1P3IX out_data__i2 (.D(D_c_1), .SP(Clk_c_enable_4), .CD(reset_c), 
            .CK(Clk_c), .Q(out_data_c_1));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i2.GSR = "ENABLED";
    OB out_data_pad_2 (.I(out_data_c_2), .O(out_data[2]));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(4[11:19])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i18_2_lut (.A(load_c), .B(reset_c), .Z(Clk_c_enable_4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18_2_lut.init = 16'heeee;
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3IX out_data__i1 (.D(D_c_0), .SP(Clk_c_enable_4), .CD(reset_c), 
            .CK(Clk_c), .Q(out_data_c_0));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i1.GSR = "ENABLED";
    OB out_data_pad_3 (.I(out_data_c_3), .O(out_data[3]));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(4[11:19])
    OB out_data_pad_1 (.I(out_data_c_1), .O(out_data[1]));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(4[11:19])
    OB out_data_pad_0 (.I(out_data_c_0), .O(out_data[0]));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(4[11:19])
    IB D_pad_3 (.I(D[3]), .O(D_c_3));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(2[19:20])
    IB D_pad_2 (.I(D[2]), .O(D_c_2));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(2[19:20])
    IB D_pad_1 (.I(D[1]), .O(D_c_1));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(2[19:20])
    IB D_pad_0 (.I(D[0]), .O(D_c_0));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(2[19:20])
    IB Clk_pad (.I(Clk), .O(Clk_c));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[24:27])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[17:22])
    IB load_pad (.I(load), .O(load_c));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(3[12:16])
    FD1P3IX out_data__i3 (.D(D_c_2), .SP(Clk_c_enable_4), .CD(reset_c), 
            .CK(Clk_c), .Q(out_data_c_2));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i3.GSR = "ENABLED";
    FD1P3IX out_data__i4 (.D(D_c_3), .SP(Clk_c_enable_4), .CD(reset_c), 
            .CK(Clk_c), .Q(out_data_c_3));   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i4.GSR = "ENABLED";
    VLO i29 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

