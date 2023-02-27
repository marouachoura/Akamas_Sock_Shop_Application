import pandas as pd
import numpy as np
import csv
from datetime import datetime
import linecache
dateTimeObj = datetime.now()
#df = pd.read_excel('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result0.csv')
#df.insert(14, "column1", np.nan)
#data_new = pd.read_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter.csv')
#data_new['timeStamp'] = dateTimeObj
#data_new.to_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result0.csv')

# opening the CSV file
with open('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_jtl.jtl', mode ='r')as file:

  # reading the CSV file
  csvFile = csv.reader(file)
  len_csv = len(list(csvFile))-1
  print(len_csv)
  line = linecache.getline("/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_jtl.jtl",len_csv)
  txt = line.split(",")
  print(txt[0])
  timestamp = txt[0]
  # displaying the contents of the CSV file
  #for lines in csvFile:
       # print(lines)
data_new = pd.read_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_csv.csv')
data_new['timeStamp'] = timestamp
data_new.to_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_experiment.csv', index=False)
text = open("/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_experiment.csv", "r")
text = ''.join([i for i in text]) \
    .replace(" %", "")
text = ''.join([i for i in text]) \
    .replace("%", "")
x = open("/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_experiment.csv","w")
x.writelines(text)
x.close()
df = pd.read_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_experiment.csv')
df['Error']/=100
df.to_csv('/opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_experiment.csv', index=False)
