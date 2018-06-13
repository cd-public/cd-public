# Integer Binary Search Tree Implementation

# https://en.wikipedia.org/wiki/Binary_search_tree

# usage:
# import bst
# tree = bst.BST() # initialize
# tree.<operation> # use the tree

class Node:

	def __init__(self,initarg):
		self.data = initarg
		self.less = None
		self.more = None

class BST:

	# Built in initialization function - do not call directly
	def __init__(self):
		self.bst = None
		self.count = 0
		
	# Built in functions for what to show when used - do not call directly
	def __repr__(self):
		return self.__str__()
	def __str__(self):
		

	# Recursive function to insert an integer into the tree
	def insert(self,arg):
		temp = self.bst
		if (temp == None):
			self.bst = Node(arg)
			self.count = 1
			return
		while(True):
			if (temp.data < arg):
				if (temp.more == None):
					temp.more = Node(arg)
					self.count += 1
					return
				temp = temp.more
			if (temp.data > arg):
				if (temp.less == None):
					temp.less = Node(arg)
					self.count += 1
					return
				temp = temp.less
			
	# Count the number of integers in the tree
	def size(self):
		return self.count

	# Find the longest distance from this root to a leaf (empty)
	#def height(self):
	#	return 1 + max(self.less.height, self.more.height)
	
	# Perform binary search
	def contains(self, arg):
		temp = self.bst
		if (temp == None):
			return False
		while(True):
			if (temp.data == arg):
				return True
			if (temp.data < arg):
				if (temp.more == None):
					return False
				temp = temp.more
			if (temp.data > arg):
				if (temp.less == None):
					return False
				temp = temp.less
			
	# Remove an element from the tree if it is present
	def remove(self, arg):
		if (self.bst == None):
			return
		if (self.bst.data == arg):
			if (self.bst.less == None):
				self.bst = self.bst.more
				return
			if (self.bst.more == None):
				self.bst = self.bst.less
				return
			# find the minimum of the more side
			# (or the maximum of the less side)
			# set that value to be the new root
			# remove that value from it's original location
			temp = self.bst.more
			while (temp.less != None):
				temp = temp.less
			new_root = temp.data
			self.remove(new_root)
			self.bst.data = new_root
			return
		prev = self.bst
		if (prev.data < arg):
			temp = prev.more
		if (prev.data > arg):
			temp = prev.less
		while(True):
			if (temp.data == arg):
				if (prev.data > arg):
					# update prev.less
					if (temp.less == None):
						prev.less = temp.more
						return
					if (self.bst.more == None):
						prev.less = temp.less
						return
					# two child case
					# find the minimum of the more side
					# (or the maximum of the less side)
					# set that value to be the new root
					# remove that value from it's original location
					min = temp.more
					while (min.less != None):
						min = min.less
					new_data = min.data
					self.remove(new_data)
					temp.data = new_data
					return	
				if (prev.data < arg):
					# update prev.more
					if (temp.less == None):
						prev.more = temp.more
						return
					if (self.bst.more == None):
						prev.more = temp.less
						return
					# two child case
					# find the minimum of the more side
					# (or the maximum of the less side)
					# set that value to be the new root
					# remove that value from it's original location
					min = temp.more
					while (min.less != None):
						min = min.less
					new_data = min.data
					self.remove(new_data)
					temp.data = new_data
					return					
			if (temp.data < arg):
				if (temp.more == None):
					return
				prev = temp
				temp = temp.more	
			if (temp.data > arg):
				if (temp.less == None):
					return
				prev = temp
				temp = temp.less
