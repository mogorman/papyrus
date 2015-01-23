/*playing with verilog J2 is the hdmi input port */

module top (
	    input 	 clk50,
	    output [1:0] led,
	    output 	 blink
);

   reg 			 data1 = 1'b1;
   reg [27:0] 		 counter;
   reg [128:0] 		 other_counter;
   reg 			 state;
   reg 			 other_state;
   integer 		 i;
 		 
    
   assign led[0] = state;
   assign led[1] = data1;
   assign blink = other_state;
   always @ (posedge clk50) begin
      counter <= counter + 4;
      other_counter <= other_counter + 1;
      state <= counter[26];
      if( other_counter[28]  == 1 ) 
	begin
	   other_state <= other_counter[26];
	   for (i=0; i< 128; i = i + 1)
	     begin
		other_counter[i] <= 0;
	     end
	end
   end

endmodule
