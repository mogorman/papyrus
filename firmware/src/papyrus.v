/*playing with verilog J2 is the hdmi input port */

`define mogtest 24
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
   
/* -----\/----- EXCLUDED -----\/-----
   assign leds[0] = slow_counter[0];
   assign leds[1] = slow_counter[1];
   assign leds[2] = slow_counter[2];
   assign leds[3] = slow_counter[3];
   assign leds[4] = slow_counter[4];
   assign leds[5] = slow_counter[5];
 -----/\----- EXCLUDED -----/\----- */
   
   always @ (posedge clk50) begin
      counter <= counter + 1;
      slow_counter <= counter[`mogtest] + slow_counter;
      if (slow_counter == 31) begin
	 slow_counter <= 0;
	 state  <= ~state;
	 
/* -----\/----- EXCLUDED -----\/-----
	 if(state != 1'b0) begin
	    state <= 1'b0;
	 end
	 else begin
	    state <= 1'b1;
	 end
 -----/\----- EXCLUDED -----/\----- */
      end
      
      if( counter[`mogtest] == 1)
	counter[`mogtest] <= 0;
   end

endmodule
