import glob
import sched
import os
import os.path

list_of_files = glob.glob('./*_c.csv')
print("\n\nReading files...\n\n")
for file_name in list_of_files:
	if os.path.isfile(file_name.replace('_c.csv', '_i.csv')):
		print(file_name.replace('_c.csv', ' is solved for continuous and integer cases.\n'))
	else:
		FI1 = open(file_name, 'r')
		content1 = FI1.readlines()
		FI2 = open(file_name.replace('_c.csv', '.in'), 'r')
		content2 = FI2.readlines()
		sched.sched(file_name, content1, content2)