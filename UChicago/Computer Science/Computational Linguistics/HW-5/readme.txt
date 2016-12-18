README:

HW-4 folder includes:

compress.c:  Source code for the affix/anagram analyzer

	Currently it accepts a .dx1 file and outputs unordered signature tables

compress.exe:  compress.c compiled with gcc.

	To compile it, I used:

		gcc compress.c -o compress.exe

	To use compress.exe, I usually run: 

		./compress.exe <{file}.dx1 >out.out

	This will output the 6-tuple intervals table to stdout.

grapher.R:  function that takes 6-tuple intervals table in out.out and graphs to a .pdf

	I usually run

		R --vanilla < grapher.R

Testing:  Directory containing three sub-directories:

	Test Dictionaries:

		2 dictionaries:  Quenya for my interests and lolspeak because it is now my favorite "English" dictionary after some study.

	Test Outputs:

		2 outputs from compress.exe corresponding to the 2 dictionaries.

	Test Graphs:

		2 outputs from grapher.R corresponding to the 2 dictionaries.

			Quenya, as a manufactured language, perhaps unsurprisingly lacks decisive structure.

			However, there is some reasonable clumping of the data toward the start of the alphabet, more noticeable on endings.

			Lolspeak has clear and undeniable clumping around some common letters, unsuprising given its colloquial nature.

			In particular, the incredible bias toward "z" usage exhibited by the language is immensely clear.


			
