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

vars = [["inst", ""], ["arg1", ""], ["arg2", ""], ["eax", ""], ["ebx", ""], ["ecx", ""], ["edx", ""], ["eip", ""], ["efl", ""], ["cpl", ""], ["ii", ""], ["a20", ""], ["smm", ""], ["hlt", ""], ["es", ""], ["cs", ""], ["ss", ""], ["ds", ""], ["fs", ""], ["gs", ""], ["ldt", ""], ["tr", ""], ["dgt", ""], ["idt", ""], ["cr0", ""], ["cr2", ""], ["cr3", ""], ["cr4", ""], ["dr0", ""], ["dr1", ""], ["dr2", ""], ["dr3", ""], ["dr6", ""], ["dr7", ""], ["ccs", ""], ["ccd", ""], ["cc0", ""], ["efer", ""]]

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

def parse():
	# variables
	count = -1
	#print_vars(vars)
	outf = open("parsed_trace.dtrace","w")
	outf.write("input-language C/C++\ndecl-version 2.0\nvar-comparability implicit\n") # header
	for line in open("trace_head.txt", "r"):
		if len(line) == 0 or line[0:2] == "IN":  # no information in line case
			1 == 1;
		elif line[0:2] == "0x": # instruction case
			temp = line.replace(", ",",").split()
			save("INST", temp[-2], vars)
			splits = temp[-1].split(",")
			save("ARG1", splits[0], vars)
			if len(splits) == 2:
				save("ARG2", splits[1], vars)
			else:
				save("ARG2", "", vars)
		elif line[0:3] in ["ES ", "CS ", "SS ", "DS ", "FS ", "GS ", "LDT", "TR ", "GDT", "IDT"]:  # single register case
			save(line[0:3].replace(" ",""),line[4:].split("DPL")[0].replace(" ","").replace("\n",""),vars)
		elif line[0:3] in ["EAX", "ESI", "EIP", "CR0", "DR0", "DR6", "CCS", "EFE"]: # multi register case
			for reg in line.split():
				splits = reg.split("=")
				if len(splits) == 2:
					save(splits[0],splits[1],vars)
		elif line[0] == "-": # print case
			#print_vars(vars)
			if vars[0][1] != "":
				if count >= 0:
					outf.write("\n\n..clock():::EXIT0\nthis_invocation_nonce\n" + str(count))	
					for var in vars:
						outf.write("\n::" + var[0].upper() + "\n\"" + var[1] + "\"\n" + "1")		
				count = count + 1						
				outf.write("\n\n..clock():::ENTER\nthis_invocation_nonce\n" + str(count))	
				for var in vars:
					outf.write("\n::" + var[0].upper() + "\n\"" + var[1] + "\"\n" + "1")	
parse()