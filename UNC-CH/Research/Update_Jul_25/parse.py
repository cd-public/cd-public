import glob, re, itertools

# this needs a vcd file and the verilog for the processor
vcd_name = "or1200-simple.vcd"
verilog_dir = "or1200_alu"
verilog = verilog_dir + "/*.v"
define_file = verilog_dir + "/or1200_defines.v"
# it will need temporary verilog ish and vcd ish file
temp_veri = "blocks.v"
temp_vcd = "transpose.vcd"
# and a max number of cycles
cycles = 10

# key contains all variables in form [<module>, <name>, <vcd name>,<size>,<starting_value>]
def make_key():
	file = open(vcd_name,"r")
	lines = file.readlines()
	file.close()
	depth = 0
	key = []
	making = False
	module = ""
	for line in lines:
		if making:
			if "scope" in line:
				#print(line + module + " " + str(depth) + "\n")
				if "upscope" in line:
					depth = depth - 1
					if depth == -1:
						return key
				else:
					module = line.split()[2]
					depth = depth + 1
			if "var" in line:
				temp = line.split()
				#print(line + str(crit_depth) + " " + str(depth))
				key.append([module, temp[4], temp[3], int(temp[2]), "x"])
		else:
			if "scope" in line:
				if "or1200_top0" in line:
					making = True
					
# helper for reg check					
def ban_list(str):  # wipe out lines I won't need
	bans = ["`endif", "`ifdef", "`include", "`else", "`timescale", "assign", "reg", "wire", "parameter", "input", "output", "if ", "else ", "else\n", "end\n", "endcase", "end ", "case "]
	for ban in bans:
		if ban in str:
			return True
	return False
				
				
# helper for reg check
def indent_meas(a):
	return len(a) - len(a.lstrip(' '))
				
# screens key to only have stateful variables [<module>, <name>, <vcd name>,<size>,<starting_value>]			
def reg_check():
	keys = make_key()
	vs = glob.glob(verilog) # this is the verilog for everything
	checked_keys = [["or1200_cpu","rst","D", 1, "x"]] # initialize with reset
	dump = open("dump.txt", "w") # write here
	for v in vs:
		temp = open(v, "r")
		new_out = ""
		for line in temp.readlines():
			#print(line)
			line = line.replace("\t","    ") # standardizing to measure indents
			if "//" in line:
				line = line.split("//")[0] + "\n"  # clobber comments
			if "<=" in line:
				line = line.split("<=")[0] + "\n"  # clobber RHS
			if not(line.isspace()):
				if not ban_list(line):  
					if "module" in line:
						indents = 0
						in_block = False
						if len(line.split("module")) >= 2:
							if len(line.split("module")[1]) >= 2:
								if line.split("module")[1][1].islower(): # checking to see if we have a module
									new_out = new_out + line
					elif in_block: # so what we're doing here is only capturing always clock blocks by tracking when we enter and exit them.  This is for in
						if indent_meas(line) <= indents:
							in_block = False
						else:
							new_out = new_out + line[indents:]
					else:
						if "always" in line and "posedge" in line:
							indents = indent_meas(line)
							in_block = True
							new_out = new_out + line[indents:]
		temp.close()
		dump.write(new_out)
		for key in keys:
			if key[0] in v:
				if key[1] in new_out:
					#print(key[0]+key[1]+"\n")
					checked_keys.append(key)
	dump.close()
	return checked_keys
	
def vnti(vrl): #verilog_num_to_int
	#print(vrl)
	vrl = vrl.replace(")","").replace("_","").replace("?","")
	vrl = "".join(itertools.takewhile(str.isdigit, vrl))
	if vrl.isdigit():
		return vrl
	if "'b" in vrl:
		return str(int(vrl.split("'b")[1],2))
	if "'d" in vrl:
		return str(int(vrl.split("'d")[1],10))
	if "'h" in vrl:
		return str(int(vrl.split("'h")[1],16))
	else:
		return vrl
	
