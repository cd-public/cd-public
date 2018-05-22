# rooms.py

# Name: Read In Csv
# In: the name of the csv file to be read
# Out:  list of strings where each string is a line in the csv
# Description:  convert a csv file to a list of strings corresponding to lines
# Example: read_in_csv("rooms.csv")
# ["RoomName,length,width,times",
# "Room1,10,10,11:30-1:00",...
def read_in_csv(name):
	file = open(name, "r") # creates a way to access the file of name "name" and opens it for reading because of the "r"
	lines = file.readlines() # reads in the file "file" and creates a list of lines of text (strings)
	file.close() # says you won't use the file anymore
	return lines
	
# Name: Old Line to New Line
# In: a line from the original csv file in the following formatting
#		* <RoomName>,<Length>,<Width>,<Time>
# Out:  the same line but following the new formatting -
#		* <RoomName>,<area as calculated from length and width>,<Duration as calculated from time>
# Description:  convert a line to the new format
# Example: old_line_to_new_line("Room1,10,10,11:30-1:00")
# "Room1,100,90"
# >>>
# Special case: detects the line containing labels
# old_line_to_new_line("RoomName,length,width,times") = "RoomName,area,times"
def old_line_to_new_line(line):
	if "RoomName,length,width,times" in line:  # if there is a line with the exact text "RoomName" in it...
		return "RoomName,area,times" # return this line (this deals with the labels)
	splits = line.split(",") # create a list of strings, each of which was separated by a comma in the line
	roomname = splits[0] # looks at the first value in the line and names it "roomname"
	length = int(splits[1]) # looks at the second value, converts it to an integer, and names it length
	width = int(splits[2]) # same as with length
	area = length * width # calculating the area
	# print(area) # this can be used for debugging
	# duration left unaltered - instructor privelege
	duration = splits[3].replace("\n","") # sets duration as the final field and removes the "newline" character
	return roomname + "," + str(area) + "," + duration # return the fields combined, converted to strings, and separated by commas
	
	
def function():
	lines = read_in_csv("rooms.csv") # convert a csv file to a list of strings corresponding to lines
	for line in lines: # for each line (a string corresponding to a csv file line) present in list called lines...
		print(old_line_to_new_line(line)) # convert a line to the new format and print
		
function()
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
