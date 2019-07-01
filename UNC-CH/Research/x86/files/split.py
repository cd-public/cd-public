# Mode Flags

# CR0[0] (Protected Mode) "PE"
# EFER[8] (Long Mode Enable) "LME"
# EFER[10] (Long Mode Active) "LMA"
# EFLAGS[17] (Virtual Mode) "VM"

# Protections

# CR4[20] "SMEP"
# CR4[21] "SMAP"

# Insn Flags

# EFLAGS[21] (CPUID enable) "CPUIDXE"
# CR4[2] (RDTSC -> CPL==0) "TSD"
# CR4[11] (SGDT, SIDT, SLDT, SMSW and STR -> CPL==0) "UMIP"
# CR4[13] (VM* enable) "VMXE"

s = "CPL==0" + '\n' + "PE==0" + '\n' + "LME==0" + '\n' + "LMA==0" + '\n' + "VM==0" + '\n' + "CPUIDXE==0" + '\n' + "TSD==0" + '\n' + "UMIP==0" + '\n' + "VMXE==0" + '\n'

a = ""

def parse():
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
	out = open("in_trace.spinfo", "w")
	#out.write("input-language C/C++\ndecl-version 2.0\nvar-comparability implicit\n\n") # header
	#exit()
	for i in list(uniq_insts):
		#print(i)
		out.write("\n\nPPT_NAME .."+ i + '\n' + s)
		
	return
			
parse()