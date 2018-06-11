# exercise.py - sample final project

# Recall the final project must have 4 componenets
#  - Data Structures:  see class "day"
#  - File I/O:  see "day_parse" and others
#  - Graphing
#  - Imagery

# this implements a manager for phrak's greyskull lp variant
# yes that's its real name
# yes, unironically as far as I can tell
# no, I don't know either
# https://www.reddit.com/r/Fitness/wiki/phraks-gslp
# yes, that is a reddit address
# yes, I am sorry

# imports
from PIL import Image
import pandas as pd, matplotlib as mpl, os, numpy as np

# For a properly formatted date string (<month>/<day>/<year>)
# calculates days from the beginning of the millenium and returns that int
def date_to_day(str):
	splits = str.split("/")
	splits = [int(i) for i in splits]
	days = int(365.25 * splits[2] + 1)
	mon_len = [31,28,31,30,31,30,31,31,30,31,30,31]
	if (splits[2] % 4 == 0):
		mon_len[1] = 29
	days += sum(mon_len[:splits[0]-1]) # add days for each complete month
	days += splits[1]
	return days

# exercise array to a string
def ex_arr_str(arr):
	s = ""
	for i in arr:
		s += str(int(i[0])) + "x " + str(int(i[1])) + "\n"
	return s + "\n"

##
## Data structure component
##
	
# a day is one trip to the gym
class day:
	
	# Built in initialization function - do not call directly
	def __init__(self,date):
		self.date = date_to_day(date)
		self.row = [] # barbell row
		self.bench = [] # bench press
		self.squat = [] # barbell squat
		self.chinup = [] # chinup
		self.press = [] # overhead press
		self.deadlift = [] # deadlift
		
	def __str__(self):
		s = "d=" + str(self.date) + "\n\n"
		if self.row != []:
			s += "Row\n"
			s += ex_arr_str(self.row)
		if self.chinup != []:
			s += "Chinup\n"	
			s += ex_arr_str(self.chinup)
		if self.bench != []:
			s += "Bench\n"	
			s += ex_arr_str(self.bench)
		if self.press != []:
			s += "Press\n"	
			s += ex_arr_str(self.press)
		if self.squat != []:
			s += "Squat\n"	
			s += ex_arr_str(self.squat)
		if self.deadlift != []:
			s += "Deadlift\n"	
			s += ex_arr_str(self.deadlift)
		return s
			
	def __repr__(self):
		return self.__str__()
	
	# add exercises as an array
	def add_exercise(self, name, array):
		if name == "Row":
			self.row = array
		if name == "Bench":
			self.bench = array
		if name == "Squat":
			self.squat = array
		if name == "Chinup":
			self.chinup = array
		if name == "Press":
			self.press = array
		if name == "Deadlift":
			self.deadlift = array
		# no other exercises known, fail silently

# parses a line formatted as 
# "<reps>x <weight in lbs>"
# within an exercise entry in a list
# [<reps>,<weight>]
def ex_line_parse(line):
	splits = line.split("x ")
	return [float(splits[0]),float(splits[1])]
	
# given a day structure and file pointer at or before the beginning of an 
# exercise entry within the file for that day, creates an array of the exercise
# and it's it to the day structure
# return the day as modified
# Format:
# <name>
# "<reps>x <weight in lbs>" x 5
# <empty line>
def ex_parse(day,file):
	exercise = ""
	array = []
	exercises = ["Row","Bench","Squat","Chinup","Press","Deadlift"]
	# now we need to get to the beginning of the exercise entry
	while (exercise == ""):
		line = file.readline() 
		for i in exercises:
			if i in line:
				exercise = i
	line = file.readline()
	while "x " in line:
		array += [ex_line_parse(line)]
		line = file.readline()
	day.add_exercise(exercise,array)
	return day
	
##
## File I/O Component
##
	
# reads a days worth of info from a file and returns a day	
# format:
# "<month>/<day>/<year>"
# <empty line>
# <name>
# "<reps>x <weight in lbs>" x 5
# <empty line>
# ...
# there will always be three exercises in a day
def day_parse(file):
	line = file.readline()
	to_ret = day(line)
	for i in range(3): # 3 exercises
		to_ret = ex_parse(to_ret,file)
	return to_ret
	
