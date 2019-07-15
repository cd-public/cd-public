# splice

from time import sleep

def add_to_cache(save_name, cache, line):
	to_add = []
	vars = ['INST', 'ARG1', 'ARG2', 'ADDR', 'EAX', 'EBX', 'ECX', 'EDX', 'EIP', 'EFL', 'CPL', 'II', 'A20', 'SMM', 'HLT', 'ES', 'CS', 'SS', 'DS', 'FS', 'GS', 'LDT', 'TR', 'ES_DPL', 'CS_DPL', 'SS_DPL', 'DS_DPL', 'FS_DPL', 'GS_DPL', 'LDT_DPL', 'TR_DPL', 'GDT', 'IDT', 'CR0', 'CR2', 'CR3', 'CR4', 'DR0', 'DR1', 'DR2', 'DR3', 'DR6', 'DR7', 'CCS', 'CCD', 'CC0', 'EFER', "IOPL", "VM", "CPUIDXE", "PE", "TSD", "UMIP", "VMXE", "SMEP", "SMAP", "LME", "LMA"]
	#[[9,17,"VM"],[9,21,"CPUIDXE"],[33,0,"PE"],[36,2,"TSD"],[36,11,"UMIP"],[36,13,"VMXE"],[36,20,"SMEP"],[36,21,"SMAP"],[46,8,"LME"],[46,10,"LMA"]]
	#print(cache)
	#print(line)
	added = False
	if ("0x" in save_name and ("ARG" in line or "ADDR" in line)) or "ADDR == -1" in line: # catch some errors introduced by the frontend
		return cache
	if "*" in line:
		return cache
	if "ENTER" in save_name:
		for var in vars:
			line.replace(var,"orig(" + var + ")")
	for cond in cache:
		if save_name.replace("EXIT","ENTER") in cond[0]:
			to_add = cond
	if " == " in line and line[0].isalpha(): # create sets of equal values
		regs = set(line.rstrip().split(" == "))
		for eqs in to_add[1][0]:
			for reg in regs:
				if reg in eqs:
					for reg in regs:
						eqs.add(reg)
					added = True
					return cache
		if not added:
			to_add[1][0].append(regs)
			added = True
			return cache
	elif " <==> " in line and not added: # create sets of equivalent conditions
		reg_l = line.rstrip().split(" <==> ")
		regs = set([r.strip() for r in reg_l])
		for eqs in to_add[1][1]:
			for reg in regs:
				if reg in eqs:
					for reg in regs:
						eqs.add(reg)
					added = True
					return cache
		if not added:
			to_add[1][1].append(regs)
			added = True
			return cache
	elif " ==> " in line and not added: # create sets of implication conditions
		splits = line.split(" ==> ")
		if to_add[1][3] == []:
			to_add[1][3] = [[splits[0].strip(),{splits[1].strip()}]]
			added = True
			return cache
		else:
			for reg in to_add[1][3]:
				if reg[0] in splits[0]:
					# found the register in the implication struct
					reg[1].add(splits[1].strip())
					added = True
					return cache
	elif line[0].isalpha() and not added and "one of" not in line: # inequality case
		# want a structure [[<reg1>,[[oper1,[<equivreg1>,<equivreg2>]][oper2,[<equivreg3>,<equivreg4>]]]],[<reg2>,[[oper3,[<equivreg5>,<equivreg6>]]]]]
		splits = line.split()
		if to_add[1][2] == []:
			to_add[1][2] = [[splits[0],[[splits[1],{splits[2]}]]]]
			added = True
			return cache
		else:
			for reg in to_add[1][2]:
				if reg[0] in splits[0]:
					# found the register in the inequality struct, now look for operator
					for oper in reg[1]:
						if splits[1] in oper[0]:
							oper[1].add(splits[2])
							added = True
							return cache
					if not added: # add new operator
						reg[1].append([splits[1],{splits[2]}])
						added = True
						return cache
			if not added: # add new reg
				to_add[1][2].append([splits[0],[[splits[1],{splits[2]}]]])
				added = True
				return cache
	elif added:
		to_add[2] = to_add[2] + line
		return cache
	return cache
	
def sorted(s):
	# set to string
	l = list(s)
	l.sort()
	return str(l)
	
def eqset(s):
	# create a string denoting a set
	l = list(s)
	l.sort()
	return "eqset: " + str(l[0])
	
