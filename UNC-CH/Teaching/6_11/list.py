class Node:
	def __init__(self,initarg):
		self.data = initarg
		self.next = None
		
class List:

	def __init__(self):
		self.list = None
		self.count = 0
		
	def __repr__(self):
		s = "["
		temp = self.list
		while (temp != None):
			s += str(temp.data) + ","
			temp = temp.next
		s = s[:-1] + "]"
		return s
		
	def __str__(self):
		return self.__repr__()
		
	def insert(self,arg):
		new = Node(arg)
		new.next = self.list
		self.list = new
		self.count += 1
		return
		
	def size(self):
		return self.count
	
	def contains(self,arg):
		temp = self.list
		while (temp != None):
			if temp.data == arg:
				return True
			temp = temp.next
		return False
		
	def remove(self,arg):
		if self.list != None:
			if self.list.data == arg:
				self.list = self.list.next
				self.count -= 1
			return
		temp = self.list.next
		prev = self.list
		while (temp != None):
			if temp.data == arg:
				prev.next = temp.next
				self.count -= 1
			prev = temp
			temp = temp.next
