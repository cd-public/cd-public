import gal
from pulp import *

def buildlp(file_name, content):
	list = [x.split(',') for x in content]
	periods = [int(item[0]) for item in list]
	costs = [int(item[1]) for item in list]
	hyperperiod = gal.lcms(periods)
	frame = gal.gcds(costs)
	frames = hyperperiod // frame
	tasks = len(list)
	print("For "+file_name.replace('.in', ':\nHyperperiod = ')+str(hyperperiod)+"\nFrame  = "+str(frame)+"\nFrames = "+str(frames)+"\nTasks  = "+str(tasks)+"\n\n")
	m = 2 #number of processors
	array = [[[pulp.LpVariable('var_'+str(i).zfill(len(str(tasks)))+'_'+str(j).zfill(len(str(m)))+'_'+str(k).zfill(len(str(frames))),0,1) for k in range(frames)] for j in range(m)] for i in range(tasks)] #out of convenience, tasks get indices instead of jobs
	prob = pulp.LpProblem('Built LP')
	for i in range(tasks): #first constraint type - required execution of jobs
		finp = periods[i] // frame
		pinh = hyperperiod // periods[i]
		for j in range(pinh):
			prob += pulp.lpSum([[array[i][j][k] for j in range(m)] for k in range(j*finp,(j+1)*finp)]) == 1
	for j in range(m): #second contraint type - don't overload frames
		for k in range(frames):
			prob += pulp.lpSum([costs[i] * array[i][j][k] for i in range(tasks)]) <= frame
	for i in range(tasks): #third contraint type - no concurrency within jobs
		for k in range(frames):
			prob += pulp.lpSum([costs[i] * array[i][j][k] for j in range(m)]) <= frame
	prob.writeLP(file_name.replace('.in', '.lp'))