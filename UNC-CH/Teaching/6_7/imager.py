# Imports - if you need these, use "pip install <name>"

from PIL import Image
#import random
import numpy as np

def create_base(size):
	# we want a bunch of lists full of other lists full of still more lists
	return [[[0,0,0] for _ in range(size)] for _ in range (size)]	
	
# treats the base as a ([-5,5),[-5,5)) x-y coordinate space
def xy_to_base(base,x,y,size,color):
	j = int((x + 5) * (size/10))
	i = int((5 - y) * (size/10))
	base[i][j] = color

# complex value with both real and imaginary components in [-2,2]
# do something (change color) of a pixel corresponding to that complex value
# in the image base given
def c_to_base(base,c,size,color):
	i = int((c.real + 2) * (size/4))
	j = int((c.imag + 2) * (size/4))
	
# check if a c value is in the mandelbrot set
def mandel(c,iter):
	seq = c
	for _ in range(iter):
		seq = seq*seq + c
		if abs(seq) > 2:
			return False
	return True
	
# returns a complex value
def base_to_c(i,j,size):
	return complex((i*4/(size))-2,j*4/(size)-2)
	
def imager():

	size = 400

	# Make a base
	base = create_base(size) # odd values are cleaner around the axes
	
	# do something to not just have a blank image (it will be all black by default
	for i in range(size):
		for j in range(size):
			if mandel(base_to_c(i,j,size),20):
				base[i][j][0] = 255
			if mandel(base_to_c(i,j,size),200):
				base[i][j][1] = 255
			if mandel(base_to_c(i,j,size),2000):
				base[i][j][2] = 255
				
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("image.png")
	
