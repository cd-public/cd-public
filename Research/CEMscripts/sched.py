import gal

def sched(file_name, content1, content2):
	list = [x.split(',') for x in content2]
	periods = [int(item[0]) for item in list]
	costs = [int(item[1]) for item in list]
	hyperperiod = gal.lcms(periods)
	frame = gal.gcds(costs)
	frames = hyperperiod // frame
	tasks = len(list)
	print("For "+file_name.replace('.csv', ':\nHyperperiod = ')+str(hyperperiod)+"\nFrame = "+str(frame)+"\nFrames = "+str(frames)+"\nTasks = "+str(tasks)+"\n\n")
	m = 2 #number of processors
	schedule = [[[0 for k in range(frames)] for j in range(m)] for i in range(tasks)] #out of convenience, tasks get indices instead of jobs
	temp1 = [x.replace('var_','') for x in content1]
	temp2 = [x.replace('_',',') for x in temp1]
	temp3 = [x.split(',') for x in temp2]
	list2 = [temp3[x] for x in range(2,len(temp3))]
	for x in range(len(list2)):
		schedule[int(list2[x][0])][int(list2[x][1])][int(list2[x][2])] = float(list2[x][3])*costs[int(list2[x][0])]