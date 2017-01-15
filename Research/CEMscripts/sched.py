import gal
import ff

def sched(file_name, content1, content2):
	list = [x.split(',') for x in content2]
	periods = [int(item[0]) for item in list]
	hyperperiod = gal.lcms(periods)
	frame = gal.gcds(periods)
	frames = hyperperiod // frame
	tasks = len(list)
	print("For "+file_name.replace('.csv', ':\nHyperperiod = ')+str(hyperperiod)+"\nFrame  = "+str(frame)+"\nFrames = "+str(frames)+"\nTasks  = "+str(tasks)+"\n\n")
	m = 2 #number of processors
	schedule = [[[0 for k in range(frames)] for j in range(m)] for i in range(tasks)] #out of convenience, tasks get indices instead of jobs
	temp1 = [x.replace('var_','') for x in content1]
	temp2 = [x.replace('_',',') for x in temp1]
	temp3 = [x.split(',') for x in temp2]
	list2 = [temp3[x] for x in range(2,len(temp3))]
	for x in range(len(list2)):
		schedule[int(list2[x][0])][int(list2[x][1])][int(list2[x][2])] = not(float(list2[x][3]).is_integer()) #detemine which 'task by processor by frame' to be in matching
	g = ff.FlowNetwork()
	need = False
	setL = set()
	setR = set()
	setE = set()
	for i in range(tasks): #first constraint type - required execution of jobs
		finp = periods[i] // frame
		pinh = hyperperiod // periods[i]
		for f in range(pinh):
			need = False
			for j in range(m):
				for k in range(f*finp,(f+1)*finp):
					need = need or schedule[i][j][k]
			if need:
				setL.add('L_'+str(i)+'_'+str(f))
				for j in range(m):
					for k in range(f*finp,(f+1)*finp):
						if schedule[i][j][k]:
							setR.add('R_'+str(j)+'_'+str(k))
							setE.add(('L_'+str(i)+'_'+str(f),'R_'+str(j)+'_'+str(k)))
	L = [g.add_vertex(v) for v in setL]
	R = [g.add_vertex(v) for v in setR]
	E = [g.add_edge(e[0],e[1],1) for e in setE]
	g.add_vertex('source')
	g.add_vertex('sink')
	E1 = [g.add_edge('source',v,1) for v in setL]
	E2 = [g.add_edge(v,'sink',1) for v in setR]
	flow = ["{}".format(i) for i in g.max_flow('source','sink')]
	flow = [str.replace(':','_').split('_') for str in flow]
	flow = ['var_'+str(i[1]).zfill(len(str(tasks)))+'_'+str(i[3]).zfill(len(str(m)))+'_'+str(i[4]).zfill(len(str(frames))) for i in flow]
	f = open(file_name.replace('_c.csv', '_m.csv'), 'w')
	f.write(content1[0])
	f.write(content1[1])
	new = [content1[i] for i in range(2,len(content1))]
	new = [i.split(',') for i in new]
	for i in range(len(new)):
		if (not(float(new[i][1]).is_integer())):
			if new[i][0] in flow:
				f.write(new[i][0]+',1\n')
			else:
				f.write(new[i][0]+',0\n')
		else:
			f.write(new[i][0]+','+new[i][1])