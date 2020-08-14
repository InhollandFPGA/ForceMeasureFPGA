/* Verilog model created from schematic Data_Acq.sch -- Aug 14, 2020 14:52 */

module Data_Acq( ADC_DATA_OUT_STABLE, D, GSR, RD, serial_empty_tick );
output ADC_DATA_OUT_STABLE;
 input [13:0] D;
 input GSR;
 input RD;
output serial_empty_tick;
  wire [13:0] load_reg_out;
wire ADC_DATA_OUTCLK;
wire serial_out;
wire main_clk;
wire N_1;



PLL I4 ( .CLKOP(main_clk), .RST(GSR) );
INV I5 ( .A(RD), .Z(N_1) );
Stable_Data I3 ( .clk(main_clk), .clkout(ADC_DATA_OUTCLK), .d(serial_out),
              .dout(ADC_DATA_OUT_STABLE), .reset(GSR) );
parallel_to_serial I1 ( .clk(main_clk), .data_in(load_reg_out[13:0]),
                     .data_out(serial_out), .empty_tick(serial_empty_tick),
                     .reset(GSR) );
load_register I2 ( .Clk(main_clk), .D(D[13:0]), .load(N_1),
                .out_data(load_reg_out[13:0]), .reset(GSR) );

endmodule // Data_Acq
