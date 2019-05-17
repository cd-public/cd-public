def make_cut():
	for line in open("out_cs.txt","r"):
		if "::" in line[0:2]:
			1 == 1
		else:
			print(line.rstrip())
			
def dec_to_hex():
	for line in open("cut.txt","r"):
		if "::" in line[0:2] or "==" in line[0:2]:
			print(line.rstrip())
		else:
			splits = line.split()
			out = ""
			for i in range(len(splits)):
				if splits[i].isdigit():  # simple int conversion
					out = out + " " + str(hex(int(splits[i])))
				elif splits[i][0].isdigit() and splits[i][1] == "." and "E" in splits[i]:
					val = splits[i].split("E")[0].replace(".","")
					val = val + (int(splits[i].split("E")[1]) + 1- len(val)) * "0"
					out = out + " " + str(hex(int(val)))
				else:
					out = out + " " + splits[i]
			print(out[1:].rstrip())
		
dec_to_hex()