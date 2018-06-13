# Imports - if you need these, use "pip install <name>"

from PIL import Image
import random
import numpy as np

def create_base(size):
	# we want a bunch of lists full of other lists full of still more lists
	return [[[0,0,0] for _ in range(size)] for _ in range (size)]

def random_pixel(size):
	return (int(random.random() * size), int(random.random() * size))
	
def irr_seq(i,j):
	if (random.random() > .5):
		return ((i+j)/2,i)
	else:
		return (j,(i+j)/2)
	
# base is the image
# color is the color to modify
# i,j is the prioritized pixel location
def color_random(base,color,iters):
	size = len(base)
	(i,j) = random_pixel(size)
	orig = (i,j)
	#print(str(i),str(j))
	for _ in range(iters):
		base[int(i)][int(j)][color] += 75
		(i,j) = irr_seq(i,j)
	(j,i) = orig
	for _ in range(iters):
		base[int(i)][int(j)][color] += 75
		(i,j) = irr_seq(i,j)
	return base
	
def imager():

	size = 400

	# Make a base
	base = create_base(size) # odd values are cleaner around the axes
	
	for i in range(640):
		base = color_random(base,0,20)	
	for i in range(640):
		base = color_random(base,1,20)	
	for i in range(640):
		base = color_random(base,2,20)
		
				
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	#print(array)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("image.png")
	
imager()
