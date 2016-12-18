README:

HW-1 folder includes:

ph_test.c:  Source code for the .dx1 processing program.

ph_tester.exe:  ph_test.c compiled with gcc.

	To compile it, I used (-O3 is, of course, not necessary):

		gcc ph_test.c -o ph_tester.exe -O3

	To use ph_tester.exe, I usually run: 

		./ph_tester.exe <{language}.dx1 >{language}.out

quenya.dx1:  My .dx1 file as well as the sample input for ph_tester.exe

quenya.out:  My sample output file as well as one of my 6 required outputs.

Testing:  Directory containing two sub-directories:

	Test Dictionaries:

		5 dictionaries I selected from the options online.

	Test Outputs:

		5 outputs from ph_tester.exe corresponding to the 5 dictionaries.
