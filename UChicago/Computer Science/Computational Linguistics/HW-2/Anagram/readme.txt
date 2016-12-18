README:

HW-2/Anagram folder includes:

anagram.c:  Source code for the anagram finder

	#define HASHSIZE as the beginning of the program can be changed if anagram is running too slowly

anagram.exe:  anagram.c compiled with gcc.

	To compile it, I used (-O3 helps time restraint):

		gcc anagram.c -o anagram.exe -O3

	To use anagram.exe, I usually run: 

		./anagram.exe <{file}.{(dx1)/(txt)}

	On my home set up it processed the 235k list in between 8 and 9 seconds, adjust HASHSIZE if necessary


Testing:  Directory containing testing examples:

	*.txt: example input

	*.out: example output
