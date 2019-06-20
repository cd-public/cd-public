using command

java daikon.Daikon --config no_filter.txt boot2.dtrace inp2.decls inp2.spinfo

Property 3, "Instruction is POPF or IRET and CPL == 0	=>	IOPL_old == IOPL_new", was found at lines 47, 111, and 175.

Traces used were custom traces made by a modified front end (the included python files) that only considered registers necessary for this property.  This was necessary in testing phase to study built-in Daikon filters which had been removing this property.

The property can be found over the full trace as well.

The order of variables listed in the .decls / .dtrace affects whether this property can be found; it can only be discovered when IOPL comes before CPL (!!!).
