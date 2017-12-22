from sklearn import cross_validation
from sklearn import neighbors

from math import *
from constants import *

import os,sys

family = sys.argv[1]
malicious_dir_path = PROJECT_PATH+"featuresOutput/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput/benign"
maliciousDataSet = []
beinignDataSet = []
fullSet = []
resultsFile1 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_neighbour'
resultsFile2 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_leaf'
resultsFile3 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_p'

os.system('mkdir '+PROJECT_PATH+"machinelearningResults/")
os.system('mkdir '+PROJECT_PATH+"machinelearningResults/"+family)
os.system('rm '+resultsFile1)
os.system('rm '+resultsFile2)
os.system('rm '+resultsFile3)

param_neighbour=100
param_leaf=3
param_p=5
neighbour_min = 1
neighbour_max=100
neighbour_step=5
leaf_min=1
leaf_max=100
leaf_step=5
p_min=1
p_max=100
p_step=5

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

param_neighbour = neighbour_min
param_leaf = leaf_min
param_p = p_min
while param_neighbour <= neighbour_max:
	while param_leaf <= leaf_max:
		while param_p <= p_max:
			clf = neighbors.KNeighborsClassifier(n_neighbors=param_neighbour,leaf_size=param_leaf,p=param_p)
			clf.fit(x_train,y_train)
			accuracy = clf.score(x_test,y_test)
			print "Accuracy: "+str(accuracy)+" for neighbours:"+str(param_neighbour)+",leaf:"+str(param_leaf)+",p:"+str(param_p)
			f1 = open(resultsFile1,'a')
			f1.write(str(param_neighbour)+"\t"+str(accuracy))
			f1.write('\n')
			f1.close()
			f2 = open(resultsFile2,'a')
			f2.write(str(param_leaf)+"\t"+str(accuracy))
			f2.write('\n')
			f2.close()
			f3 = open(resultsFile3,'a')
			f3.write(str(param_p)+"\t"+str(accuracy))
			f3.write('\n')
			f3.close()
			param_p += p_step	
		param_leaf += leaf_step
		param_p = p_min
	param_neighbour += neighbour_step
	param_leaf = leaf_min
	param_p = p_min
	#print "param_gamma is now " + str(param_gamma)
		
		

            
