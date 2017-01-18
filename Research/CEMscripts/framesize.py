import gal

def framesize(file_name, content1, content2):
	list = [x.split(',') for x in content2]
	periods = [int(item[0]) for item in list]
	hyperperiod = gal.lcms(periods)
	costs = [int(item[1]) for item in list]
	frame = gal.gcds(periods)
	frames = hyperperiod // frame
	tasks = len(list)
	m = 4 #number of processors
	schedule = [[0 for k in range(frames)] for j in range(m)] #out of convenience, tasks get indices instead of jobs
	temp1 = [x.replace('var_','') for x in content1]
	temp2 = [x.replace('_',',') for x in temp1]
	temp3 = [x.split(',') for x in temp2]
	list2 = [temp3[x] for x in range(2,len(temp3))]
	max = 0
	for x in range(len(list2)):
		schedule[int(list2[x][1])][int(list2[x][2])] += costs[int(list2[x][0])]* float(list2[x][3])
		curr = schedule[int(list2[x][1])][int(list2[x][2])]
		if curr > max:
			max = curr
	f = open(file_name.replace('_c.csv', '_m.out'), 'w')
	f.write(str(max))