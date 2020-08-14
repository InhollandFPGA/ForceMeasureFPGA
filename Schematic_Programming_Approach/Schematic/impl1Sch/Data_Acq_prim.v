// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Aug 14 14:49:09 2020
//
// Verilog Description of module Data_Acq
//

module Data_Acq (ADC_DATA_OUT_STABLE, D, GSR, RD, serial_empty_tick) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(3[8:16])
    output ADC_DATA_OUT_STABLE /* synthesis black_box_pad_pin=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(4[8:27])
    input [13:0]D;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    input GSR;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(6[8:11])
    input RD;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(7[8:10])
    output serial_empty_tick;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(8[8:25])
    
    wire main_clk /* synthesis SET_AS_NETWORK=main_clk, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(13[6:14])
    
    wire D_c_13, D_c_12, D_c_11, D_c_10, D_c_9, D_c_8, D_c_7, 
        D_c_6, D_c_5, D_c_4, D_c_3, D_c_2, D_c_1, D_c_0, GSR_c, 
        RD_c, serial_empty_tick_c;
    wire [13:0]load_reg_out;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(9[15:27])
    
    wire serial_out, VCC_net, scuba_vlo, buf_douto0, n95, main_clk_enable_14;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=13, LSE_RCOL=56, LSE_LLINE=19, LSE_RLINE=20 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(19[13] 20[56])
    Stable_Data I3 (.main_clk(main_clk), .GSR_c(GSR_c), .d({serial_out}), 
            .VCC_net(VCC_net), .buf_douto0(buf_douto0)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(19[13] 20[56])
    IB D_pad_13 (.I(D[13]), .O(D_c_13));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    load_register I2 (.load_reg_out({load_reg_out}), .main_clk(main_clk), 
            .main_clk_enable_14(main_clk_enable_14), .GSR_c(GSR_c), .D_c_4(D_c_4), 
            .n95(n95), .D_c_3(D_c_3), .D_c_2(D_c_2), .D_c_0(D_c_0), 
            .D_c_1(D_c_1), .D_c_5(D_c_5), .D_c_6(D_c_6), .D_c_7(D_c_7), 
            .D_c_8(D_c_8), .D_c_9(D_c_9), .D_c_10(D_c_10), .D_c_11(D_c_11), 
            .D_c_12(D_c_12), .D_c_13(D_c_13)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(24[15] 25[61])
    OB Inst1_OB0 (.I(buf_douto0), .O(ADC_DATA_OUT_STABLE)) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=13, LSE_RCOL=56, LSE_LLINE=19, LSE_RLINE=20 */ ;   // c:/users/user/documents/fpga/projects/schematic/stable_data.v(34[8:47])
    OB serial_empty_tick_pad (.I(serial_empty_tick_c), .O(serial_empty_tick));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(8[8:25])
    LUT4 i23_2_lut (.A(RD_c), .B(GSR_c), .Z(main_clk_enable_14)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i23_2_lut.init = 16'hdddd;
    VHI i5 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PLL I4 (.scuba_vlo(scuba_vlo), .GSR_c(GSR_c), .main_clk(main_clk)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(17[5:39])
    IB D_pad_12 (.I(D[12]), .O(D_c_12));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_11 (.I(D[11]), .O(D_c_11));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_10 (.I(D[10]), .O(D_c_10));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_9 (.I(D[9]), .O(D_c_9));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_8 (.I(D[8]), .O(D_c_8));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_7 (.I(D[7]), .O(D_c_7));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_6 (.I(D[6]), .O(D_c_6));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_5 (.I(D[5]), .O(D_c_5));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_4 (.I(D[4]), .O(D_c_4));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_3 (.I(D[3]), .O(D_c_3));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_2 (.I(D[2]), .O(D_c_2));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_1 (.I(D[1]), .O(D_c_1));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB D_pad_0 (.I(D[0]), .O(D_c_0));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(5[15:16])
    IB GSR_pad (.I(GSR), .O(GSR_c));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(6[8:11])
    IB RD_pad (.I(RD), .O(RD_c));   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(7[8:10])
    parallel_to_serial I1 (.serial_empty_tick_c(serial_empty_tick_c), .main_clk(main_clk), 
            .load_reg_out({load_reg_out}), .d({serial_out}), .scuba_vlo(scuba_vlo)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(21[20] 23[35])
    TSALL TSALL_INST (.TSALL(scuba_vlo));
    GSR GSR_INST (.GSR(n95));
    
endmodule
//
// Verilog Description of module Stable_Data
//

module Stable_Data (main_clk, GSR_c, d, VCC_net, buf_douto0) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input main_clk;
    input GSR_c;
    input [0:0]d;
    input VCC_net;
    output buf_douto0;
    
    wire main_clk /* synthesis SET_AS_NETWORK=main_clk, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(13[6:14])
    
    OFS1P3DX Inst2_OFS1P3DX0 (.D(d[0]), .SP(VCC_net), .SCLK(main_clk), 
            .CD(GSR_c), .Q(buf_douto0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=13, LSE_RCOL=56, LSE_LLINE=19, LSE_RLINE=20 */ ;   // c:/users/user/documents/fpga/projects/schematic/stable_data.v(31[14] 32[24])
    defparam Inst2_OFS1P3DX0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module load_register
//

module load_register (load_reg_out, main_clk, main_clk_enable_14, GSR_c, 
            D_c_4, n95, D_c_3, D_c_2, D_c_0, D_c_1, D_c_5, D_c_6, 
            D_c_7, D_c_8, D_c_9, D_c_10, D_c_11, D_c_12, D_c_13) /* synthesis syn_module_defined=1 */ ;
    output [13:0]load_reg_out;
    input main_clk;
    input main_clk_enable_14;
    input GSR_c;
    input D_c_4;
    output n95;
    input D_c_3;
    input D_c_2;
    input D_c_0;
    input D_c_1;
    input D_c_5;
    input D_c_6;
    input D_c_7;
    input D_c_8;
    input D_c_9;
    input D_c_10;
    input D_c_11;
    input D_c_12;
    input D_c_13;
    
    wire main_clk /* synthesis SET_AS_NETWORK=main_clk, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(13[6:14])
    
    FD1P3IX out_data__i4 (.D(D_c_4), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i4.GSR = "DISABLED";
    LUT4 i61_1_lut (.A(GSR_c), .Z(n95)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(6[8:11])
    defparam i61_1_lut.init = 16'h5555;
    FD1P3IX out_data__i3 (.D(D_c_3), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i3.GSR = "DISABLED";
    FD1P3IX out_data__i2 (.D(D_c_2), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i2.GSR = "DISABLED";
    FD1P3IX out_data__i0 (.D(D_c_0), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i0.GSR = "DISABLED";
    FD1P3IX out_data__i1 (.D(D_c_1), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i1.GSR = "DISABLED";
    FD1P3IX out_data__i5 (.D(D_c_5), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i5.GSR = "DISABLED";
    FD1P3IX out_data__i6 (.D(D_c_6), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i6.GSR = "DISABLED";
    FD1P3IX out_data__i7 (.D(D_c_7), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i7.GSR = "DISABLED";
    FD1P3IX out_data__i8 (.D(D_c_8), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i8.GSR = "DISABLED";
    FD1P3IX out_data__i9 (.D(D_c_9), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i9.GSR = "DISABLED";
    FD1P3IX out_data__i10 (.D(D_c_10), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i10.GSR = "DISABLED";
    FD1P3IX out_data__i11 (.D(D_c_11), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i11.GSR = "DISABLED";
    FD1P3IX out_data__i12 (.D(D_c_12), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i12.GSR = "DISABLED";
    FD1P3IX out_data__i13 (.D(D_c_13), .SP(main_clk_enable_14), .CD(GSR_c), 
            .CK(main_clk), .Q(load_reg_out[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=15, LSE_RCOL=61, LSE_LLINE=24, LSE_RLINE=25 */ ;   // c:/users/user/documents/fpga/projects/schematic/load_reg.v(7[8] 14[8])
    defparam out_data__i13.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PLL
//

module PLL (scuba_vlo, GSR_c, main_clk) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input scuba_vlo;
    input GSR_c;
    output main_clk;
    
    wire main_clk /* synthesis SET_AS_NETWORK=main_clk, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(13[6:14])
    
    EHXPLLJ PLLInst_0 (.CLKI(scuba_vlo), .CLKFB(main_clk), .PHASESEL0(scuba_vlo), 
            .PHASESEL1(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
            .LOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
            .RST(GSR_c), .RESETC(scuba_vlo), .RESETD(scuba_vlo), .RESETM(scuba_vlo), 
            .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
            .ENCLKOS3(scuba_vlo), .PLLCLK(scuba_vlo), .PLLRST(scuba_vlo), 
            .PLLSTB(scuba_vlo), .PLLWE(scuba_vlo), .PLLDATI0(scuba_vlo), 
            .PLLDATI1(scuba_vlo), .PLLDATI2(scuba_vlo), .PLLDATI3(scuba_vlo), 
            .PLLDATI4(scuba_vlo), .PLLDATI5(scuba_vlo), .PLLDATI6(scuba_vlo), 
            .PLLDATI7(scuba_vlo), .PLLADDR0(scuba_vlo), .PLLADDR1(scuba_vlo), 
            .PLLADDR2(scuba_vlo), .PLLADDR3(scuba_vlo), .PLLADDR4(scuba_vlo), 
            .CLKOP(main_clk)) /* synthesis FREQUENCY_PIN_CLKOP="100.000000", FREQUENCY_PIN_CLKI="200.000000", ICP_CURRENT="12", LPF_RESISTOR="24", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=39, LSE_LLINE=17, LSE_RLINE=17 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(17[5:39])
    defparam PLLInst_0.CLKI_DIV = 2;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module parallel_to_serial
//

module parallel_to_serial (serial_empty_tick_c, main_clk, load_reg_out, 
            d, scuba_vlo) /* synthesis syn_module_defined=1 */ ;
    output serial_empty_tick_c;
    input main_clk;
    input [13:0]load_reg_out;
    output [0:0]d;
    input scuba_vlo;
    
    wire main_clk /* synthesis SET_AS_NETWORK=main_clk, is_clock=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/impl1sch/data_acq.v(13[6:14])
    wire [13:0]count_reg;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(13[13:22])
    
    wire n228, empty_reg, empty_next;
    wire [13:0]n61;
    wire [13:0]data_reg;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(12[13:21])
    
    wire n18, n20, n293, n243, n242, n269, n234, n19, n292, 
        n236, n291, n209, n238, n11, n237, n204, n205, n203, 
        n208, n207, n206;
    
    LUT4 i189_2_lut (.A(count_reg[0]), .B(count_reg[3]), .Z(n228)) /* synthesis lut_function=(A (B)) */ ;
    defparam i189_2_lut.init = 16'h8888;
    FD1S3AX empty_tick_13 (.D(empty_reg), .CK(main_clk), .Q(serial_empty_tick_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(17[8] 18[28])
    defparam empty_tick_13.GSR = "DISABLED";
    FD1S3AY empty_reg_16 (.D(empty_next), .CK(main_clk), .Q(empty_reg)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam empty_reg_16.GSR = "ENABLED";
    FD1S3IX count_reg_20__i0 (.D(n61[0]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i0.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i13 (.D(load_reg_out[13]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i13.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(count_reg[11]), .B(n18), .C(count_reg[9]), .D(count_reg[7]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(count_reg[13]), .B(count_reg[5]), .C(count_reg[6]), 
         .D(count_reg[10]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 n266_bdd_4_lut (.A(n293), .B(n243), .C(n242), .D(count_reg[2]), 
         .Z(n269)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n266_bdd_4_lut.init = 16'haad8;
    LUT4 i195_3_lut (.A(n269), .B(n234), .C(count_reg[3]), .Z(d[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i195_3_lut.init = 16'hcaca;
    LUT4 i216_4_lut (.A(n19), .B(n228), .C(count_reg[2]), .D(n20), .Z(empty_next)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i216_4_lut.init = 16'h0040;
    LUT4 count_reg_1__bdd_4_lut_then_4_lut (.A(data_reg[7]), .B(data_reg[6]), 
         .C(count_reg[2]), .D(count_reg[0]), .Z(n292)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B (C))) */ ;
    defparam count_reg_1__bdd_4_lut_then_4_lut.init = 16'hafcf;
    LUT4 i196_3_lut (.A(data_reg[8]), .B(data_reg[9]), .C(count_reg[0]), 
         .Z(n236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i196_3_lut.init = 16'hcaca;
    PFUMX i244 (.BLUT(n291), .ALUT(n292), .C0(count_reg[1]), .Z(n293));
    LUT4 count_reg_1__bdd_4_lut_else_4_lut (.A(data_reg[5]), .B(data_reg[4]), 
         .C(count_reg[2]), .D(count_reg[0]), .Z(n291)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam count_reg_1__bdd_4_lut_else_4_lut.init = 16'ha0c0;
    CCU2D count_reg_20_add_4_15 (.A0(count_reg[13]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n209), .S0(n61[13]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_15.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_15.INIT1 = 16'h0000;
    defparam count_reg_20_add_4_15.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_15.INJECT1_1 = "NO";
    LUT4 i194_4_lut (.A(n238), .B(n11), .C(count_reg[2]), .D(count_reg[1]), 
         .Z(n234)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i194_4_lut.init = 16'h0aca;
    LUT4 i197_3_lut (.A(data_reg[10]), .B(data_reg[11]), .C(count_reg[0]), 
         .Z(n237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i197_3_lut.init = 16'hcaca;
    LUT4 i202_3_lut (.A(data_reg[0]), .B(data_reg[1]), .C(count_reg[0]), 
         .Z(n242)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i202_3_lut.init = 16'hcaca;
    PFUMX i198 (.BLUT(n236), .ALUT(n237), .C0(count_reg[1]), .Z(n238));
    LUT4 i203_3_lut (.A(data_reg[2]), .B(data_reg[3]), .C(count_reg[0]), 
         .Z(n243)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i203_3_lut.init = 16'hcaca;
    CCU2D count_reg_20_add_4_5 (.A0(count_reg[3]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[4]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n204), .COUT(n205), .S0(n61[3]), .S1(n61[4]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_5.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_5.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_5.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_5.INJECT1_1 = "NO";
    CCU2D count_reg_20_add_4_3 (.A0(count_reg[1]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[2]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n203), .COUT(n204), .S0(n61[1]), .S1(n61[2]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_3.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_3.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_3.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_3.INJECT1_1 = "NO";
    FD1P3AX data_reg_i0_i12 (.D(load_reg_out[12]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i11 (.D(load_reg_out[11]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i10 (.D(load_reg_out[10]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i9 (.D(load_reg_out[9]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i8 (.D(load_reg_out[8]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i7 (.D(load_reg_out[7]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i6 (.D(load_reg_out[6]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i5 (.D(load_reg_out[5]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i4 (.D(load_reg_out[4]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i3 (.D(load_reg_out[3]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i2 (.D(load_reg_out[2]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i1 (.D(load_reg_out[1]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i0 (.D(load_reg_out[0]), .SP(empty_next), .CK(main_clk), 
            .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=20, LSE_RCOL=35, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(27[10] 31[8])
    defparam data_reg_i0_i0.GSR = "ENABLED";
    FD1S3IX count_reg_20__i1 (.D(n61[1]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i1.GSR = "ENABLED";
    CCU2D count_reg_20_add_4_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[0]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .COUT(n203), .S1(n61[0]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_1.INIT0 = 16'hF000;
    defparam count_reg_20_add_4_1.INIT1 = 16'h0555;
    defparam count_reg_20_add_4_1.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_1.INJECT1_1 = "NO";
    CCU2D count_reg_20_add_4_13 (.A0(count_reg[11]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[12]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n208), .COUT(n209), .S0(n61[11]), .S1(n61[12]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_13.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_13.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_13.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_13.INJECT1_1 = "NO";
    CCU2D count_reg_20_add_4_11 (.A0(count_reg[9]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[10]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n207), .COUT(n208), .S0(n61[9]), .S1(n61[10]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_11.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_11.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_11.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_11.INJECT1_1 = "NO";
    CCU2D count_reg_20_add_4_9 (.A0(count_reg[7]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[8]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n206), .COUT(n207), .S0(n61[7]), .S1(n61[8]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_9.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_9.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_9.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_9.INJECT1_1 = "NO";
    CCU2D count_reg_20_add_4_7 (.A0(count_reg[5]), .B0(scuba_vlo), .C0(scuba_vlo), 
          .D0(scuba_vlo), .A1(count_reg[6]), .B1(scuba_vlo), .C1(scuba_vlo), 
          .D1(scuba_vlo), .CIN(n205), .COUT(n206), .S0(n61[5]), .S1(n61[6]));   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20_add_4_7.INIT0 = 16'hfaaa;
    defparam count_reg_20_add_4_7.INIT1 = 16'hfaaa;
    defparam count_reg_20_add_4_7.INJECT1_0 = "NO";
    defparam count_reg_20_add_4_7.INJECT1_1 = "NO";
    LUT4 count_reg_3__I_0_i11_3_lut (.A(data_reg[12]), .B(data_reg[13]), 
         .C(count_reg[0]), .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(39[25:34])
    defparam count_reg_3__I_0_i11_3_lut.init = 16'hcaca;
    FD1S3IX count_reg_20__i2 (.D(n61[2]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i2.GSR = "ENABLED";
    FD1S3IX count_reg_20__i3 (.D(n61[3]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i3.GSR = "ENABLED";
    FD1S3IX count_reg_20__i4 (.D(n61[4]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i4.GSR = "ENABLED";
    FD1S3IX count_reg_20__i5 (.D(n61[5]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i5.GSR = "ENABLED";
    FD1S3IX count_reg_20__i6 (.D(n61[6]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i6.GSR = "ENABLED";
    FD1S3IX count_reg_20__i7 (.D(n61[7]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i7.GSR = "ENABLED";
    FD1S3IX count_reg_20__i8 (.D(n61[8]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i8.GSR = "ENABLED";
    FD1S3IX count_reg_20__i9 (.D(n61[9]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i9.GSR = "ENABLED";
    FD1S3IX count_reg_20__i10 (.D(n61[10]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i10.GSR = "ENABLED";
    FD1S3IX count_reg_20__i11 (.D(n61[11]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i11.GSR = "ENABLED";
    FD1S3IX count_reg_20__i12 (.D(n61[12]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i12.GSR = "ENABLED";
    FD1S3IX count_reg_20__i13 (.D(n61[13]), .CK(main_clk), .CD(empty_next), 
            .Q(count_reg[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(49[22:35])
    defparam count_reg_20__i13.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(count_reg[1]), .B(count_reg[4]), .C(count_reg[12]), 
         .D(count_reg[8]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/fpga/projects/schematic/parrallel_serial.v(42[9:25])
    defparam i8_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

