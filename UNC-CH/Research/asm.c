#include <stdio.h>
/* Simple demo of the asm directive */

void triv () {
	return;
}

int main (int   argc,
	  char *argv[])
{
	unsigned long int  x, y, z;
	void (*dst)(int) = &triv;
	x = 49;
	y = 64;
	z = 81;

	printf("Dump 1: x = %d, y = %d, z = %d\n", x, y, z);
	
	asm ("l.xor\t%0,%0,%0" : "=r" (x) : "r" (x)); //"x" <- "x" XOR "x"

	printf("Dump 2: x = %d, y = %d, z = %d\n", x, y, z);

	asm ("l.add\t%0,%0,%0" : "=r" (x) : "r" (x)); //"x" <- "x" + "x"
	//asm ("l.sw\t0x0(%0),%0" : "=r" (x) : "r" (x)); // "x" = "x" (0)
	//asm ("l.sw\t0x0(%1),%0" : "=r" (y) : "r" (y)); // "y" = "x" (0)
	//asm ("l.sw\t0x0(%1),%0" : "=r" (z) : "r" (z)); // "z" = "x" (0)

	printf("Dump 3: x = %d, y = %d, z = %d\n", x, y, z);

	asm ("l.xor\t%0,%0,%0" : "=r" (x) : "r" (x)); //"x" <- "x" XOR "x"
	asm ("l.addi\t%0,%0,1" : "=r" (x) : "r" (x)); //"x" <- "x" + "x"
	asm ("l.add\t%0,r4,r4" : "=r" (x) : "r" (x)); // "x" <- r4 + r4
	asm ("l.add\t%0,%1,%1" : "=r" (y) : "r" (x)); // "y" <- "x" + "x"
	asm ("l.add\t%0,%1,%1" : "=r" (z) : "r" (y)); // "y" <- "x" + "x"
	asm ("l.nop" : : );

	printf("Dump 4: x = %d, y = %d, z = %d\n", x, y, z);


	//asm ("l.trap" : : );
	//asm ("l.sfnei\tr3,%0" : : "r" (x));
	asm goto ("l.j\t%l[jump]" :  /* no outputs */ : /* no inputs */ : /* no clobbers */ : jump);
jump:	
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	printf("Dump 5: x = %d, y = %d, z = %d\n", x, y, z);

	return 0;

}	/* main () */
