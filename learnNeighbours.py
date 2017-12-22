from sklearn import cross_validation
from sklearn import neighbors
from sklearn.grid_search import GridSearchCV
from math import *
from constants import *
import os,sys

def fillParams(min,max,step):
	array = []
	i = min
	while i <= max:
		array.append(i)
		i += step
	return array

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
neighbour_max=48
neighbour_step=5
leaf_min=1
leaf_max=100
leaf_step=5
p_min=1
p_max=100
p_step=5

neighbours = fillParams(neighbour_min,neighbour_max,neighbour_step)
leaves = fillParams(leaf_min,leaf_max,leaf_step)
ps = fillParams(p_min,p_max,p_step)
param_grid = {'n_neighbors':neighbours,'leaf_size':leaves,'p':ps}
clf = neighbors.KNeighborsClassifier()
grid_search = GridSearchCV(clf, param_grid,cv=2)
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
grid_search.fit(x_train, y_train)
score = grid_search.score(x_test,y_test)
params = grid_search.best_params_
print "Best accuracy is "+str(score)+" with params "+str(params)
		
		

            
