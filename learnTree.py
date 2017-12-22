from sklearn import cross_validation
from sklearn.tree import DecisionTreeClassifier

from math import *
from constants import *

import os,sys

family = sys.argv[1]
malicious_dir_path = PROJECT_PATH+"featuresOutput/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput/benign"
maliciousDataSet = []
beinignDataSet = []
fullSet = []
resultsFile1 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_Tree_random'
resultsFile2 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_Tree_depth'
resultsFile3 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_Tree_sample'

os.system('mkdir '+PROJECT_PATH+"machinelearningResults/")
os.system('mkdir '+PROJECT_PATH+"machinelearningResults/"+family)
os.system('rm '+resultsFile1)
os.system('rm '+resultsFile2)
os.system('rm '+resultsFile3)

param_random=100
param_maxDepth=3
param_min_samples=5
random_min = 1
random_max=100
random_step=5
maxDepth_min=1
maxDepth_max=100
maxDepth_step=5
min_samples_min=1
min_samples_max=100
min_samples_step=5

trainingPortion = 0.8

def loadDataSet():
    global fullSet
    #loadMalwareSet
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
    #load benignSet            
    for path, subdirs, files in os.walk(benign_dir_path):
        for name in files:
            if len(beinignDataSet) == len(maliciousDataSet):
                break
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
                beinignDataSet.append(results)
                
    print "Combining benign and malicious data sets"            
    fullSet = maliciousDataSet + beinignDataSet

loadDataSet()
#print str(maliciousDataSet)
noOfTrainingSets = int(trainingPortion*len(maliciousDataSet))
trainingSet = maliciousDataSet[:noOfTrainingSets]
testSet = maliciousDataSet[noOfTrainingSets:]   
labelSet = []
for data in maliciousDataSet:    #1 = malicious, 0=benign
    labelSet.append(1)
for data in beinignDataSet:
    labelSet.append(0)
print "No of training samples:" + str(len(trainingSet))
print "No of test samples:" + str(len(testSet))
print "No of malicious samples: " + str(len(maliciousDataSet))                
print "No of benign samples: " + str(len(beinignDataSet))   
print "No of label sets: " + str(len(labelSet)) 
print "No of full sets: " + str(len(fullSet))
    
x_train,x_test,y_train,y_test = cross_validation.train_test_split(fullSet,labelSet, test_size=(1-trainingPortion) )

param_random = random_min
param_depth = maxDepth_min
param_samples = min_samples_min
while param_random <= random_max:
	while param_depth <= maxDepth_max:
		while param_samples <= min_samples_max:
			clf = DecisionTreeClassifier(criterion = "gini", random_state = param_random,
		                       max_depth=param_depth, min_samples_leaf=param_samples)
			clf.fit(x_train,y_train)
			accuracy = clf.score(x_test,y_test)
			print "Accuracy: "+str(accuracy)+" for random:"+str(param_random)+",depth:"+str(param_depth)+",samples:"+str(param_samples)
			f1 = open(resultsFile1,'a')
			f1.write(str(param_random)+"\t"+str(accuracy))
			f1.write('\n')
			f1.close()
			f2 = open(resultsFile2,'a')
			f2.write(str(param_depth)+"\t"+str(accuracy))
			f2.write('\n')
			f2.close()
			f3 = open(resultsFile3,'a')
			f3.write(str(param_samples)+"\t"+str(accuracy))
			f3.write('\n')
			f3.close()
			param_samples += min_samples_step	
		param_depth += maxDepth_step
		param_samples = min_samples_min
	param_random += random_step
	param_depth = maxDepth_min
	param_samples = min_samples_min
	#print "param_gamma is now " + str(param_gamma)
		
		

            
