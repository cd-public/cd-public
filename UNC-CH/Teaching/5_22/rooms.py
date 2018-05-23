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
	
# Name: time_calc
# In: a string of two times joined by a dash
# Out:  an int, the duration in minutes between the two times
# Description:  find the amount of time between two clock strings 
# Example: time_calc("11:30-1:00") = 90
def time_calc(time_str):
	times = time_str.split("-") # split into two times, times[0] start time and times[1] end time (as strings)
	for i in range(2): # for each time
		times[i] = times[i].split(":") # split the time into hours and minutes
		for j in range(2): # for both hours and minutes in a time
			times[i][j] = int(times[i][j]) # convert the hours and minutes, both as strings, into integers
		times[i] = times[i][0] * 60 + times[i][1] # replace list of two integers, hours and minutes, with the total in minutes
	duration = times[1] - times[0] # subtract start time from end time to get difference
	if duration < 0: # if the answer is negative, that is, if the time range crosses 12:00...
		duration = duration + 12 * 60 # add 12 hours worth of minutes to get the actual duration
#print(duration)
	return duration # return the calculated duration as an integer
	
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
	duration = time_calc(splits[3].replace("\n","")) # sets duration as the final field and removes the "newline" character
	return roomname + "," + str(area) + "," + str(duration)
	# return the fields combined, converted to strings, and separated by commas
	
	
def csv_converter():
	file = open("new.csv", "w") # creates a way to access the file of name "new.csv" and opens it for writing because of the "w"
	lines = read_in_csv("rooms.csv") # convert a csv file to a list of strings corresponding to lines
	for line in lines: # for each line (a string corresponding to a csv file line) present in list called lines...
		file.write(old_line_to_new_line(line) + "\n") # write the altered line to the file
	file.close()
		
csv_converter()
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
