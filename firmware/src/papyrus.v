/*playing with verilog J2 is the hdmi input port */

`define mogtest 23
module top (
	    input 	 clk50,
	    output 	 blink,
	    output [5:0] leds 
);

   reg [31:0] 		 counter;
   reg 			 state;
   reg [5:0] 		 slow_counter;
   

   assign blink = state;

   assign leds[5:0] = slow_counter[5:0];
   
   always @ (posedge clk50) begin
      counter <= counter + 1;
      slow_counter <= counter[`mogtest] + slow_counter;
      if (slow_counter == 0) begin
	 state  <= ~state;
      end
      
      if( counter[`mogtest] == 1)
	counter[`mogtest] <= 0;
   end

endmodule