# take an old set and update
def new_set(array,exercise):
	arr = list(map(list, zip(*array))) # this gets the minimum of the weights
	reps = sum(arr[0])
	weight = min(arr[1])
	if exercise == "Deadlift":
		reps += 10
	if reps > 20:
		weight += 10
		if exercise == "Deadlift" or exercise == "Squat":
			weight += 10
	if reps >= 15:
		weight += 5
		if exercise == "Deadlift" or exercise == "Squat":
			weight += 5
	if reps < 15:
		weight /= 5
		weight *= .9
		weight = int(weight) * 5
	if exercise == "Deadlift":
		return [[5,weight]]
	else:
		return [[5,weight]] * 3
	
# generate a day structure for what should be done at the next workout
# chinups and rows alternate
# press and bench alternates
# deadlift every third workout, squats otherwise
# all lifts except deadline should reach 15 total reps
# if 20 is reached, increase weight for all but deadline/squat by 10 lbs
# if 15 is reached, increase same by 5 lbs
# if 15 is not reached, reduce by 10% (and get to nearest 5 multiple)
# double increases for squat/deadlift
# deadlift needs only 5/10 reps
def new_day(file):
	# get last 3 days - this will tell us all we need.
	days = [day_parse(file) for _ in range(3)]
	# make a new day
	nd = day("0/0/0") # set date after workout
	# populate with updates to correct exercises from most recent levels
	if days[0].row == []:
		nd.add_exercise("Row",new_set(days[1].row,"Row")) # exercise title irrelevant for first 4
	else:
		nd.add_exercise("Chinup",new_set(days[1].chinup,"Chinup"))
	if days[0].bench == []:
		nd.add_exercise("Bench",new_set(days[1].bench,"Bench"))
	else:
		nd.add_exercise("Press",new_set(days[1].press,"Press"))
	if days[0].deadlift == [] and days[1].deadlift == []:
		nd.add_exercise("Deadlift",new_set(days[1].deadlift,"Deadlift"))
	else:
		if days[0].squat == []:
			nd.add_exercise("Squat",new_set(days[1].squat,"Squat"))
		else:
			nd.add_exercise("Squat",new_set(days[0].squat,"Squat"))
	return nd

##
## Graph component
##
	
# Graph the last num days of file
# this will write to a temporary file - ye be warned
def graph(file="log.txt",num=3):
	# get last num days
	file = open(file,"r")
	days = [day_parse(file) for _ in range(num)]
	# gonna convert to a csv
	# we probably only care about weight for our graphs... right?
	s = "day,row,chinup,bench,press,squat,deadlift\n"
	base = days[len(days)-1].date
	squat = None
	deadlift = None
	for i in range(num):
		d = days[i]
		s += str(d.date - base) + ","
		if d.row != []:
			s += str(min(list(map(list, zip(*d.row)))[1])) # this uh, takes the minimum of the weights (I think)
		else:
			if i > 0 and i < num - 1:  # or we take the average for an interior point (just to fill the graph in)
				s += str((min(list(map(list, zip(*days[i-1].row)))[1]) + min(list(map(list, zip(*days[i+1].row)))[1]))/2)	
		s += ","
		if d.chinup != []:
			s += str(min(list(map(list, zip(*d.chinup)))[1]))
		else:
			if i > 0 and i < num - 1:
				s += str((min(list(map(list, zip(*days[i-1].chinup)))[1]) + min(list(map(list, zip(*days[i+1].chinup)))[1]))/2)	
		s += ","
		if d.bench != []:
			s += str(min(list(map(list, zip(*d.bench)))[1]))
		else:
			if i > 0 and i < num - 1:
				s += str((min(list(map(list, zip(*days[i-1].bench)))[1]) + min(list(map(list, zip(*days[i+1].bench)))[1]))/2)	
		s += ","
		if d.press != []:
			s += str(min(list(map(list, zip(*d.press)))[1]))
		else:
			if i > 0 and i < num - 1:
				s += str((min(list(map(list, zip(*days[i-1].press)))[1]) + min(list(map(list, zip(*days[i+1].press)))[1]))/2)	
		s += ","
		if d.squat != []: # drop averages here cuz they're complicated - just use past value
			squat = min(list(map(list, zip(*d.squat)))[1])
		if squat != None:
			s += str(squat)
		s += ","
		if d.deadlift != []:
			deadlift = min(list(map(list, zip(*d.deadlift)))[1])
		if deadlift != None:
			s += str(deadlift)
		s += "\n"
	# s is a csv formatted log of weights by days
	csv_file = open("temp.csv","w") # worth noting this will clobber anything already saved under that name #yolo
	csv_file.write(s)
	csv_file.close()
	pd_csv = pd.read_csv("temp.csv")
	# let's get rid of that csv now - just for cleanliness
	os.system("del temp.csv")
	graph = pd_csv.plot(x = "day", figsize = (12,8))
	# not gonna overdo it
	graph.get_figure().savefig(fname = "graph.png", bbox_inches="tight")
	# crushed it
	return

