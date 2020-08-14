 `define MODULE dff_ce
module ADC_Input_Bits ( d, ce, q, clk, rst);
`undef MODULE

	parameter width = 16;	
	parameter reset_value = {width{1'b0}};
	
	input [width-1:0] d; 
	input ce, clk, rst;
	output reg [width-1:0] q;

	always @ (posedge clk or posedge rst)
	if (rst)
		q <= reset_value;
	else
		if (ce)
			q <= d;

endmodule