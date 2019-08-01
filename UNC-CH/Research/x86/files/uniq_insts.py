def gen_s():
	s = " variable "
	s_base = ["ADDR",1,True],["EAX",2,True],["EBX",2,True],["ECX",2,True],["EDX",2,True],["EIP",1,True],["EFL",3,True],["CPL",4,True],["II",5,True],["A20",5,True],["SMM",5,True],["HLT",5,True],["ES",9,False],["CS",9,False],["SS",9,False],["DS",9,False],["FS",9,False],["GS",9,False],["LDT",9,False],["TR",9,False],["ES_DPL",4,True],["CS_DPL",4,True],["SS_DPL",4,True],["DS_DPL",4,True],["FS_DPL",4,True],["GS_DPL",4,True],["LDT_DPL",4,True],["TR_DPL",4,True],["GDT",10,False],["IDT",10,False],["CR0",11,True],["CR2",12,True],["CR3",13,True],["CR4",14,True],["DR0",15,True],["DR1",16,True],["DR2",17,True],["DR3",18,True],["DR6",19,True],["DR7",20,True],["CCS",21,True],["CCD",22,True],["CC0",23,True],["EFER",24,True] # name, class, isdigit()
	fill = "\n	var-kind variable\n	rep-type int\n	dec-type int\n	comparability "
	fill2 = "\n variable "
	strfill = "\n	var-kind variable\n	rep-type string\n	dec-type char*\n	comparability "
	for reg in s_base:
		s += reg[0]
		if reg[2]:
			s += fill
		else:
			s += strfill
		s += str(reg[1])
		s += fill2
	# do CRs
	#crs = [9,33,36,46] # EFL, CR0, CR4, EFER
	names = ["EFL","CR0","CR4","EFER"]
	lens = [22,31,23,16]
	# hardcode comparability value
	fill += "5"
	for i in range(len(names)):
		for j in range(lens[i]):
			s += names[i] + "[" + str(j) + "]" + fill + fill2
	s = s[:-len(fill2)] + "\n"
	return s

def parse():
	uniq_insts = set()
	s = gen_s()
	for name in ["cs", "cs2", "boot"]:
		for line in open(name + ".txt", "r"):
			if line[0] == "0" and line[1] == "x" and len(line) > 39:
				uniq_insts.add(line[38:].replace("rep ","").split()[0])
			if "Servicing hardware INT=" in line: # interrupt start case
				uniq_insts.add(line.replace("Servicing hardware INT=", "").rstrip())
				uniq_insts.add("new" + line.replace("Servicing hardware INT=", "").rstrip())
	#special cases
	for spec in ["calll","jmp","ret"]:
		if spec in uniq_insts:
			uniq_insts.remove(spec)
			uniq_insts.add(spec + "_near")
			uniq_insts.add(spec + "_far")
	for spec in ["movl"]:
		if spec in uniq_insts:
			uniq_insts.remove(spec)
			uniq_insts.add(spec + "_nocr")
			uniq_insts.add(spec + "_cr")		
	add = ""
	out = open("in_trace.decls", "w")
	out.write("input-language C/C++\ndecl-version 2.0\nvar-comparability implicit\n\n") # header
	for i in list(uniq_insts):
		out.write("ppt .."+i + "():::ENTER\n  ppt-type enter\n" + s + '\n')
		out.write("ppt .."+i + "():::EXIT0\n  ppt-type subexit\n" + s + '\n')
		
	return uniq_insts
			
parse()