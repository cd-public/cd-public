# Imports - if you need these, use "pip install <name>"

from PIL import Image
import numpy as np

def create_base(size):
	# we want a bunch of lists full of other lists full of still more lists
	return [[[0,0,0] for _ in range(size)] for _ in range (size)]
	
# pos gives the i and j coordinates of the top right corner, size gives edge length, color gives, well, you know
def square(pos_i, pos_j, size, color, base):
	for i in range(pos_i, pos_i + size):
		for j in range (pos_j, pos_j + size):
			base[i][j] = color
	return base

# pos gives the i and j coordinates of the center of the circle, size gives radius, color, yeah	
def circle(pos_i, pos_j, size, color, base):
	for i in range(pos_i - size, pos_i + size):
		for j in range (pos_j - size, pos_j + size):
			if ((i - pos_i)**2 + (j - pos_j)**2) < size**2:
				base[i][j] = color
	return base	
	
# checker takes a square given by x and y values [0,7] and a color on a base to make a checker
def checker(x,y,color,base):
	return circle(x*101+50,y*101+50,40,color,base)
	
# does what you think
def no_checker(x,y,base):
	return square(x*101,y*101,101,[255,0,0],base)
	
def imager():

	size = 808

	# Make a base
	base = create_base(size) # odd values are cleaner around the axes
	
	# Make the board
	red = [255,0,0]
	for big_i in range(4):
		for big_j in range (4):
			base = square(big_i * (size//4), big_j * (size//4), (size//8), red, base)
			base = square(big_i * (size//4) + (size//8), big_j * (size//4) + (size//8), (size//8), red, base)

	# Make the checkers
	color1 = [0,255,0]
	for i in range(4):
		base = checker(0,i*2,color1,base)
		base = checker(1,i*2+1,color1,base)
		base = checker(2,i*2,color1,base)
		base = checker(3,i*2+1,color1,base)
		
	color1 = [0,0,255]
	for i in range(4):
		base = checker(7,i*2+1,color1,base)
		base = checker(6,i*2,color1,base)
		base = checker(5,i*2+1,color1,base)
		base = checker(4,i*2,color1,base)
		
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("bad_checkerboard.png")
		
	for i in range(4):
		base = no_checker(3,i*2+1,base)
		base = no_checker(4,i*2,base)
			
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("checkerboard.png")

# a checkers game is a two dimensional array
# this array is an 8 by 8 array to represent the board
# only half the squares are legal squares to occupy
# new_game will create a checkers game with pieces in starting positions
# a piece is a array entry that will either be 0 (no piece) 1 (team 1) or 2 (team 2)
def new_game():
	grid = list(range(8))
	for i in range(8):
		grid[i] = list(range(8))
		for j in grid[i]:
			grid[i][j] = 0
	
	# add team 1 to starting positions
	for i in range(4):
		grid[0][i*2] = 1
		grid[1][i*2+1] = 1
		grid[2][i*2] = 1

	# add team 2 to starting positions
	for i in range(4):
		grid[7][i*2+1] = 2
		grid[6][i*2] = 2
		grid[5][i*2+1] = 2
		
	return grid	

def print_board(grid):

	size = 808

	# Make a base
	base = create_base(size) # odd values are cleaner around the axes
	
	# Make the board
	red = [255,0,0]
	for big_i in range(4):
		for big_j in range (4):
			base = square(big_i * (size//4), big_j * (size//4), (size//8), red, base)
			base = square(big_i * (size//4) + (size//8), big_j * (size//4) + (size//8), (size//8), red, base)

	# Make the checkers
	colors = [[255,0,0],[0,255,0],[0,0,255]]
	for i in range(8):
		for j in range(8):
			base = checker(i,j,colors[grid[i][j]],base)
		
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("bad_checkerboard.png")
		
	for i in range(4):
		base = no_checker(3,i*2+1,base)
		base = no_checker(4,i*2,base)
			
	# Convert the pixels into an array using numpy
	array = np.array(base, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("checkerboard.png")
