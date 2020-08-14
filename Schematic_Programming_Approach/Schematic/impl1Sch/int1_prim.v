// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Aug 13 21:37:26 2020
//
// Verilog Description of module int1
//

module int1 (clk, reset, sclk, datain, q) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(8[8:12])
    input clk /* synthesis black_box_pad_pin=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(9[16:19])
    input reset;   // c:/users/user/documents/fpga/projects/schematic/int1.v(10[16:21])
    output sclk;   // c:/users/user/documents/fpga/projects/schematic/int1.v(12[17:21])
    input [15:0]datain;   // c:/users/user/documents/fpga/projects/schematic/int1.v(11[23:29])
    output [15:0]q;   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    
    wire sclk_c /* synthesis is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(12[17:21])
    
    wire reset_c, q_c_15, q_c_14, q_c_13, q_c_12, q_c_11, q_c_10, 
        q_c_9, q_c_8, q_c_7, q_c_6, q_c_5, q_c_4, q_c_3, q_c_2, 
        q_c_1, q_c_0, scuba_vhi, dataini_t15, dataini_t14, dataini_t13, 
        dataini_t12, dataini_t11, dataini_t10, dataini_t9, dataini_t8, 
        dataini_t7, dataini_t6, dataini_t5, dataini_t4, dataini_t3, 
        dataini_t2, dataini_t1, dataini_t0, GND_net;
    
    IFS1P3DX Inst3_IFS1P3DX14 (.D(dataini_t14), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(53[14] 54[31])
    defparam Inst3_IFS1P3DX14.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX13 (.D(dataini_t13), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_13)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(56[14] 57[31])
    defparam Inst3_IFS1P3DX13.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX12 (.D(dataini_t12), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(59[14] 60[31])
    defparam Inst3_IFS1P3DX12.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX11 (.D(dataini_t11), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_11)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(62[14] 63[31])
    defparam Inst3_IFS1P3DX11.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX10 (.D(dataini_t10), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(65[14] 66[31])
    defparam Inst3_IFS1P3DX10.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX9 (.D(dataini_t9), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_9)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(68[14] 69[30])
    defparam Inst3_IFS1P3DX9.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX8 (.D(dataini_t8), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(71[14] 72[30])
    defparam Inst3_IFS1P3DX8.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX7 (.D(dataini_t7), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(74[14] 75[30])
    defparam Inst3_IFS1P3DX7.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX6 (.D(dataini_t6), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(77[14] 78[30])
    defparam Inst3_IFS1P3DX6.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX5 (.D(dataini_t5), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(80[14] 81[30])
    defparam Inst3_IFS1P3DX5.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX4 (.D(dataini_t4), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(83[14] 84[30])
    defparam Inst3_IFS1P3DX4.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX3 (.D(dataini_t3), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(86[14] 87[30])
    defparam Inst3_IFS1P3DX3.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX2 (.D(dataini_t2), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(89[14] 90[30])
    defparam Inst3_IFS1P3DX2.GSR = "ENABLED";
    IFS1P3DX Inst3_IFS1P3DX1 (.D(dataini_t1), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(92[14] 93[30])
    defparam Inst3_IFS1P3DX1.GSR = "ENABLED";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    IFS1P3DX Inst3_IFS1P3DX0 (.D(dataini_t0), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(97[14] 98[30])
    defparam Inst3_IFS1P3DX0.GSR = "ENABLED";
    IB Inst2_IB (.I(clk), .O(sclk_c)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(100[8:39])
    IB Inst1_IB15 (.I(datain[15]), .O(dataini_t15)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(103[8:54])
    IB Inst1_IB14 (.I(datain[14]), .O(dataini_t14)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(106[8:54])
    IB Inst1_IB13 (.I(datain[13]), .O(dataini_t13)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(109[8:54])
    IB Inst1_IB12 (.I(datain[12]), .O(dataini_t12)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(112[8:54])
    IB Inst1_IB11 (.I(datain[11]), .O(dataini_t11)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(115[8:54])
    IB Inst1_IB10 (.I(datain[10]), .O(dataini_t10)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(118[8:54])
    IB Inst1_IB9 (.I(datain[9]), .O(dataini_t9)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(121[8:51])
    IB Inst1_IB8 (.I(datain[8]), .O(dataini_t8)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(124[8:51])
    IB Inst1_IB7 (.I(datain[7]), .O(dataini_t7)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(127[8:51])
    IB Inst1_IB6 (.I(datain[6]), .O(dataini_t6)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(130[8:51])
    IB Inst1_IB5 (.I(datain[5]), .O(dataini_t5)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(133[8:51])
    IB Inst1_IB4 (.I(datain[4]), .O(dataini_t4)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(136[8:51])
    IB Inst1_IB3 (.I(datain[3]), .O(dataini_t3)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(139[8:51])
    IB Inst1_IB2 (.I(datain[2]), .O(dataini_t2)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(142[8:51])
    IB Inst1_IB1 (.I(datain[1]), .O(dataini_t1)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(145[8:51])
    IB Inst1_IB0 (.I(datain[0]), .O(dataini_t0)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(148[8:51])
    OB q_pad_15 (.I(q_c_15), .O(q[15]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB sclk_pad (.I(sclk_c), .O(sclk));   // c:/users/user/documents/fpga/projects/schematic/int1.v(12[17:21])
    IFS1P3DX Inst3_IFS1P3DX15 (.D(dataini_t15), .SP(scuba_vhi), .SCLK(sclk_c), 
            .CD(reset_c), .Q(q_c_15)) /* synthesis syn_instantiated=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/int1.v(50[14] 51[31])
    defparam Inst3_IFS1P3DX15.GSR = "ENABLED";
    OB q_pad_14 (.I(q_c_14), .O(q[14]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_13 (.I(q_c_13), .O(q[13]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_12 (.I(q_c_12), .O(q[12]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_11 (.I(q_c_11), .O(q[11]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_10 (.I(q_c_10), .O(q[10]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_9 (.I(q_c_9), .O(q[9]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_8 (.I(q_c_8), .O(q[8]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_7 (.I(q_c_7), .O(q[7]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_6 (.I(q_c_6), .O(q[6]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_5 (.I(q_c_5), .O(q[5]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_4 (.I(q_c_4), .O(q[4]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_3 (.I(q_c_3), .O(q[3]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_2 (.I(q_c_2), .O(q[2]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_1 (.I(q_c_1), .O(q[1]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    OB q_pad_0 (.I(q_c_0), .O(q[0]));   // c:/users/user/documents/fpga/projects/schematic/int1.v(13[24:25])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/user/documents/fpga/projects/schematic/int1.v(10[16:21])
    GSR GSR_INST (.GSR(scuba_vhi));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i16 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

