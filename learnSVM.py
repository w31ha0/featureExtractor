from sklearn import svm,cross_validation
from math import *
import os

family = "BaseBridge"
malicious_dir_path = "/home/ubuntu/featuresOutput/"+family
benign_dir_path = "/home/ubuntu/benign_samples/"
maliciousDataSet = []
beinignDataSet = []
fullSet = []

clf = svm.SVC(gamma=0.01,C=100)
trainingPortion = 0.8

def loadDataSet():
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
print "No of training sets:" + str(len(trainingSet))
print "No of test sets:" + str(len(testSet))
print "No of malicious samples: " + str(len(maliciousDataSet))                
print "No of benign samples: " + str(len(beinignDataSet))   
    
x_train,x_test,y_train,y_test = cross_validation.train_test_split(fullSet,labelSet, test_size=(1-trainingPortion) )
    
clf.fit(x_train,y_train)

accuracy = clf.score(x_test,y_test)
print "Accuracy: "+str(accuracy)
            