module load_register ( D , Clk , reset , load , out_data);
 input [13:0]				 D;
 input 		  load,reset, Clk;
 
 output reg [13:0] out_data ; 

always @ (posedge Clk) 
	if (reset)
		begin
			out_data <= 14'b0;
		end else if (load)
				begin
					out_data <= D;
				end
endmodule 				
