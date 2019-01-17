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
a = False
d = False
w = False
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
		my_out2.write("we != 1\n..\n")
my_out.close()
my_out2.close()
