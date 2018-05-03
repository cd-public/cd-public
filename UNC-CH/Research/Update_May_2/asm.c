#include <stdio.h>
/* Simple demo of the asm directive */

void triv () {
	return;
}

int main (int   argc,
	  char *argv[])
{
asm("l.rfe"); // [],
asm ("l.j\t0");
asm ("l.bf\t0");
asm ("l.bnf\t0");
asm ("l.jal\t0");
asm("l.sys\t0"); // ["K"],
asm("l.nop"); // ["K"],
asm("l.trap\t0"); // ["K"],
asm("l.jr\tr3"); // ["rB"],
asm("l.jalr\tr3"); // ["rB"],
asm("l.movhi\tr3,0"); // ["rD", "K"],
asm("l.sfeq\tr3,r3"); // ["rA", "rB"],
asm("l.sfne\tr3,r3"); // ["rA", "rB"],
asm("l.sfges\tr3,r3"); // ["rA", "rB"],
asm("l.sfgeu\tr3,r3"); // ["rA", "rB"],
asm("l.sfgts\tr3,r3"); // ["rA", "rB"],
asm("l.sfgtu\tr3,r3"); // ["rA", "rB"],
asm("l.addi\tr3,r3,0"); // ["rD", "rA", "I"],
asm("l.xori\tr3,r3,0"); // ["rD", "rA", "I"],
asm("l.ori\tr3,r3,0"); // ["rD", "rA", "K"],
asm("l.andi\tr3,r3,0"); // ["rD", "rA", "K"],
asm("l.mfspr\tr3,r3,0"); // ["rD", "rA", "K"],
asm("l.mtspr\tr3,r3,0"); // ["rA", "rB", "K"],
asm("l.rori\tr3,r3,0"); // ["rD", "rA", "L"],
asm("l.slli\tr3,r3,0"); // ["rD", "rA", "L"],
asm("l.srai\tr3,r3,0"); // ["rD", "rA", "L"],
asm("l.srli\tr3,r3,0"); // ["rD", "rA", "L"],
asm("l.or\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.add\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.and\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.sll\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.sra\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.srl\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.xor\tr3,r3,r3"); // ["rD", "rA", "rB"],
asm("l.sb\t0(r3),r3"); // ["I", "(", "rA", ")", "rB"],
asm("l.sh\t0(r3),r3"); // ["I", "(", "rA", ")", "rB"],
asm("l.sw\t0(r3),r3"); // ["I", "(", "rA", ")", "rB"],
asm("l.lbs\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
asm("l.lbz\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
asm("l.lhs\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
asm("l.lhz\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
asm("l.lws\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
asm("l.lwz\tr3,0(r3)"); // ["rD", "I", "(", "rA", ")"],
}

int also_not_main (int   argc,
	  char *argv[])
{
	unsigned long int  x, y, z;
	void (*dst)(int) = &triv;
	x = 49;
	y = 64;
	z = 81;

	printf("Dump 1: x = %d, y = %d, z = %d\n", x, y, z);
	
	asm ("l.xor\tr3,r3,r3"); //"x" <- "x" XOR "x"

	printf("Dump 2: x = %d, y = %d, z = %d\n", x, y, z);

	asm ("l.add\tr3,r3,r3" : "=r" (x) : "r" (x)); //"x" <- "x" + "x"
	asm ("l.sw\t0x0(%0),%0" : "=r" (x) : "r" (x)); // "x" = "x" (0)
	//asm ("l.sw\t0x0(%1),%0" : "=r" (y) : "r" (y)); // "y" = "x" (0)
	//asm ("l.sw\t0x0(%1),%0" : "=r" (z) : "r" (z)); // "z" = "x" (0)

	printf("Dump 3: x = %d, y = %d, z = %d\n", x, y, z);

	asm ("l.xor\t%0,%0,%0" : "=r" (x) : "r" (x)); //"x" <- "x" XOR "x"
	asm ("l.addi\tr3,r3,1" : "=r" (x) : "r" (x)); //"x" <- "x" + "x"
	asm ("l.add\tr3,r4,r4" : "=r" (x) : "r" (x)); // "x" <- r4 + r4
	asm ("l.add\t%0,%1,%1" : "=r" (y) : "r" (x)); // "y" <- "x" + "x"
	asm ("l.add\t%0,%1,%1" : "=r" (z) : "r" (y)); // "y" <- "x" + "x"
	asm ("l.nop" : : );

	printf("Dump 4: x = %d, y = %d, z = %d\n", x, y, z);


	asm ("l.trap\t7");
	asm ("l.sys\t7");
	//asm ("l.sfnei\tr3,%0" : : "r" (x));
	asm ("l.j\t0");
jump:	
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.nop" : : );
	asm ("l.sh\t0(r3),r3");
	printf("Done.");

	return 0;

}	/* main () */

int not_main (int   argc,
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
	printf("Done.");

	return 0;

}	/* main () */
