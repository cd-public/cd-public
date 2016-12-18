README:

HW-3 folder includes:

hmm.c:  Source code for the hmm

	#define VERBOSEFLAG is included at the top of the document

hmm.exe:  hmm.c compiled with gcc.

	To compile it, I used (-O3 is, of course, unneeded):

		gcc hmm.c -o hmm.exe -O3

	To use hmm.exe, I usually run: 

		./hmm.exe <{file}.txt

	It will probably draw a warning at compile time:

		"hmm.c: In function ‘main’:
		 hmm.c:841:9: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
   		 srand((unsigned int)words);"

	This is expected and acceptable.

	The current file set-up runs 20 maximizations and print transition probabilities and total probability.

engwordlst.txt:  provided testing materials

trns.csv:  output from hmm.exe over engwordlst.txt

out.txt:  output from 20 runs to analyze state transitions for week 2 problem 3.

	The highest probabilities seem to come from even transition probability on vowels and 60-80% probability of switching on consonants.

	Unsuprisingly, the initial states distance to ideal state determines whether it is reached or a local max is reached.

	Some local maxes occur at 100% transition, and there appears to be a local maximum at around 55% transition.

Graph.xlsm:  3d scatterplot from to process trns.csv
