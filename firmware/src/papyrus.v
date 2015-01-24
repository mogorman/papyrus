/*playing with verilog J2 is the hdmi input port */

module top (
	    input 	 clk50,
	    output 	 blink
);

   reg 			 data1 = 1'b1;
   reg [32:0] 		 counter;
   reg 			 state;
 		 
    
   assign blink = state;
   always @ (posedge clk50) begin
      counter <= counter + 1;
      state <= counter[26];
   end

endmodule
