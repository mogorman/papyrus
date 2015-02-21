papyrus is an hdmi epaper based monitor.

[![build status](http://ci.meatstand.com/projects/4/status.png?ref=master)](http://ci.meatstand.com/projects/4?ref=master)

switches
on/off
clear
backlight
invert

Dependencies for papyrus and all of ise to build fpga code. yosys to make netlist

sudo apt-get install geda-utils coreutils sed grep bash geda-gschem ghostscript poppler-utils pcb imagemagick zip bc make git srecord geda-gnetlist gerbv xvfb

[gerbers](http://artifacts.meatstand.com/papyrus/gerbers.zip)

[schematic](http://artifacts.meatstand.com/papyrus/schematic.png) and [fpga schematic] (http://artifacts.meatstand.com/papyrus/papyrus.svg)

[bitstream](http://artifacts.meatstand.com/papyrus/papyrus.bit)

[![the board](http://artifacts.meatstand.com/papyrus/board.png)](http://artifacts.meatstand.com/papyrus/board.png)


spi flasher taken from https://svn.code.sf.net/p/xc3sprog/code revision 772 trunk

main: http://dev.meatstand.com/meatstand/papyrus

mirror: https://github.com/mogorman/papyrus

I got the +20v and +15v working but not the -15v or -22v.  I need to figure out what is wrong with using part without diodes.

working on lm32 core into project
i got latticemico32 system built working on porting it.
I should have core in here this week.  I got it built in lattice moving it to xilinx.
built in xilinx and with misoc tools.  now to write C code
cant get bios going like i want.
started work on pcb printer
disassembled printer ready for moving forward
made cuts and mostly reassembled.  I need to cut metal and program the mcu
finished all mechanical parts nad put chasis back on printer.
I need to test electrical and then install mcu to drive printer.
then im ready for test prints.
wired in electonics turned on printer verified it wasnt broken.
Could not get printer to print.  Constantly just fed page through.
Playing with mcu code I was able to get the printer to print its error message onto the aluminum carrier
it seemed to work just fine.  Now I need to solve the timing issues.  Going to try his code on a tiny.
