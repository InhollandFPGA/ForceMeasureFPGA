// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Aug 13 20:49:09 2020
//
// Verilog Description of module BASEMODULE
//

module BASEMODULE (d, ce, q, clk, rst) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/dff.v(2[8:18])
    input [14:0]d;   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    input ce;   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[8:10])
    output [14:0]q;   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    input clk;   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[12:15])
    input rst;   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[17:20])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[12:15])
    
    wire VCC_net, d_c_14, d_c_13, d_c_12, d_c_11, d_c_10, d_c_9, 
        d_c_8, d_c_7, d_c_6, d_c_5, d_c_4, d_c_3, d_c_2, d_c_1, 
        d_c_0, ce_c, rst_c, q_c_14, q_c_13, q_c_12, q_c_11, q_c_10, 
        q_c_9, q_c_8, q_c_7, q_c_6, q_c_5, q_c_4, q_c_3, q_c_2, 
        q_c_1, q_c_0, GND_net, n56;
    
    VLO i27 (.Z(GND_net));
    FD1P3AX q_i0_i2 (.D(d_c_1), .SP(ce_c), .CK(clk_c), .Q(q_c_1));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i2.GSR = "ENABLED";
    GSR GSR_INST (.GSR(n56));
    OB q_pad_14 (.I(q_c_14), .O(q[14]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    LUT4 i20_1_lut (.A(rst_c), .Z(n56)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[17:20])
    defparam i20_1_lut.init = 16'h5555;
    OB q_pad_13 (.I(q_c_13), .O(q[13]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_12 (.I(q_c_12), .O(q[12]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_11 (.I(q_c_11), .O(q[11]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_10 (.I(q_c_10), .O(q[10]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_9 (.I(q_c_9), .O(q[9]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_8 (.I(q_c_8), .O(q[8]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_7 (.I(q_c_7), .O(q[7]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_6 (.I(q_c_6), .O(q[6]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_5 (.I(q_c_5), .O(q[5]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_4 (.I(q_c_4), .O(q[4]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_3 (.I(q_c_3), .O(q[3]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_2 (.I(q_c_2), .O(q[2]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_1 (.I(q_c_1), .O(q[1]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    OB q_pad_0 (.I(q_c_0), .O(q[0]));   // c:/users/user/documents/fpga/projects/schematic/dff.v(10[25:26])
    IB d_pad_14 (.I(d[14]), .O(d_c_14));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_13 (.I(d[13]), .O(d_c_13));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_12 (.I(d[12]), .O(d_c_12));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_11 (.I(d[11]), .O(d_c_11));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_10 (.I(d[10]), .O(d_c_10));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_9 (.I(d[9]), .O(d_c_9));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_8 (.I(d[8]), .O(d_c_8));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_7 (.I(d[7]), .O(d_c_7));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_6 (.I(d[6]), .O(d_c_6));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_5 (.I(d[5]), .O(d_c_5));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_4 (.I(d[4]), .O(d_c_4));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_3 (.I(d[3]), .O(d_c_3));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_2 (.I(d[2]), .O(d_c_2));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_1 (.I(d[1]), .O(d_c_1));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB d_pad_0 (.I(d[0]), .O(d_c_0));   // c:/users/user/documents/fpga/projects/schematic/dff.v(8[20:21])
    IB ce_pad (.I(ce), .O(ce_c));   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[8:10])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[12:15])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/user/documents/fpga/projects/schematic/dff.v(9[17:20])
    VHI i28 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3AX q_i0_i3 (.D(d_c_2), .SP(ce_c), .CK(clk_c), .Q(q_c_2));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i3.GSR = "ENABLED";
    FD1P3AX q_i0_i4 (.D(d_c_3), .SP(ce_c), .CK(clk_c), .Q(q_c_3));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i4.GSR = "ENABLED";
    FD1P3AX q_i0_i5 (.D(d_c_4), .SP(ce_c), .CK(clk_c), .Q(q_c_4));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i5.GSR = "ENABLED";
    FD1P3AX q_i0_i6 (.D(d_c_5), .SP(ce_c), .CK(clk_c), .Q(q_c_5));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i6.GSR = "ENABLED";
    FD1P3AX q_i0_i7 (.D(d_c_6), .SP(ce_c), .CK(clk_c), .Q(q_c_6));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i7.GSR = "ENABLED";
    FD1P3AX q_i0_i8 (.D(d_c_7), .SP(ce_c), .CK(clk_c), .Q(q_c_7));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i8.GSR = "ENABLED";
    FD1P3AX q_i0_i9 (.D(d_c_8), .SP(ce_c), .CK(clk_c), .Q(q_c_8));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i9.GSR = "ENABLED";
    FD1P3AX q_i0_i10 (.D(d_c_9), .SP(ce_c), .CK(clk_c), .Q(q_c_9));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i10.GSR = "ENABLED";
    FD1P3AX q_i0_i11 (.D(d_c_10), .SP(ce_c), .CK(clk_c), .Q(q_c_10));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i11.GSR = "ENABLED";
    FD1P3AX q_i0_i12 (.D(d_c_11), .SP(ce_c), .CK(clk_c), .Q(q_c_11));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i12.GSR = "ENABLED";
    FD1P3AX q_i0_i13 (.D(d_c_12), .SP(ce_c), .CK(clk_c), .Q(q_c_12));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i13.GSR = "ENABLED";
    FD1P3AX q_i0_i14 (.D(d_c_13), .SP(ce_c), .CK(clk_c), .Q(q_c_13));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i14.GSR = "ENABLED";
    FD1P3AX q_i0_i15 (.D(d_c_14), .SP(ce_c), .CK(clk_c), .Q(q_c_14));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i15.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX q_i0_i1 (.D(d_c_0), .SP(ce_c), .CK(clk_c), .Q(q_c_0));   // c:/users/user/documents/fpga/projects/schematic/dff.v(16[3] 17[11])
    defparam q_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

