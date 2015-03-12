from migen.fhdl.std import *
from mibuild.platforms import mini_spartan_6
plat = mini_spartan_6.Platform()
led = plat.request("user_led")
m = Module()
counter = Signal(26)
m.comb += led.eq(counter[25])
m.sync += counter.eq(counter + 1)
plat.build_cmdline(m)
