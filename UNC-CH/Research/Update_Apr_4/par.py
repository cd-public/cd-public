lines = open("in.vcd", "r").readlines()
regs = ["spr_cs=","rf_we_allow=","rf_addr=","du_read=","clk=","cy_we_i=","spr_valid=","rdb=","spr_cs_fe=","rf_ena=","flushpipe=","spr_write=","supv=","we=","rf_data=","wb_freeze=","rst=","id_freeze=","spr_du_cs=","cy_we_o=","rda=","rf_enb=","rf_we="]
vals = ["x"] * len(regs)
out = open("trc.in", "w")
for line in lines:
	for reg in regs:
		if reg in line:
			vals[(regs.index(reg))] = line.split(reg,1)[1][0]
	for reg in regs:
		out.write(reg + vals[regs.index(reg)] + "\n")
	out.write("..\n")
out.write("--")
out.close