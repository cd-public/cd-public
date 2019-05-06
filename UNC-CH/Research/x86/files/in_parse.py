# IN: 
# 0x000fe05b:  2e 66 83 3e c8 5e 00     cmpl     $0, %cs:0x5ec8
# 0x000fe062:  0f 85 65 f0              jne      0xd0cb
# 
# EAX=00000000 EBX=00000000 ECX=00000000 EDX=000306a9
# ESI=00000000 EDI=00000000 EBP=00000000 ESP=00000000
# EIP=0000e05b EFL=00000002 [-------] CPL=0 II=0 A20=1 SMM=0 HLT=0
# ES =0010 00000000 ffffffff 00cf9300 DPL=0 DS   [-WA]
# CS =0008 00000000 ffffffff 00cf9b00 DPL=0 CS32 [-RA]
# SS =0010 00000000 ffffffff 00cf9300 DPL=0 DS   [-WA]
# DS =0010 00000000 ffffffff 00cf9300 DPL=0 DS   [-WA]
# FS =0010 00000000 ffffffff 00cf9300 DPL=0 DS   [-WA]
# GS =0010 00000000 ffffffff 00cf9300 DPL=0 DS   [-WA]
# LDT=0000 00000000 0000ffff 00008200 DPL=0 LDT
# TR =0000 00000000 0000ffff 00008b00 DPL=0 TSS32-busy
# GDT=     000f5e80 00000037
# IDT=     000f5ebe 00000000
# CR0=60000010 CR2=00000000 CR3=00000000 CR4=00000000
# DR0=0000000000000000 DR1=0000000000000000 DR2=0000000000000000 DR3=0000000000000000 
# DR6=00000000ffff0ff0 DR7=0000000000000400
# CCS=00000000 CCD=00000000 CCO=EFLAGS  
# EFER=0000000000000000

import re, uniq_insts

vars = [["inst", ""], ["arg1", ""], ["arg2", ""], ["addr", "-1"], ["eax", "0"], ["ebx", "0"], ["ecx", "0"], ["edx", "0"], ["eip", "0"], ["efl", "0"], ["cpl", "0"], ["ii", "0"], ["a20", "0"], ["smm", "0"], ["hlt", "0"], ["es", "0"], ["cs", "0"], ["ss", "0"], ["ds", "0"], ["fs", "0"], ["gs", "0"], ["ldt", "0"], ["tr", "0"], ["gdt", "0"], ["idt", "0"], ["cr0", "0"], ["cr2", "0"], ["cr3", "0"], ["cr4", "0"], ["dr0", "0"], ["dr1", "0"], ["dr2", "0"], ["dr3", "0"], ["dr6", "0"], ["dr7", "0"], ["ccs", "0"], ["ccd", "0"], ["cc0", "0"], ["efer", "0"]]

# [["popfl",0],["ljmpw",0],["movw",0],["subl",0],["calll",0],["int",0],["iretw",0],["lretw",0],["nop",0],["jb",0],["movsb",0],["jle",0],["sti",0],["movsl",0],["retl",0],["rsm",0],["jmp",0],["jae",0],["jbe",0],["jns",0],["jmpl",0],["jne",0],["jge",0],["insb",0],["jg",0],["ljmpl",0],["js",0],["jl",0],["je",0],["ja",0],["movl",0]]#,["movsbl",0],["leal",0],["cmpb",0],["movb",0],["cli",0]]

def print_vars(vars):
	print("\nVariables:\n")
	for var in vars:
		print("Variable \"" + var[0] + "\" takes on value \"" + var[1] + "\"")

def save(name, val, vars):
	for var in vars:
		#print(var[0].upper)
		#print(name)
		if var[0].upper() == name:
			#print(name)
			#print(val)
			var[1] = val
			
def get_nonce(s, uniq):
	for i in uniq:
		if s in i[0]:
			i[1] = i[1] + 1
			return str(i[1])

