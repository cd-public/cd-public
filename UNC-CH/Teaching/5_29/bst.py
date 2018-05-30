# Integer Binary Search Tree Implementation

# https://en.wikipedia.org/wiki/Binary_search_tree

# usage:
# import bst
# tree = bst.new() # initialize
# tree = tree.<operation> # use the tree

class Node_BST:

	# Built in initialization function - do not call directly
	def __init__(self,initarg):
		self.data = initarg
		self.less = Empty_BST()
		self.more = Empty_BST()
		
	# Built in functions for what to show when used - do not call directly
	def __repr__(self):
		return "Node_BST with root " + str(self.data)
	def __str__(self):
		return self.less.__str__() + str(self.data) + "," + self.more.__str__()
		
	# Simple predicate for testing whether something is empty or not
	def is_empty(self):
		return False

	# Recursive function to insert an integer into the tree
	def insert(self,arg):
		# First we type check
		if (type(arg) != type(1)):
			print("BST ERROR: Attempt to insert non-integer!")
		# Then we see if we should insert to either side (or skip if duplicate)
		if (arg < self.data):
			self.less = self.less.insert(arg)
		if (arg > self.data):
			self.more = self.more.insert(arg)
		return self
		
	# Count the number of integers in the tree
	def size(self):
		return 1 + self.less.size() + self.more.size()

	# Find the longest distance from this root to a leaf (empty)
	def height(self):
		return 1 + max(self.less.height, self.more.height)
	
	# Perform binary search
	def contains(self, arg):
		if (arg == self.data):
			return True
		if (arg < self.data):
			return self.less.contains(arg)
		else:
			return self.more.contains(arg)
			
	# Find the minimum (and a remove helper)
	def get_min(self):
		if self.less.is_empty():
			return self.data
		return self.less.get_min()
	
	# Find the maximum (and a remove helper)
	def get_max(self):
		if self.more.is_empty():
			return self.data
		return self.more.get_max()
			
	# Remove an element from the tree if it is present
	def remove(self, arg):
		if (self.data == arg):
			if self.less.is_empty():
				return self.more
			if self.more.is_empty():
				return self.less
			self.data = self.less.get_max()
			self.less = self.less.remove(self.data)
			return self
		if (arg < self.data):
			self.less = self.less.remove(arg)
		else:
			self.more = self.more.remove(arg)
		return self
			
class Empty_BST:
	# No initialization necessary as there is no data in the data structure
	
	# Built in functions for what to show when used - do not call directly
	def __repr__(self):
		return "Empty BST"
	def __str__(self):
		return ""

	# Simple predicate for testing whether something is empty or not		
	def is_empty(self):
		return True
		
	# Inserting into an empty tree is returning a new tree with arg as root
	def insert(self,arg):
		if (type(arg) != type(1)):
			print("BST ERROR: Attempt to insert non-integer!")
			return self
		return Node_BST(arg)
		
	# Empty trees contain no elements
	def size(self):
		return 0
		
	# Empty trees have height zero
	def height(self):
		return 0
	
	# No elements are present in an empty tree
	def contains(self, arg):
		return False

	# Nothing can be removed from an empty tree
	def remove(self, arg):
		return self

# Name: new
# In:  Nothing
# Out:  An empty integer binary search tree that supports any of the following:
#  * insert - takes an integer and returns the tree with the integer added
#  * size - returns the number of elements in a tree
#  * height - returns the size of the longest path to an element of the tree
#  * contains - takes an integer and returns True if the int is in the tree
#  * remove - takes an integer and returns a tree with the element not in it
# Description:  Implements an integer binary search tree
# Example:
# import bst
# tree = bst.new()
# for i in [5,3,7,2,4,6,8]:
#     tree = tree.insert(i)
# tree.contains(8) = True
# tree = tree.remove(5)
# tree.contains(5) = False
def new():
	return Empty_BST()