def add_to(line, defines, values):
	parts = line.split()
	if len(parts) == 2: # check to see if something is just defined but not given a value
		defines.append(parts[1])
	else:
		if len(parts) > 3: # checking for value defines
			#value = parts[2].join(parts[3:])
			#print(line)
			value = "0"
		else:
			value = parts[2]
			#print(value)
		for name in values:
			for i in ["\n", ",", "+", "-", ":"]:
				#print(name[0] + i)
				#print(value)
				if name[0] + i in value:
					value = value.replace(name[0],name[1])
		value = value.replace("`","")
		values.append([parts[1],value])	
	
def print_values(values):
	for v in values:
		print(v[0] + " " + v[1])
	
def get_defines():
	file = open(define_file,"r")
	defines = []
	values = []
	in_if = False
	for line in file.readlines():
		line = line.replace("\t","    ") # standardizing to measure indents
		if "//" in line:
			line = line.split("//")[0] + "\n"  # clobber comments
		if "/*" in line:
			line = line.split("/*")[0] + "\n"  # clobber comments
		if not(line.isspace()):
			if in_if:
				if "endif" in line:
					in_if = False
				else:
					if if_is_true:
						if "define" in line:
							add_to(line, defines, values)
			else:
				if "define" in line:
					add_to(line, defines, values)
				if "ifdef" in line:
					if line.split()[1] in defines:
						if_is_true = True
	#print_values(values)
	# Now we need to reformat things of form 1'b1 into just 1
	file.close()
	return values

def fix_flags(flags):
	values = get_defines()
	for flag in flags:
		new_flag3 = []
		for field in flag[3]:
			update = False
			for v in values:
				for i in ["\n", ",", "+", "-", ":"]:
					field = field.replace(v[0],v[1])
					field = field.replace("`","")
					update = True					
			if "width" in field: # special case of a define not found in defines
				field = field.replace("width", "32")
				update = True
		if update == True:
			if ":" in field:
				field = str(eval(vnti(field.split(":")[0]))) + ":" + str(eval(vnti(field.split(":")[1])))
				#count = count + eval(line.split(":")[0]) - eval(line.split(":")[1])
			else:
				#count = count + 1
				#print(flag[0]+flag[1] + field)
				#print(field)
				field = str(eval(vnti(field)))
			new_flag3.append(field)
		flag[3] = new_flag3
	return flags
	
def flag_check():
	# key contains all variables in form [<module>, <name>, <vcd name>,<size>,<default base value of "x">]
	keys = make_key()
	for key in keys: # size is now a list of subfields
		key[3] = []
	vs = glob.glob(verilog) # this is the verilog for everything
	for v in vs:
		file = open(v,"r")
		lines = file.readlines()
		file.close()
		for line in lines:
			for key in keys:
				if key[0] in v:
					if key[1] + "[" in line:
						key[3].append(line.split(key[1] + "[")[1].split("]")[0])
	for_end = []
	for key in keys:
		if key[3] != []:
			for_end.append(key)
	return fix_flags(for_end)
	
def eq_check(keys):
	l = [[] for _ in range(65)]
	for key in keys:
		#print(int(key[3]))
		l[int(key[3])].append(key)
	eqs = []
	for i in range(2,65):
		if len(l[i]) > 1:
			for pair in list(itertools.combinations(l[i], 2)):
				eqs.append([pair[0][2],pair[1][2],pair[0][0] + "." + pair[0][1] + "==" + pair[1][0] + "." + pair[1][1]])
	return eqs
	
def key_print(file, key): # nibble printer
	if key[3] == 1:
		file.write(key[0] + "." + key[1] + "==" + key[4] + "\n")
	else:
		total = 0
		value = key[4]
		if "x" in key[4]:
			fill = "x"
		else:
			fill = "0"
		while total < key[3]:
			bits = min([key[3] - total, 4])
			sub_value = value[-4:]
			sub_value = (fill * (bits - len(sub_value))) + sub_value
			file.write(key[0] + "." + key[1] + "[" + str(total + bits - 1) + ":" + str(total) + "]==" + sub_value + "\n")
			total = bits + total
			value = value[:-bits]
			
