/*playing with verilog J2 is the hdmi input port */

module top (
	    input 	 clk50,
	    output 	 blink
);

   integer 		 counter;
   reg 			 state;


   assign blink = state;
   always @ (posedge clk50) begin
      counter <= counter + 1;
     if (counter == 1024000)
	state <= 1'b1;
     else
	state <= 1'b0;
   end

endmodule
