from sklearn.tree import DecisionTreeClassifier
from math import *
import os

family = "BaseBridge"
malicious_dir_path = "/home/ubuntu/featuresOutput/"+family
maliciousDataSet = []
beinignDataSet = []



clf = DecisionTreeClassifier(criterion = "gini", random_state = 100,
                               max_depth=3, min_samples_leaf=5)

trainingPortion = 0.8
testPortion = 1 - trainingPortion


def loadDataSet():
    for path, subdirs, files in os.walk(malicious_dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            #print name
            if "binary" in name:
                f = open(fullpath,"r")
                data = f.read()
                #print "Read file " + name + " with data " + data
                f.close()
                array = data.split(' ')
                results = map(int, array[:-1])
                #print str(results)
                maliciousDataSet.append(results)

loadDataSet()
#print str(maliciousDataSet)
noOfTrainingSets = int(trainingPortion*len(maliciousDataSet))
trainingSet = maliciousDataSet[:noOfTrainingSets]
testSet = maliciousDataSet[noOfTrainingSets:]
print "No of training sets:" + str(len(trainingSet))
print "No of test sets:" + str(len(testSet))                
labelSet = []
for data in trainingSet:    #1 = malicious, 0=benign
    labelSet.append(1)
labelSet[-1] = 0   #currently no benign samples yet so this line is just to make the program run...needs to be removed in the future
x,y = trainingSet,labelSet
clf.fit(x,y)

print clf.predict(testSet)
            