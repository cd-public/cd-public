s = "  variable CPL\n" + "	var-kind variable\n" + "	rep-type int\n" + "	dec-type int\n" + "	comparability 1 \n"  + "  variable IOPL\n" + "	var-kind variable\n" + "	rep-type int\n" + "	dec-type int\n" + "	comparability 1\n"

a = "	var-kind variable\n" + "	rep-type string\n" + "	dec-type char*\n" + "	comparability 2\n"

def parse_uniq():
	uniq_insts = set()
	for name in ["cs", "cs2", "boot"]:
		for line in open(name + ".txt", "r"):
			if line[0] == "0" and line[1] == "x" and len(line) > 39:
				#print(line)
				uniq_insts.add(line[38:].replace("rep ","").split()[0])
			if "Servicing hardware INT=" in line: # interrupt start case
				uniq_insts.add(line.replace("Servicing hardware INT=", "").rstrip())
				uniq_insts.add("new" + line.replace("Servicing hardware INT=", "").rstrip())
				#print(line)
	#print(uniq_insts)
	#special cases
	for spec in ["calll","jmp","ret"]:
		if spec in uniq_insts:
			uniq_insts.remove(spec)
			uniq_insts.add(spec + "_near")
			uniq_insts.add(spec + "_far")
	add = ""
	out = open("inp2.decls", "w")
	out.write("input-language C/C++\ndecl-version 2.0\nvar-comparability implicit\n\n") # header
	#exit()
	for i in list(uniq_insts):
		#print(i)
		if "popf" in i or "iret" in i:
		#print(i)
			add = ""
			#for j in range(1,3):
			#	add += "  variable ARG" + str(j) + "\n" + a
			out.write("ppt .."+i + "():::ENTER\n  ppt-type enter\n" + add + s + '\n')
			out.write("ppt .."+i + "():::EXIT0\n  ppt-type subexit\n" + add + s + '\n')
		
	return uniq_insts
			
parse_uniq()