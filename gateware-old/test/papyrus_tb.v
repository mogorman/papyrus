module test;

   /* Making a test module to test code */
   initial begin
      $dumpfile("papyrus_tb.vcd");
      $dumpvars(0,test);
   end

   reg clock = 0;
   always #1 clock = !clock;

   wire [0:0] value;
   top t1(clock, value);

   initial
     $monitor("At time %t, value = %h (%0d)",
	      $time, value, value);
   
endmodule //test
