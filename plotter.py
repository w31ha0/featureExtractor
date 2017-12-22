import matplotlib.pyplot as plt
import sys

dataFile = sys.argv[1]
f = open(dataFile,'r')
content = f.readlines()

x_axis = []
y_axis = []


for pair in content:
	x_value = pair.split('\t')[0]
	y_value = pair.split('\t')[1]
	x_axis.append(x_value)
	y_axis.append(y_value)

plt.title(dataFile.split('_')[0]+"_"+dataFile.split('_')[1])
plt.xlabel(dataFile.split('_')[-1])
plt.ylabel('Accuracy')
plt.plot(x_axis,y_axis)
plt.show()
