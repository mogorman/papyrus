#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <irq.h>
#include <uart.h>
#include <console.h>
#include <generated/csr.h>

int main(void)
{
	int c;

	irq_setmask(0);
	irq_setie(1);
	uart_init();
	
	puts("Blinkie demo software built "__DATE__" "__TIME__"\n");
	
	while(1) {
		c = readchar();
		if((c >= '0') && (c <= '9')) {
			printf("Set blink frequency #%c\n", c);
			c -= '0';
			blinker_frequency_write((c + 1)*2000000);
		} else
			printf("Press 0-9 to set blink frequency\n");
	}
	
	return 0;
}
