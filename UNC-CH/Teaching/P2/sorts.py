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
# make sure you have no repeated values!
# Example:  gen_tests() gives
# 1 <size = 1, presorted>
# 1 <size = 1, unsorted>
# 1,2 <size = 2 (1 * 2), presorted>
# 2,1 <size = 2 (1 * 2), unsorted>
# 1,2,3,4 <size = 4 (1 * 2 * 2), presorted>
# 2,3,1,4 <size = 4 (1 * 2 * 2), unsorted>
# these "size=1" just gives default arguments, similar to stuff in A2
def gen_tests(size=1,gf=2,sizes=3,fname="tests.csv"):
  return # your code here
    
# reads in a csv file of integers and returns a list of the lists of value contained in the file
# Example:  file_to_lists() <called after gen_tests()>
# [[1],[1],[1,2],[2,1],[1,2,3,4],[2,3,1,4]]
def file_to_lists(fname="tests.csv"):
  return # your code here

##
## Data Structure
##

# Compare at least 3 sorting styles that you have written - I would use sl.py, bst.py, and one other
import sorted_list as sl, bst

# The third option I recommend is a binary heap
# It is like a bst but the difference is that rather than one child being greater than the root
# and the other child less, children are always greater than parents so the root is always the minimum
# https://en.wikipedia.org/wiki/Binary_heap
# https://www.cs.usfca.edu/~galles/visualization/Heap.html
# Traditional heaps are implemented on top of arrays or you can slightly rework the bst code
class Heap:
    #your code here
    
# Another 3rd option I would recommend is mergesort
# https://en.wikipedia.org/wiki/Merge_sort
# Mergesort is the best in the business and would be easy to implement on either python lists or you own list implementation
# * I should note that it is technically an opinion mergesort is the best

# Name:  Merge Sort
# In:  A list, such as [2,4,3,1]
# Out: The same list sorted, such as [1,2,3,4]
# Description:  Merge sort splits lists in half, sorts the halves with mergesort, then merges the two halves
# Example:
# merge_sort([2,4,3,1]) = merge(merge_sort([2,4]),merge_sort([3,1])) = merge([2,4],[1,3]) = [1,2,3,4]
def merge(list1,list2):
  return # your code here

def merge_sort(list):
  return # your code here

##
## Graph
##

# timed sort - takes a list of integer (ie [3,4,1,2]) and a sorting function and returns a time it took to run the sort
# example:  timed_sort(bst_sort, list) returns some time (ie 0.0060004196) in seconds
def timed_sort(sort_fun, list):
  start = time.time()
  sort_fun(list)
  return time.time() - start
  
# time the 3 different sorts on all the data sets in inname and save the times as a csv to outname
# something like:
# size, bst, sl, 3
# 10000, 0.06, 0.15, 0.04
# 10000000, 0.51, 1.07, 0.35
def gen_data(inname="tests.csv", outname="times.csv")
  return # your code here

# graph the csv a la the example and A2
def gen_graph(data="times.csv")
  return # your code here

##
## Imagery
##

# make bst image - makes a picture that looks like a bst
def make_bst_image():
  return # maybe you want to take a bst as input or whatever

# make sl image - makes a picture that looks like a bst
def make_sl_image():
  return # I drew out lists a bit in class.  Maybe something like that?

def make_3_image():
  return # whatever your third sort is, a picture is worth a thousand words

# if you want to combine the 3 images (I don't care as long as you make something)
# takes 3 images as .png files
def image_combine(img1,img2,img3):
  img1 = Image.open(img1 + ".png")
  img2 = Image.open(img2 + ".png")
  img3 = Image.open(img3 + ".png")
	result = Image.new("RGB", (100, 300)) # gonna assume 3 100x100 images - if they
  result.paste(img1,(0,0,100,100))
	result.paste(img2,(0,100,100,200))
	result.paste(img2,(0,200,100,300))
  result.save("image.png")
