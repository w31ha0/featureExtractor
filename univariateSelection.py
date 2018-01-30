from sklearn import cross_validation,preprocessing,metrics
from sklearn import neighbors
from sklearn.grid_search import GridSearchCV
from math import *
from constants import *
import os,sys
import xlwt
from xlrd import *
from xlutils.copy import copy
from random import shuffle
import numpy as np
from scipy.stats.stats import pearsonr
from sklearn.feature_selection import SelectPercentile, f_classif

featureNames = []
f = open("features.txt","r")
content = f.readlines()
for line in content:
    payload = line.split(" ::: ")[0]
    featureNames.append(payload)

def fillParams(min,max,step):
    array = []
    i = min
    while i <= max:
        array.append(i)
        i += step
    return array

def loadDataSet():
    global fullSet,maliciousDataSet,beinignDataSet
    #loadMalwareSet
    for path, subdirs, files in os.walk(malicious_dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            #print name
            if "binary123" in name:
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
            if "binary123" in name:
                f = open(fullpath,"r")
                data = f.read()
                #print "Read file " + name + " with data " + data
                f.close()
                array = data.split(' ')
                array = array[:163]
                results = map(int, array[:-1])
                #print str(results)
                beinignDataSet.append(results)

    print "Combining benign and malicious data sets"
    fullSet = maliciousDataSet + beinignDataSet

trainingPortion = float(sys.argv[2])
family = sys.argv[1]
malicious_dir_path = PROJECT_PATH+"featuresOutput2/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput2/benign"
maliciousDataSet = []
beinignDataSet = []
fullSet = []
resultsFile1 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_neighbour'
resultsFile2 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_leaf'
resultsFile3 = PROJECT_PATH+"machinelearningResults/"+family+"/"+family+'_neighbour_p'

loadDataSet()
if len(maliciousDataSet) < 10:
    print "Skipping "+family+" because there are not enough data"
    sys.exit(1)

#print str(maliciousDataSet)
noOfTrainingSets = int(trainingPortion*len(fullSet))
noOfTestSets = len(fullSet) - noOfTrainingSets

#x_train,x_test,y_train,y_test = cross_validation.train_test_split(fullSet,labelSet, test_size=(1-trainingPortion) )
netACC = 0.0
netTPR = 0.0
netFPR = 0.0
netTNR = 0.0
netFNR = 0.0

shuffle(maliciousDataSet)
shuffle(beinignDataSet)
x_train = []
x_test = []
y_train = []
y_test = []

temp = maliciousDataSet[:int(noOfTrainingSets/2)]
x_train.extend(temp)
for sample in temp:
    y_train.append(1)
temp = beinignDataSet[:int(noOfTrainingSets/2)]
x_train.extend(temp)
for sample in temp:
    y_train.append(0)

temp = maliciousDataSet[-int(noOfTestSets/2):]
x_test.extend(temp)
for sample in temp:
    y_test.append(1)
temp = beinignDataSet[-int(noOfTestSets/2):]
x_test.extend(temp)
for sample in temp:
    y_test.append(0)

x_train = preprocessing.scale(np.array(x_train))
x_test = preprocessing.scale(np.array(x_test))

print "No of training samples:" + str(len(x_train))
print "No of test samples:" + str(len(x_test))
print "No of malicious samples: " + str(len(maliciousDataSet))
print "No of benign samples: " + str(len(beinignDataSet))
print "Total Number of samples: " + str(len(fullSet))

selector = SelectPercentile(f_classif, percentile=10)
selector.fit(x_train, y_train)

featuresRanking = {}
for i in range(0,len(selector.pvalues_)):
    featureName = featureNames[i]
    value = selector.pvalues_[i]
    if isnan(value):
        value = 0
    featuresRanking[featureName] = value
    
for key, value in reversed(sorted(featuresRanking.iteritems(), key=lambda (k,v): (v,k))):
    print "%s: %s" % (key, value)