def printer(for_next,vars,uniq,outf,nonce):
	if for_next == "":
		nonce = get_nonce(vars[0][1], uniq)
		outf.write("\n\n.." + vars[0][1] + "():::ENTER\nthis_invocation_nonce\n" + nonce)	
		for var in vars:
			if var[0] in ["arg1", "arg2", "es", "cs", "ss", "ds", "fs", "gs", "ldt", "tr", "gdt", "idt"]:
				outf.write("\n::" + var[0].upper() + "\n\"" + var[1] + "\"\n" + "1")	
			elif "inst" not in var[0]:
			
				#print(var[0])
				#print(var[1])
				outf.write("\n::" + var[0].upper() + "\n" + str(int(var[1],16)) + "\n" + "1")	
	#print_vars(vars)
	else:
		#print(vars)
		#print(nonce)
		outf.write("\n\n.." + for_next + "():::EXIT0\nthis_invocation_nonce\n" + nonce)	
		for var in vars:
			if var[0] in ["arg1", "arg2", "es", "cs", "ss", "ds", "fs", "gs", "ldt", "tr", "gdt", "idt"]:
				outf.write("\n::" + var[0].upper() + "\n\"" + var[1] + "\"\n" + "1")	
			elif "inst" not in var[0]:
				outf.write("\n::" + var[0].upper() + "\n" + str(int(var[1],16)) + "\n" + "1")	
		nonce = get_nonce(vars[0][1], uniq)
		outf.write("\n\n.." + vars[0][1] + "():::ENTER\nthis_invocation_nonce\n" + nonce)	
		for var in vars:
			if var[0] in ["arg1", "arg2", "es", "cs", "ss", "ds", "fs", "gs", "ldt", "tr", "gdt", "idt"]:
				outf.write("\n::" + var[0].upper() + "\n\"" + var[1] + "\"\n" + "1")	
			elif "inst" not in var[0]:
				outf.write("\n::" + var[0].upper() + "\n" + str(int(var[1],16)) + "\n" + "1")
	return nonce

			
def parse():
	uniq = [[i,0] for i in uniq_insts.parse()]
	#print("in in_parse")
	#print(uniq)
	#exit()
	#print([[i,0] for i in uniq_insts.parse()])
	#print(uniq)
	# variables
	for_next = ""
	count = -1
	#print_vars(vars)
	names = ["INST","ARG1","ARG2"]
	outf = open("in_trace.dtrace","w")
	outf.write("input-language C/C++\ndecl-version 2.0\nvar-comparability implicit\n") # header
	line = ""
	nonce = 1
	in_int = False
	for new_line in open("cs.txt", "r"):
		if len(line) == 0 or line[0:2] == "IN" or line[0] == "-":  # no information in line case
			1 == 1;
		elif "Servicing hardware INT=" in line: # interrupt start case
			in_int = True
			save("INST", line.replace("Servicing hardware INT=", "").rstrip(), vars)
		elif line[0:2] == "0x": # instruction case
			in_int = False
			temp = line[38:].replace("rep ","")
			splits = temp.split()
			#print(temp)
			#rint(splits)
			#special cases - 
			if " calll " in line:
				if "9a cp" or "9a cd" in line[11:39]:
					splits[0] = "calll_far"
				else:
					splits[0] = "calll_near"
			if " jmp " in line:
				if "ea cp" or "ea cd" in line[11:39]:
					splits[0] = "jmp_far"
				else:
					splits[0] = "jmp_near"
			if " ret " in line:
				if "cb" or "ca" in line[11:39]:
					splits[0] = "ret_far"
				else:
					splits[0] = "ret_near"
			for i in range(len(splits)):
				if i < 3:  # maybe come back to this - think I'm missing a paren case
					save(names[i], splits[i], vars)
			for reg in ["eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp", "eip", "efl"]:
				if reg in line:
					save(reg.upper(),"-1",vars) # -1 value in reg denotes dummy value
			# now we also do address
			save("ADDR", line[2:10].split()[0], vars)
			nonce = printer(for_next,vars,uniq,outf,nonce)
			for_next = vars[0][1]
		elif line[0:3] in ["ES ", "CS ", "SS ", "DS ", "FS ", "GS ", "LDT", "TR ", "GDT", "IDT"]:  # single register case
			save(line[0:3].replace(" ",""),line[4:].split("DPL")[0].replace(" ","").replace("\n",""),vars)
		elif line[0:3] in ["EAX", "ESI", "EIP", "CR0", "DR0", "DR6", "CCS", "EFE"]: # multi register case
			if "EAX" in line and in_int: # within interrupts we dont have insts so print at first register
				nonce = printer(for_next,vars,uniq,outf,nonce)
				for_next = vars[0][1]
			for reg in line.split():
				splits = reg.split("=")
				if len(splits) == 2:
					save(splits[0],splits[1],vars)
		line = new_line
parse()