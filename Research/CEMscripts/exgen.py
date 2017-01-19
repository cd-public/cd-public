import sys
import gal
import random
# utilization cap, tasks, number of tasksets, taskwise utilization max (dice)
max_util = int(sys.argv[1]) * 48
tasks = int(sys.argv[2])
curr_util = 0
task_util = 0
schedule = [[0,0] for i in range(tasks)]
dice = 300
if (len(sys.argv) > 4):
	dice = 3 * int(sys.argv[4])
for i in range(int(sys.argv[3])):
	curr_util = 0
	for j in range(tasks):
		schedule[j][0] = 25 * random.randint(1,4)
		schedule[j][1] = random.randint(0,25)
		task_util = schedule[j][1] * (300 / schedule[j][0])
		if (task_util > dice):
			schedule[j][1] *= (dice / task_util)
			schedule[j][1] = int(schedule[j][0])
		curr_util += schedule[j][1] * (300 / schedule[j][0])
	curr_util *= 4
	for j in range(tasks):
		schedule[j][1] = int(min(schedule[j][1] * (max_util / curr_util), dice/(300 / schedule[j][0]), 25))
	f = open('ex' + str(i+1) + '.in', 'w')
	for j in range(tasks):
		f.write(str(schedule[j][0]) + ',' + str(schedule[j][1]) + '\n')
print("\n\n  == Complete ==\n\n")