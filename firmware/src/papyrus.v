/*playing with verilog */

module top (
	    input 	 clk50,
	    output [1:0] led,
	    output 	 blink
);

   reg 			 data1 = 1'b1;
   reg [32:0] 		 counter;
   reg 			 state;
    
   assign led[0] = state;
   assign led[1] = data1;
   assign blink = ! state;
   always @ (posedge clk50) begin
      counter <= counter + 1;
      state <= counter[26];
   end

endmodule
