class List:
	def __init__(self,initarg):
		self.data = initarg
		self.next = Empty()
		
	def __repr__(self):
		return "(" + str(self.data) + ")->" + self.next.__repr__()
	def __str__(self):
		return "(" + str(self.data) + ")->" + self.next.__repr__()
		
	def insert(self,arg):
		self.next = self.next.insert(arg)
		return self
		
	def size(self):
		return 1 + self.next.size()
	
	def contains(self, arg):
		if (arg == self.data):
			return True
		return self.next.contains(arg)
				
	def remove(self, arg):
		if (self.data == arg):
			return self.next
		self.next = self.next.remove(arg)
		return self
			
class Empty:
	   
	def __repr__(self):
		return "()"
	def __str__(self):
		return "()"
		
	def insert(self,arg):
		return List(arg)
		
	def size(self):
		return 0
	
	def contains(self, arg):
		return False
				
	def remove(self, arg):
		return self
		
def new():
	return Empty()
