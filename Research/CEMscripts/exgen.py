import sys
import gal
import random
# utilization cap, processorss, tasks, frame size, frame number, number of tasksets
max_util = int(sys.argv[1]) * int(sys.argv[2]) * int(sys.argv[5])
tasks = int(sys.argv[3])
frame = int(sys.argv[4])
frames = int(sys.argv[5])
hyperperiod = frame * frames
periods = list(gal.factors(frames))
curr_util = 0
schedule = [[0,0] for i in range(tasks)]
toprint = ['' for i in range(tasks)]
for i in range(int(sys.argv[6])):
	curr_util = 0
	for j in range(tasks):
		schedule[j][0] = periods[random.randint(0,len(periods) - 1)] * frame
		schedule[j][1] = random.randint(0,frame)
		curr_util += schedule[j][1] * hyperperiod / schedule[j][0]
	if curr_util > max_util:
		for j in range(tasks):
			schedule[j][1] = int(schedule[j][1] / (curr_util / max_util))
	f = open('ex' + str(i+1) + '.in', 'w')
	for j in range(tasks):
		f.write(str(schedule[j][0]) + ',' + str(schedule[j][1]) + '\n')
print("\n\n  == Complete ==\n\n")