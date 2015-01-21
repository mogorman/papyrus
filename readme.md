papyrus is an epaper based monitor.

[![build status](http://ci.meatstand.com/projects/4/status.png?ref=master)](http://ci.meatstand.com/projects/4?ref=master)

switches
on/off
clear
backlight
invert

Dependencies for papyrus and all of ise to build fpga code. yosys to make netlist

sudo apt-get install geda-utils coreutils sed grep bash geda-gschem ghostscript poppler-utils pcb imagemagick zip bc make git srecord geda-gnetlist gerbv xvfb

[gerbers](http://artifacts.meatstand.com/papyrus/gerbers.zip)

[schematic](http://artifacts.meatstand.com/papyrus/schematic.png)

[bitstream](http://artifacts.meatstand.com/papyrus/papyrus.bit)

[![the board](http://artifacts.meatstand.com/papyrus/board.png)](http://artifacts.meatstand.com/papyrus/board.png)

[![the fpga netlist](http://artifacts.meatstand.com/papyrus/papyrus.svg)](http://artifacts.meatstand.com/papyrus/papyrus.svg)


spi flasher taken from https://svn.code.sf.net/p/xc3sprog/code revision 772 trunk
