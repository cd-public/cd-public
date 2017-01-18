import glob
import buildlp
import buildilp


list_of_files = glob.glob('./*.in')
print("\n\nReading files...\n\n")
for file_name in list_of_files:
  FI = open(file_name, 'r')
  content = FI.readlines()
  buildlp.buildlp(file_name, content)
  buildilp.buildilp(file_name, content)