def flag_print(file, flag):
	if "x" in flag[4]:
		fill = "x"
	else:
		fill = "0"
	for field in flag[3]:
		field = field.replace("\n","")
		value = flag[4] + fill
		if ":" in field:
			field_start = int(field.split(":")[0])
			field_end = int(field.split(":")[1])
			if field_start > len(value):
				value = ((field_start + 2) * fill) + value
			#print("field_start = " + str(field_start) + " + field_end = " + str(field_end) + " + value = " + value)
			#print(value[-(field_start+1):-(field_end+1)])
			file.write(flag[0] + "." + flag[1] + "[" + field + "]==" + value[-(field_start+1):-(field_end+1)] + "\n")
		else:
			#print(flag[0] + flag[1]+flag[2] + field)
			
			if int(field) < len(value):
				value = value + fill
				file.write(flag[0] + "." + flag[1] + "[" + field + "]==" + value[-(int(field) + 1)] + "\n")
			else:
				file.write(flag[0] + "." + flag[1] + "[" + field + "]==" + fill + "\n")
				
def eq_print(file, eq, keys):
	for key in keys:
		if key[2] == eq[0]:
			val1 = key[4]
		if key[2] == eq[1]:
			val2 = key[4]
	if val1 == val2:
		file.write(eq[2] + "\n")
	
# Gonna wipe out all non-cpu regs
def cpu_only(key):
	ret = []
	for k in key:
		if "cpu" in k[0]:
			ret.append(k)
	return ret
	
def parse(i):
	# key contains all variables in form [<module>,<name>,<vcd name>,<size>,<starting_value>]
	keys = cpu_only(make_key())
	flags = [] #flag_check()
	eqs = eq_check(keys)
	#print(len(keys))
	#print(len(flags))
	#print(len(eqs))
	# prep the vcd
	file = open(vcd_name,"r")
	text= file.read()
	file.close()
	text = text[text.find("dumpvars"):]
	text = text[8:]
	# put in the timing information - since ".." may be a register, we just say "#event"
	text = re.sub(r"\n#[0123456789]+\n", "\n#event\n", text)
	# change up lines for readlines parsing - just gonna separate with spaces for now
	text = text.replace("\n"," ")
	text = text.replace("#event","\n")
	# cache the file as a temp to re-read with readlines
	my_out = open(temp_vcd, "w")
	my_out.write(text)
	my_out.close()
	my_in = open(temp_vcd, "r")
	lines = my_in.readlines()
	my_in.close()
	# have transposed vcd in "lines"
	final_out = open("parsed_" + str(i) + ".in", "w", newline="\n")
	cycount = 0
	for line in lines:
		for key in keys: # perform updates for all relevant registers
			if key[3] == 1: # single bit case
				for value in ["z","x","0","1"]:
					if value + key[2] + " " in line:
						key[4] = value
			elif key[2] in line:			
				value = line.split(" " + key[2] + " ")[0]
				value = value[value.rfind(" ")+1:]
				value = "".join(value.split())				
				if value != "":
					if value[0] == "b":
						value = value[1:]
					key[4] = value
				#print(value)
		for flag in flags:
			value = line.split(" " + key[2] + " ")[0]
			value = value[value.rfind(" ")+1:]
			value = "".join(value.split())				
			if value != "":
				if value[0] == "b":
					value = value[1:]
				key[4] = value
		#final_out.write("KEYS\n\n")
		for key in keys:
			#final_out.write(key[0] + "." + key[1] + "==" + key[4] + "\n")
			#print(key[1])
			key_print(final_out,key)
		#final_out.write("FLAGS\n\n")
		for flag in flags:
			#flag_print(final_out,flag)
			1 == 1
		#final_out.write("EQS\n\n")
		for eq in eqs:
			1 == 1
			#eq_print(final_out,eq,keys)
		cycount = cycount + 1
		if (cycount <= i):
			final_out.write("..\n")
		else:
			final_out.write("--\n")
			final_out.close()
			break
	if (cycount <= i):
		final_out.write("--\n")
		final_out.close()
		#print(str(cycount))
	
def parses():
	for i in [2,10,100,1000,2000]:
		parse(i)

parses()