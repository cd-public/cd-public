# Imports - if you need these, use "pip install <name>"

from PIL import Image
import random
import numpy as np

def create_base(size):
	# we want a bunch of lists full of other lists full of still more lists
	return [[[0,0,0] for _ in range(size)] for _ in range (size)]

def random_pixel(size):
	return (int(random.random() * size), int(random.random() * size))
	
# base is the image
# color is the color to modify
# i,j is the prioritized pixel location
def color_random(base,color,i_in,j_in):
	size = len(base)
	(i,j) = random_pixel(200)
	while (i - 100)**2 + (j - 100)**2 > 10000:
		(i,j) = random_pixel(200)
	# convert value and checks to see if it's valid
	i += i_in
	i -= 100
	j += j_in
	j -= 100
	for x in range(size):
		c = int(abs(i - x) / 8) + base[x][j][color]
		base[x][j][color] = c
	for y in range(size):
		c = int(abs(j - y) / 8)  + base[i][y][color]
		base[i][y][color] = c
	return base
	
def imager():

	size = 400

	# Make a base
	base = create_base(size) # odd values are cleaner around the axes
	
	for i in range(640):
		base = color_random(base,0,100,100)	
	for i in range(640):
		base = color_random(base,1,300,100)	
	for i in range(640):
		base = color_random(base,2,100,300)
		
				
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	print(array)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("imgs/image.png")
	
imager()
