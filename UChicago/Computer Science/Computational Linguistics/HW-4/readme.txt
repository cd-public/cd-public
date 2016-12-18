README:

HW-4 folder includes:

morph.c:  Source code for the affix/anagram analyzer

	Currently it accepts a .dx1 file and outputs unordered signature tables

morph.exe:  hmm.c compiled with gcc.

	To compile it, I used (-O3 is, of course, unneeded):

		gcc morph.c -o morph.exe -O3

	To use morph.exe, I usually run: 

		./morph.exe <{file}.dx1

	This will output the unordered signature table to stdout.

	Words may be part of multiple affix sets as a stem may have more than two affixes. (part 7)

Testing:  Directory containing two sub-directories:

	Test Dictionaries:

		2 dictionaries I selected from the options online.

	Test Outputs:

		2 outputs from ph_tester.exe corresponding to the 2 dictionaries.

			For my dictionary, Quenya, reduced corpus size led to no more than 2 anagram/affix pairs per anagram

			Consequently, I modified output to provide any anagram/affix pair output.

			I found lolspeak especially interesting.

			Despite the unstructured nature of the language, anagram/affix pairs abounded.

			In particular, clumpings of common letters, such as am-bor, drew large numbers of pairs (though less than 10)

			Multiple pluralizations, devaluation of letter order, and interchange of vowels made up the most pairs.



			
