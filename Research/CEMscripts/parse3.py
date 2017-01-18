import glob

list_of_files = glob.glob('./*_m.out')
print("\n\nReading files...\n\n")
f = open('data/data.csv', 'w')
f.write("Filename,ILP Framesize,Matching Framesize,Matching over ILP\n")
for file_name in list_of_files:
		FI1 = open(file_name, 'r')
		content2 = FI1.read()
		FI2 = open(file_name.replace('_m.out', '_i.out'), 'r')
		content1 = FI2.read()
		f.write(file_name.replace('_m.out', '').replace('.\ex', '') + ',' + content1.replace('\n','') + ',' + content2 + ',' + str(float(content2) / float(content1)) + '\n')