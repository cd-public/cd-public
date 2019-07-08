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
		regs = set(line.rstrip().split(" <==> "))
		for eqs in to_add[1][1]:
			for reg in regs:
				if reg in eqs:
					for reg in regs:
						eqs.add(reg.strip())
					added = True
					return cache
		if not added:
			to_add[1][1].append(regs)
			added = True
			return cache
	elif " ==> " in line and not added: # create sets of equivalent conditions
		splits = line.split(" ==> ")
		if to_add[1][3] == []:
			to_add[1][3] = [[splits[0].strip(),{splits[1].strip()}]]
			added = True
			return cache
		else:
			for reg in to_add[1][3]:
				#print(splits)
				#print(reg)
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
				#print(splits)
				#print(reg)
				if reg[0] in splits[0]:
					# found the register in the inequality struct, now look for operator
					for oper in reg[1]:
						#print(oper)
						if splits[1] in oper[0]:
							oper[1].add(splits[2])
							added = True
							return cache
					if not added: # add new operator
						reg[1].append([splits[1],{splits[2]}])
						added = True
						return cache
			if not added: # add new reg
				#print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
				#print(to_add[1][2])
				#print("\n\n")
				to_add[1][2].append([splits[0],[[splits[1],{splits[2]}]]])
				#print(to_add[1][2])
				#sleep(1)
				added = True
				return cache
		#print(splits)
		#print(to_add[1][2])
		#print("\n\n\n\n\n")
		#sleep(1)
	elif added:
		to_add[2] = to_add[2] + line
		return cache
	return cache


	
def sorted(set):
	# set to string
	l = list(set)
	l.sort()
	return str(l)
	
def sets_combine(sets):
	#return sets
	# list of sets of items in symmetric relations, combine sets with common elements.
	max = len(sets)
	i = 0;
	j = 0;
	while i < max:
		j = i + 1
		while j < max:
			for e in sets[i].copy():
				#print(len(sets))
				#print(j)
				#print("\n")
				if e in sets[min(j,max-1)]:
					for e2 in sets[j]:
						sets[i].add(e2)
					sets.remove(sets[j])
					max = max - 1
						# have to get out of here
			j = j + 1
		i = i + 1
	#print(sets)
	return sets
	
def print_cache(cache, name):
	#print(cache)
	#return
	cnt = 0
	outf = open(name + "_spliced.out", "w")
	for entry in cache:
		if "EXIT" not in entry[0]:	
			outf.write("===========================================================================\nCONDITION:  " + entry[0].replace("..","").replace(":::ENTER","") + "\n== begin equality sets ==\n")
			entry[1][0] = sets_combine(entry[1][0])
			for eqs in entry[1][0]:
				outf.write(sorted(eqs) + "\n")
				cnt = cnt + 1
			outf.write("== end equality sets ==\n== begin equivalence sets ==\n")
			for eqs in entry[1][1]:
				outf.write(sorted(eqs) + "\n")
				cnt = cnt + 1
			outf.write("== end equivalence sets ==\n== begin inequality properties ==\n")
			for ineqs in entry[1][2]:
				if ineqs != []:
					for opers in ineqs[1]:
						outf.write(ineqs[0] + " " + opers[0] + " _x_ for all _x_ in  " + sorted(opers[1]) + "\n")
						cnt = cnt + 1
			outf.write("== end inequality properties ==\n== begin implication properties ==\n")
			for imps in entry[1][3]:
				outf.write(imps[0] + " ==>  _x_ for all _x_ in  " + sorted(imps[1]) + "\n")
			outf.write("== end implication properties ==\n== begin raw properties ==\n")
			outf.write(entry[2])
			cnt = cnt + entry[2].count("\n")
			outf.write("== end raw properties ==\n")
	print(cnt)
	
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
			print_cache(cache, name)
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

splice("1sp")
splice("1sp_c")