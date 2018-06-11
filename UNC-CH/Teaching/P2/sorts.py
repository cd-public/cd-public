# sorts.py - a final option

# 4 components:
# File IO
# Graph
# Data Structure
# Image

# For File IO, we will create functions that read and write data structures from files
# For the graph, we will compare the speed of sorting using 3 different methods.
# For the data structures, we will use list, bst, and possible one more
# For the image, we will create a visual to represent the data structures

# imports
import random, time
# see, ie https://stackoverflow.com/questions/1557571/how-do-i-get-time-of-a-python-programs-execution

##
## File IO
##

# We will generate sets of integer values of (1) various sizes and (2) either random or pre-sorted
# We will write this lists to a .csv file as a single line each
# Then our testing data can persist across program runs
# size gives base size, growth factor gives multiplier between sizes, sizes gives number of sizes
# fname gives name of output file
# for good data you'll probably be wanting around a million values to sort
# Example:  gen_tests() gives
# 1 <size = 1, presorted>
# 1 <size = 1, unsorted>
# 1,2 <size = 2 (1 * 2), presorted>
# 2,1 <size = 2 (1 * 2), unsorted>
# 1,2,3,4 <size = 4 (1 * 2 * 2), presorted>
# 2,3,1,4 <size = 4 (1 * 2 * 2), unsorted>
def gen_tests(size=1,gf=2,sizes=3,fname="tests.csv"):
  return # your code here
    
