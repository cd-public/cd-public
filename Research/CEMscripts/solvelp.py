import gal
from gurobipy import *

def solvelp(file_name):
	m = read(file_name.replace('.in', '.lp'))
	m.optimize()