# get weights
# takes a weight value and converts in into a list
# number of weights of weight [<2.5>,<5>,<10>,<25>,<35>,<45>]
# the bar weighs 45
# equal weights on both side
# so break (weight - 45) into those weights
def get_w(w):
	ret = [0,0,0,0,0,0]
	vals = [2.5,5,10,25,35,45]
	w = (w - 45) / 2 # find one side of the bar
	for i in range(6)[::-1]: #loop 4 -> 0
		ret[i] = int(w // vals[i]) # find max no of weights of a certain size to use
		w %= vals[i] # set w to be what is left
	return ret
	
# weight to image
# generate a 100x100 image showing the weights
# pixel radius corresponds to weight of ... each weight (hmmm)
# n gives img name and exercise name
def w2img(w, n):
	ws = get_w(w)
	vals = [2,5,10,25,35,45]
	grid = [[[255,255,255] for _ in range(100)] for _ in range (100)]
	if n == "chinup":
		array = np.array(grid, dtype=np.uint8)
		new_image = Image.fromarray(array)
		new_image.save(n + ".png")
		return
	i = 5
	offset = 100 
	while (sum(ws) != 0):
		if ws[i] > 0:
			ws[i] -= 1
			for j in range(offset - 9, offset - 1):
				for k in range(50 - vals[i],50 + vals[i]):
					grid[k][j] = [127,127,127] # 50% gray
			offset -= 10
		else:
			i -= 1
	# Convert the pixels into an array using numpy
	array = np.array(grid, dtype=np.uint8)
	
	# Use PIL to create an image from the new array of pixels
	new_image = Image.fromarray(array)
	new_image.save("imgs/" + n + "_temp.png")			

##
## Imagery component
##	

# graphic returns as 200 * 300 image
# of 6 100*100 tiles
# the 3 tiles on the right will be loaded from files
# they will denote the 3 workouts to do
# the left 3 tiles will be the weights for the exercises
# this will be fond by the "get weights" function
# in the event of chinups, don't do this because it depends on bodyweight
# and bodyweight isn't recorded
# I don't wanna mess with that
# it runs on a generated new day from reading the file
def graphic():
	file = open("log.txt","r")
	d = new_day(file)
	result = Image.new("RGB", (200, 300))
	if d.row != []:
		s = "row"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,0,0,100,100)
		w2img(d.row[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")
		result.paste(img,(100,0,200,100))
	if d.chinup !=  []:
		s = "chinup"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,(0,0,100,100))
		w2img(d.chinup[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")	
		result.paste(img,(100,0,200,100))
	if d.bench != []:
		s = "bench"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,(0,100,100,200))
		w2img(d.bench[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")	
		result.paste(img,(100,100,200,200))
	if d.press != []:
		s = "press"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,(0,100,100,200))
		w2img(d.press[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")	
		result.paste(img,(100,100,200,200))
	if d.squat != []:
		s = "squat"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,(0,200,100,300))
		w2img(d.squat[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")	
		result.paste(img,(100,200,200,300))
	if d.deadlift != []:
		s = "deadlift"
		img = Image.open("imgs/" + s + ".png")
		result.paste(img,(0,200,100,300))
		w2img(d.deadlift[0][1], s)
		img = Image.open(s + ".png")
		#os.system("del " + s + ".png")	
		result.paste(img,(100,200,200,300))
	result.save("workout.png")
	
graph()
graphic()