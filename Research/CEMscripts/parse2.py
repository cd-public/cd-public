import glob
import sched

list_of_files = glob.glob('./*.csv')
print("\n\nReading files...\n\n")
for file_name in list_of_files:
  FI1 = open(file_name, 'r')
  content1 = FI1.readlines()
  FI2 = open(file_name.replace('.csv', '.in'), 'r')
  content2 = FI2.readlines()
  sched.sched(file_name, content1, content2)