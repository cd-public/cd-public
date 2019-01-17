#import
import os, random, subprocess, time, multiprocessing

def make_key(lines):
	depth = 0
	key = []
	making = False
	module = "or1200_top"
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
				key.append([module + "." temp[4],temp[3],temp[2] != "1", "x"])
		else:
			if "scope" in line:
				if "or1200_top0" in line:
					making = True
					print()
					
def print_key(key):
	file = open("key.txt", "w")
	file.write("<true name>, <vcd name>\n")
	for entry in key:
		file.write(entry[0] + ", " + entry[1] + "\n")

def fullpar(name, cycles):
	file = open(name + ".vcd","r")
	# key contains all variables in form [<true name>, <vcd name>, <flag for size greater than 1>, <default base value of "x">]
	key = make_key(file.readlines())
	#print_key(key)
	# cutting up the vcd
	# cut off the header
	file.close()
	file = open(name + ".vcd","r")
	text = file.read()
	file.close()
	file.close()
	text = text[text.find("dumpvars"):]
	text = text[8:]
	# put in the timing information - since ".." may be a register, we just say "#event"
	text = re.sub(r"\n#[0123456789]+\n", "\n#event\n", text)
	text = text.replace("\nb0 ", "\n#zero ")
	text = re.sub(r"\nb[01x]+ ", "\n#nonz ", text)
	# change up lines for readlines parsing - just gonna separate with spaces for now
	text = text.replace("\n"," ")
	text = text.replace("#event","\n")
	# cache the file as a temp to re-read with readlines
	my_out = open(name + ".temp", "w")
	my_out.write(text)
	my_out.close()
	# we'll read it back in, this time splitting on "#comma"
	my_in = open(name + ".temp", "r")
	lines = my_in.readlines()
	final_out = open(name + ".in", "w")
	cycount = 0
	for line in lines:
		for reg in key:
			if reg[1] in line:
				if reg[2]:
					# this is the "not a single bit" case
					if "#zero " + reg[1] in line:
						reg[3] = "0"
					else:
						reg[3] = "f"
				else:
					if "0" + reg[1] in line:
						reg[3] = "0"
					else:
						reg[3] = "f"
		for reg in key:
			final_out.write(reg[0] + reg[3] + "\n")
		cycount = cycount + 1
		if (cycount <= cycles):
			final_out.write("..\n")
		else:
			final_out.write("--\n")
			final_out.close()
			break
	if (cycount <= cycles):
		final_out.write("--\n")
		final_out.close()

def texada_call(str,name):
	str = "./texada -m " + name + ".in -f \"" + str + "\" --parse-mult-prop"
	#print str
	os.system(str)
	
def texada(name,cycle):
	#running texada...
	#templates
	temps = ["G(a)", "G(a & b)", "G(a -> b)"]#, "G(a -> Xb)", "G((a & b) -> c)", "G((a & b) -> c & d)", "G((a | b) -> X(a | b))", "G(((a xor b) | c) -> X(d & e))"]
	#temps = ["-l", "-m", "-p"]
	ret = ""
	for temp in temps:
		#time each template
		timestamp = time.time()
		p = multiprocessing.Process(target=texada_call, args=[temp,name])
		p.start()
		# Wait 60 seconds for call
		p.join(180)
		# Terminate call
		if p.is_alive():
			p.terminate()
			p.join
		# Save results
		ret = name + ", " + str(cycle) + ", " + temp + ", " + str(time.time() - timestamp) + "\n"
		#time.sleep(1)
	return ret
		
if __name__ == '__main__':
	names = ["or1200-simple"]
	cycles = [2,10,100,1000]
	times = open(name + "_times.csv", "w")
	times.write("name,cycle,temp,time\n")
	#trace generation
	for name in names:
		for cycle in cycles:
			fullpar(name, cycle)
			times.write(texada(name,cycle))
	times.close()

