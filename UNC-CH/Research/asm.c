/* Simple demo of the asm directive */
int main (int   argc,
	  char *argv[])
{
  unsigned long int  x = 42UL;
  unsigned long int  z = 561UL;

  asm ("l.add\tr1,r0,%0" : : "r" (x));
  asm ("l.sw\t0x0(r0),%0" : : "r" (z));

}	/* main () */