def sets_combine(sets):
	# return sets
	# list of sets of items in symmetric relations, combine sets with common elements.
	max = len(sets)
	i = 0;
	j = 0;
	while i < max:
		j = i + 1
		to_add = set()
		to_remove = set()
		while j < max:
			for e in sets[i]:
				if e in sets[j]:
					to_add.union(sets[j])
					to_remove.add(j)
			j = j + 1
		if len(to_add) != 0:
			sets[i].union(to_add)
			to_remove_l = list(to_remove).sort()
			while len(to_remove_l) > 0:
				sets.remove(sets[to_remove_l.pop(-1)])
			max = len(sets)
		i = i + 1
	for s in sets:
		if "-1" in s: 
			sets.remove(s) # remove dummy values
	#print(sets)
	return sets
	
def expand_ineq(cache):
	to_del = []
	for entry in cache:
		if "EXIT" in entry[0]:
			to_del.append(entry)
		else:
			#prepare the eqs (necessarily)
			entry[1][0] = sets_combine(entry[1][0])
			eqs = entry[1][0]
			#do the LHS combine here
			# do name change
			#print("LHS: " + str(entry[0]))
			for ineqs in entry[1][2]: # looking at a LHS register
				for eq in eqs:
					if ineqs[0] in eq:
						ineqs[0] = eqset(eq)
			# with name change, walk the list and combine opers
			entry[1][2].sort() # just a convenience
			for ineq in entry[1][2]:
				ineq[1].sort()
			max = len(entry[1][2])
			i = 0;
			j = 0;
			while i < max - 1:
				#print("outer, {i,j,max} == " + str([i,j,max])) # iter check - perserved in case
				j = i + 1
				while j < max:
					if entry[1][2][i][0] == entry[1][2][j][0]:
						# here we must combine operation-wise
						for oper in entry[1][2][j][1]:
							#print(oper[0])
							if oper[0] not in [o[0] for o in entry[1][2][i][1]]: # new operation so adding the entire oper
								entry[1][2][i][1].append(oper)
							else:
								for oper_i in entry[1][2][i][1]: # finding the same operation
									if oper_i[0] in oper[0]:
										oper_i[1].union(oper[1]) # combining!
						entry[1][2].remove(entry[1][2][j]) # removing the redundant list
						max = max - 1 # iterator math - there's one few list now
						# dont have to update j since j now points to a new list! 
					else:
						j = max
						i = i + 1
			#print("RHS: " + str(entry[0]))
			#do the RHS combine here
			for ineqs in entry[1][2]: # looking at a LHS register
				for oper in ineqs[1]: # looking at LHS register and an operation
					to_remove = set()
					to_add = set()
					for reg in oper[1]: # looking at a RHS register
						for eq in eqs: # looking at sets of equal registers
							if reg in eq:
								# case LHS == RHS
								if ineqs[0] not in eq:
									to_add.add(eqset(eq))
								to_remove.add(reg)
					for ele in to_remove:
						oper[1].remove(ele)
					oper[1] = oper[1].union(to_add)
					# clobber self-equality
					if len(oper[1]) == 1:
						if ineqs[0] in oper[1]:
							ineqs[1].remove(oper)
				# clobber value-comparison LHS
				if "eqset" in ineqs[0]:
					if not ineqs[0].split()[1][0].isupper():
						for oper in ineqs[1]:
							to_remove = set()
							for rhs in oper[1]:
								if "eqset" in rhs:
									if not rhs.split()[1][0].isupper():
										to_remove.add(rhs)
								if rhs.isdigit():
									to_remove.add(rhs)
							for ele in to_remove:
								oper[1].remove(ele)			
				# clobber int / nat conversion properties LHS
				if "eqset: \"0000000000000000000000000000\"" in ineqs[0] or "eqset: 0" in ineqs[0]:
					to_remove = []
					for oper in ineqs[1]:
						if "<=" in oper[0]:
							to_remove.append(oper)
					for ele in to_remove:
						ineqs[1].remove(ele)
				# "" RHS
				for oper in ineqs[1]:
					if ">=" in oper[0]:
						for key in ["eqset: \"0000000000000000000000000000\"", "eqset: 0", "-1"]:
							if key in oper[1]:
								oper[1].remove(key)
	for ele in to_del:
		cache.remove(ele)
	return cache
	
