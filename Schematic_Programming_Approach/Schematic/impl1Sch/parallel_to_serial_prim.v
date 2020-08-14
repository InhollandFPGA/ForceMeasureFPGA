// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Aug 14 13:49:24 2020
//
// Verilog Description of module parallel_to_serial
//

module parallel_to_serial (clk, reset, data_in, empty_tick, data_out) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(1[8:26])
    input clk;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[16:19])
    input reset;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[21:26])
    input [13:0]data_in;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    output empty_tick;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(8[16:26])
    output data_out;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(9[16:24])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[16:19])
    
    wire GND_net, reset_c, data_in_c_13, data_in_c_12, data_in_c_11, 
        data_in_c_10, data_in_c_9, data_in_c_8, data_in_c_7, data_in_c_6, 
        data_in_c_5, data_in_c_4, data_in_c_3, data_in_c_2, data_in_c_1, 
        data_in_c_0, empty_tick_c, data_out_c;
    wire [13:0]data_reg;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(12[13:21])
    
    wire n277, n325, n20, n320;
    wire [13:0]count_reg;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(13[13:22])
    
    wire n324, empty_reg, empty_next, n323, n19, n18, n322, n321, 
        n275, n273, n319, n11, n161, n62, n63, n64, n65, n66, 
        n67, n68, n69, n70, n71, n72, n73, n74, n75, n276, 
        n260, n259, n258, VCC_net, n270, n257, n256, n255, n254;
    
    LUT4 i153_3_lut (.A(data_reg[10]), .B(data_reg[11]), .C(count_reg[0]), 
         .Z(n276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i153_3_lut.init = 16'hcaca;
    FD1S3AX empty_tick_13 (.D(empty_reg), .CK(clk_c), .Q(empty_tick_c));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(17[8] 18[28])
    defparam empty_tick_13.GSR = "DISABLED";
    CCU2D count_reg_26_add_4_11 (.A0(count_reg[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n258), .COUT(n259), .S0(n66), .S1(n65));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_11.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_11.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_11.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_11.INJECT1_1 = "NO";
    FD1S3AY empty_reg_16 (.D(empty_next), .CK(clk_c), .Q(empty_reg));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam empty_reg_16.GSR = "ENABLED";
    FD1S3IX count_reg_26__i13 (.D(n62), .CK(clk_c), .CD(empty_next), .Q(count_reg[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i13.GSR = "ENABLED";
    OB empty_tick_pad (.I(empty_tick_c), .O(empty_tick));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(8[16:26])
    L6MUX21 i200 (.D0(n324), .D1(n321), .SD(count_reg[2]), .Z(n325));
    LUT4 i7_4_lut (.A(count_reg[13]), .B(count_reg[5]), .C(count_reg[6]), 
         .D(count_reg[10]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i151_3_lut (.A(n325), .B(n273), .C(count_reg[3]), .Z(data_out_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i151_3_lut.init = 16'hcaca;
    OB data_out_pad (.I(data_out_c), .O(data_out));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(9[16:24])
    LUT4 i167_4_lut (.A(n19), .B(n270), .C(count_reg[2]), .D(n20), .Z(empty_next)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i167_4_lut.init = 16'h0040;
    LUT4 i9_4_lut (.A(count_reg[11]), .B(n18), .C(count_reg[9]), .D(count_reg[7]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i9_4_lut.init = 16'hfffe;
    PFUMX i195 (.BLUT(n320), .ALUT(n319), .C0(count_reg[0]), .Z(n321));
    LUT4 i150_4_lut (.A(n277), .B(n11), .C(count_reg[2]), .D(count_reg[1]), 
         .Z(n273)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i150_4_lut.init = 16'h0aca;
    LUT4 data_reg_5__bdd_3_lut_194 (.A(data_reg[5]), .B(data_reg[7]), .C(count_reg[1]), 
         .Z(n319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam data_reg_5__bdd_3_lut_194.init = 16'hcaca;
    LUT4 count_reg_3__I_0_i11_3_lut (.A(data_reg[12]), .B(data_reg[13]), 
         .C(count_reg[0]), .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(39[25:34])
    defparam count_reg_3__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 i34_1_lut (.A(reset_c), .Z(n161)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[21:26])
    defparam i34_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(n161));
    LUT4 i8_4_lut (.A(count_reg[1]), .B(count_reg[4]), .C(count_reg[12]), 
         .D(count_reg[8]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i8_4_lut.init = 16'hfffe;
    FD1S3IX count_reg_26__i12 (.D(n63), .CK(clk_c), .CD(empty_next), .Q(count_reg[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i12.GSR = "ENABLED";
    FD1S3IX count_reg_26__i11 (.D(n64), .CK(clk_c), .CD(empty_next), .Q(count_reg[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i11.GSR = "ENABLED";
    FD1S3IX count_reg_26__i10 (.D(n65), .CK(clk_c), .CD(empty_next), .Q(count_reg[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i10.GSR = "ENABLED";
    FD1S3IX count_reg_26__i9 (.D(n66), .CK(clk_c), .CD(empty_next), .Q(count_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i9.GSR = "ENABLED";
    FD1S3IX count_reg_26__i8 (.D(n67), .CK(clk_c), .CD(empty_next), .Q(count_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i8.GSR = "ENABLED";
    FD1S3IX count_reg_26__i7 (.D(n68), .CK(clk_c), .CD(empty_next), .Q(count_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i7.GSR = "ENABLED";
    FD1S3IX count_reg_26__i6 (.D(n69), .CK(clk_c), .CD(empty_next), .Q(count_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i6.GSR = "ENABLED";
    FD1S3IX count_reg_26__i5 (.D(n70), .CK(clk_c), .CD(empty_next), .Q(count_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i5.GSR = "ENABLED";
    FD1S3IX count_reg_26__i4 (.D(n71), .CK(clk_c), .CD(empty_next), .Q(count_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i4.GSR = "ENABLED";
    FD1S3IX count_reg_26__i3 (.D(n72), .CK(clk_c), .CD(empty_next), .Q(count_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i3.GSR = "ENABLED";
    FD1S3IX count_reg_26__i2 (.D(n73), .CK(clk_c), .CD(empty_next), .Q(count_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i2.GSR = "ENABLED";
    FD1S3IX count_reg_26__i1 (.D(n74), .CK(clk_c), .CD(empty_next), .Q(count_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i1.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i13 (.D(data_in_c_13), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[13]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i13.GSR = "ENABLED";
    LUT4 data_reg_5__bdd_3_lut (.A(data_reg[4]), .B(data_reg[6]), .C(count_reg[1]), 
         .Z(n320)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam data_reg_5__bdd_3_lut.init = 16'hcaca;
    VHI i208 (.Z(VCC_net));
    PFUMX i198 (.BLUT(n323), .ALUT(n322), .C0(count_reg[0]), .Z(n324));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 data_reg_0__bdd_3_lut (.A(data_reg[0]), .B(data_reg[2]), .C(count_reg[1]), 
         .Z(n323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam data_reg_0__bdd_3_lut.init = 16'hcaca;
    FD1P3AX data_reg_i0_i12 (.D(data_in_c_12), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[12]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i11 (.D(data_in_c_11), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[11]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i10 (.D(data_in_c_10), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[10]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i9 (.D(data_in_c_9), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[9]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i8 (.D(data_in_c_8), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[8]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i7 (.D(data_in_c_7), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[7]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i6 (.D(data_in_c_6), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[6]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i5 (.D(data_in_c_5), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[5]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i4 (.D(data_in_c_4), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[4]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i3 (.D(data_in_c_3), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[3]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i2 (.D(data_in_c_2), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[2]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i1 (.D(data_in_c_1), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[1]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i0 (.D(data_in_c_0), .SP(empty_next), .CK(clk_c), 
            .Q(data_reg[0]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i0.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[16:19])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(6[21:26])
    IB data_in_pad_13 (.I(data_in[13]), .O(data_in_c_13));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_12 (.I(data_in[12]), .O(data_in_c_12));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_11 (.I(data_in[11]), .O(data_in_c_11));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_10 (.I(data_in[10]), .O(data_in_c_10));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_9 (.I(data_in[9]), .O(data_in_c_9));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_8 (.I(data_in[8]), .O(data_in_c_8));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(7[25:32])
    CCU2D count_reg_26_add_4_15 (.A0(count_reg[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n260), .S0(n62));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_15.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_15.INIT1 = 16'h0000;
    defparam count_reg_26_add_4_15.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_15.INJECT1_1 = "NO";
    CCU2D count_reg_26_add_4_13 (.A0(count_reg[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n259), .COUT(n260), .S0(n64), .S1(n63));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_13.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_13.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_13.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_13.INJECT1_1 = "NO";
    LUT4 i147_2_lut (.A(count_reg[0]), .B(count_reg[3]), .Z(n270)) /* synthesis lut_function=(A (B)) */ ;
    defparam i147_2_lut.init = 16'h8888;
    LUT4 data_reg_0__bdd_3_lut_197 (.A(data_reg[3]), .B(data_reg[1]), .C(count_reg[1]), 
         .Z(n322)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam data_reg_0__bdd_3_lut_197.init = 16'hacac;
    PFUMX i154 (.BLUT(n275), .ALUT(n276), .C0(count_reg[1]), .Z(n277));
    FD1S3IX count_reg_26__i0 (.D(n75), .CK(clk_c), .CD(empty_next), .Q(count_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26__i0.GSR = "ENABLED";
    CCU2D count_reg_26_add_4_9 (.A0(count_reg[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n257), .COUT(n258), .S0(n68), .S1(n67));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_9.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_9.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_9.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_9.INJECT1_1 = "NO";
    CCU2D count_reg_26_add_4_7 (.A0(count_reg[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n256), .COUT(n257), .S0(n70), .S1(n69));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_7.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_7.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_7.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_7.INJECT1_1 = "NO";
    CCU2D count_reg_26_add_4_5 (.A0(count_reg[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n255), .COUT(n256), .S0(n72), .S1(n71));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_5.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_5.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_5.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_5.INJECT1_1 = "NO";
    CCU2D count_reg_26_add_4_3 (.A0(count_reg[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n254), .COUT(n255), .S0(n74), .S1(n73));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_3.INIT0 = 16'hfaaa;
    defparam count_reg_26_add_4_3.INIT1 = 16'hfaaa;
    defparam count_reg_26_add_4_3.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_3.INJECT1_1 = "NO";
    LUT4 i152_3_lut (.A(data_reg[8]), .B(data_reg[9]), .C(count_reg[0]), 
         .Z(n275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i152_3_lut.init = 16'hcaca;
    CCU2D count_reg_26_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n254), .S1(n75));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_26_add_4_1.INIT0 = 16'hF000;
    defparam count_reg_26_add_4_1.INIT1 = 16'h0555;
    defparam count_reg_26_add_4_1.INJECT1_0 = "NO";
    defparam count_reg_26_add_4_1.INJECT1_1 = "NO";
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

