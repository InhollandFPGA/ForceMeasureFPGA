/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.11.0.396.4 */
/* Module Version: 5.8 */
/* C:\lscc\diamond\3.11_x64\ispfpga\bin\nt64\scuba.exe -w -n Stable_Data -lang verilog -synth lse -bus_exp 7 -bb -arch xo3c00f -type iol -mode out -io_type LVCMOS25 -width 1 -freq_in 166 -clk sclk -aligned -gear 0  */
/* Fri Aug 14 13:53:40 2020 */


`timescale 1 ns / 1 ps
module Stable_Data (clk, clkout, reset, sclk, d, dout)/* synthesis NGD_DRC_MASK=1 */;
    input wire clk;
    input wire reset;
    input wire [0:0] d;
    output wire clkout;
    output wire sclk;
    output wire [0:0] dout;

    wire buf_clkout;
    wire scuba_vlo;
    wire scuba_vhi;
    wire buf_douto0;

    OB Inst4_OB (.I(buf_clkout), .O(clkout))
             /* synthesis IO_TYPE="LVCMOS25" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    ODDRXE Inst3_ODDRXE (.D0(scuba_vhi), .D1(scuba_vlo), .SCLK(clk), .RST(reset), 
        .Q(buf_clkout));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    OFS1P3DX Inst2_OFS1P3DX0 (.D(d[0]), .SP(scuba_vhi), .SCLK(clk), .CD(reset), 
        .Q(buf_douto0));

    OB Inst1_OB0 (.I(buf_douto0), .O(dout[0]))
             /* synthesis IO_TYPE="LVCMOS25" */;

    assign sclk = clk;


    // exemplar begin
    // exemplar attribute Inst4_OB IO_TYPE LVCMOS25
    // exemplar attribute Inst1_OB0 IO_TYPE LVCMOS25
    // exemplar end

endmodule