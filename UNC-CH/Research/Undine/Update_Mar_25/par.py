content = open("multi.vcd", "r").read()
content = content.replace("addr == 0", "a=")
content = content.replace("addr != 0", "a!")
content = content.replace("data == 0", "d=")
content = content.replace("data != 0", "d!")
content = content.replace("we == 1", "w=")
content = content.replace("we != 1", "w!")
content = content.replace("\r\n", ",");
content = content.replace(",..,", "\n")
my_out = open("trc.temp", "w")
my_out.write(content);
my_out.close();
contentlines = open("trc.temp", "r").readlines()
my_out2 = open("trc.out", "w")
my_out3 = open("count.txt", "w")
a = False
d = False
w = False
potentl = 0
support = 0
for line in contentlines:
	if "a=" in line:
		a = True
	if "a!" in line:
		a = False
	if "d=" in line:
		d = True
	if "d!" in line:
		d = False
	if "w=" in line:
		w = True
	if "w!" in line:
		w = False
	if ((not (a & w)) | (a & d & w)):
		if a:
			my_out2.write("addr == 0\n")
		else:
			my_out2.write("addr != 0\n")
		if d:
			my_out2.write("data == 0\n")
		else:
			my_out2.write("data != 0\n")
		if w:
			my_out2.write("we == 1\n..\n")
		else:
			my_out2.write("we != 1\n--\n")
#	if (a & w):
#		potentl = potentl + 1
#	if (a & d & w):
#		support = support + 1
		
my_out.close()
my_out2.close()
#my_out3 = open("count.txt", "w")
#my_out3.write("support potential:  " + str(potentl) + "\nsupport:  " + str(support))
#my_out3.close()