def print_globals(struct,outf):
	# three groups:
	pre = ["~","","not"]
	[condition, extracted] = struct
	for i in range(3):
		group = extracted[i]
		outf.write("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nGLOBAL:  " + pre[i] + condition + "\n~~ begin equality sets ~~\n")
		for eqs in group[0]:
			outf.write(sorted(eqs) + "\n")
		outf.write("~~ end equality sets ~~\n~~ begin equivalence sets ~~\n")
		for eqs in group[1]:
			outf.write(sorted(eqs) + "\n")
		
	
def extract_globals(cache, condition):
	# disregarding instructions, we splits properties into 3 groups
	# (1) condition neutral (2) condition (3) not condition
	groups = [[],[],[]]
	for entry in cache:
		if "not" + condition in entry[0]: # contains relevant condition
			groups[2].append(entry[1])
		elif condition in entry[0]:
			groups[1].append(entry[1])
		else:
			groups[0].append(entry[1])
	out = []
	for group in groups:
		# combine equalities
		group_eqs = []
		for entry in group:
			if group_eqs == []:
				group_eqs = entry[0]
			else:
				for iter_eq in entry[0]:
					for group_eq in group_eqs:
						for ele in iter_eq:
							if ele in group_eq:
								group_eq.intersection(iter_eq)
		# combine equivalences
		group_equivs = []
		for entry in group:
			if group_equivs == []:
				group_equivs = entry[1]
			else:
				for iter_equiv in entry[1]:
					for group_equiv in group_equivs:
						for ele in iter_equiv:
							if ele in group_equiv:
								group_equiv.intersection(iter_equiv)
		# combine inequalities
		group_ineqs = []
		# combine implications
		group_imps = []
		out.append([group_eqs,group_equivs,group_ineqs,group_imps])
	return [condition,out]
	
def print_cache(cache, name):
	#print(cache)
	#return
	cnt = 0
	outf = open(name + "_spliced.out", "w")
	#combine equality and inequality findings
	cache = expand_ineq(cache)
	#cache = extract_globals(cache, "(CPL==0)")
	for entry in cache:
			outf.write("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\nCONDITION:  " + entry[0].replace("..","").replace(":::ENTER","") + "\n~~ begin equality sets ~~\n")
			#entry[1][0] = sets_combine(entry[1][0])
			for eqs in entry[1][0]:
				outf.write(sorted(eqs) + "\n")
				cnt = cnt + 1
			outf.write("~~ end equality sets ~~\n~~ begin equivalence sets ~~\n")
			for eqs in entry[1][1]:
				outf.write(sorted(eqs) + "\n")
				cnt = cnt + 1
			outf.write("~~ end equivalence sets ~~\n~~ begin inequality properties ~~\n")
			for ineqs in entry[1][2]:
				if ineqs != []:
					for opers in ineqs[1]:
						if len(opers[1]) != 0:
							outf.write(ineqs[0] + " " + opers[0] + " _x_ for all _x_ in  " + sorted(opers[1]) + "\n")
							cnt = cnt + 1
			outf.write("~~ end inequality properties ~~\n~~ begin implication properties ~~\n")
			for imps in entry[1][3]:
				outf.write(imps[0] + " ==>  _x_ for all _x_ in  " + sorted(imps[1]) + "\n")
			outf.write("~~ end implication properties ~~\n~~ begin raw properties ~~\n")
			outf.write(entry[2])
			cnt = cnt + entry[2].count("\n")
			outf.write("~~ end raw properties ~~\n")
	#print(cnt)
	#print("\n\n\n")
	print_globals(extract_globals(cache, "(CPL==0)"),outf)
	
def splice(name):
	in_file = open(name + ".out", "r")
	check_next = False
	do_transfer = False
	do_save = False
	save_name = ""
	#for_out = ""
	cache = [] # should be of form [<ENTER line>,[<list of sets of equal regs>, <list of sets of equivalent properties>, <inequality struct>, <implication struct>],<raw string>]]
	for line in in_file:
		if "Exiting Dai" in line:
			print_cache(cache, name) # expansion of inequalities w/i this call
			return
		elif "====" in line:
			check_next = True
			if do_transfer:
				out_file.write(line)
			do_transfer = False
			do_save = False
		elif check_next:
			do_save = True
			save_name = line.rstrip()
			cache.append([save_name,[[],[],[],[]],""]) 
			#print(cache)
			check_next = False
		elif do_save:
			#print(cache)
			add_to_cache(save_name, cache, line)

#splice("1sp")
splice("one_cs")