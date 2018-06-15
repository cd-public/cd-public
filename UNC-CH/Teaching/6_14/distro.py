# Imports - if you need these, use "pip install <name>"

from PIL import Image
import random
import numpy as np


def create_base(size):
	# we want a bunch of lists full of other lists full of still more lists
	return [[[0,0,0] for _ in range(size)] for _ in range (size)]

class complex_plane:
	
	def __init__(self, size, range):
		# square images corresponding to squares of the complex plane
		# centered around 0 + 0i
		# range is an integer
		self.pixels = create_base(size)
		self.range = range
		self.size = size
		
	# c is a complex value
	def inc(self,c):
		i = c.real
		j = c.imag
		i += self.range
		j += self.range
		i *= (self.size / (2 * self.range))
		j *= (self.size / (2 * self.range))
		i = int(i)
		j = int(j)
		self.pixels[i][j] = [255,255,255]
		return
		
	def save(self,filename):
		# Convert the pixels into an array using numpy
		array = np.array(self.pixels, dtype=np.uint8)
		#print(array)
	
		# Use PIL to create an image from the new array of pixels
		new_image = Image.fromarray(array)
		new_image.save(filename)
		return

def random_c(range):
	a = (random.random() * 2 * range) - range
	b = (random.random() * 2 * range) - range
	return complex(a,b)
	
def irr_seq(c):
	i = c.real
	j = c.imag
	if (abs(i) < abs(j)):
		return complex((i+j)/2,i)
	else:
		return complex(j,(i+j)/2)
		
def one_val(plane, iters):
	c_orig = random_c(plane.range)
	# no mirroring
	# for each mirror, check if it escapes
	for index in range(2):
		c = c_orig
		for _ in range(iters):
			plane.inc(c,index)
			c = irr_seq(c)
			
	
def imager():

	size = 400
	r = 2

	# Make a base
	plane = complex_plane(size, r)
	
	for _ in range(640):
		one_val(plane, 5)
		
				
	plane.save("image.png")
	
imager()
