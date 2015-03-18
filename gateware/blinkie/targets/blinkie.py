from migen.fhdl.std import *
from migen.bank.description import *

from targets.simple import BaseSoC

# For Mixxeo and Milkymist One:
# from targets.mlabs_video import BaseSoC

class Blinker(Module, AutoCSR):
	def __init__(self, led, countbits=32):
		self._r_frequency = CSRStorage(countbits, reset=15000000)

		counter = Signal(countbits)
		self.sync += \
			If(counter == 0,
				led.eq(~led),
				counter.eq(self._r_frequency.storage)
			).Else(
				counter.eq(counter - 1)
			)

class BlinkieSoC(BaseSoC):
	csr_map = {
		"blinker":				16,
	}
	csr_map.update(BaseSoC.csr_map)

	def __init__(self, platform, **kwargs):
		BaseSoC.__init__(self, platform, **kwargs)
		self.submodules.blinker = Blinker(platform.request("user_led",0))

default_subtarget = BlinkieSoC
