from sklearn import cross_validation,preprocessing,metrics
from sklearn.tree import DecisionTreeClassifier
from sklearn.grid_search import GridSearchCV
from math import *
from constants import *
import os,sys
import xlwt
from xlrd import *
from xlutils.copy import copy
from random import shuffle
import numpy as np

featureNames = []

f = open("features.txt","r")
content = f.readlines()
for line in content:
    payload = line.split(" ::: ")[0]
    print payload
    featureNames.append(payload)

def fillParams(min,max,step):
    array = []
    array.append(min)
    i = min+step
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
p_min_samples_split = int(sys.argv[3])
p_max_depth = int(sys.argv[4])
p_min_samples_leaf = int(sys.argv[5])
malicious_dir_path = PROJECT_PATH+"featuresOutput2/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput2/benign"
maliciousDataSet = []
beinignDataSet = []
fullSet = []

loadDataSet()

clf = DecisionTreeClassifier(criterion = "entropy",min_samples_split=p_min_samples_split,max_depth=p_max_depth,min_samples_leaf=p_min_samples_leaf)

#print str(maliciousDataSet)
if len(maliciousDataSet) < 10:
    print "Skipping "+family+" because there are not enough data"
    sys.exit(1)
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

print "No of training samples:" + str(len(x_train))
print "No of test samples:" + str(len(x_test))
print "No of malicious samples: " + str(len(maliciousDataSet))
print "No of benign samples: " + str(len(beinignDataSet))
print "Total Number of samples: " + str(len(fullSet))

x_train = preprocessing.scale(np.array(x_train))
x_test = preprocessing.scale(np.array(x_test))

clf.fit(x_train, y_train)
predictions = clf.predict(x_test)
cm = metrics.confusion_matrix(y_test,predictions)
misclassified = np.where(predictions != y_test)
f = open("misclassified_Tree_"+family,"w+")
print "Misclassified Samples:"
for mis in misclassified[0]:
    f.write(str(x_test[mis])+" misclassified as " + str(predictions[mis]))
    f.write("\n")
f.close()
FP = float((cm.sum(axis=0) - np.diag(cm) )[0])
FN = float((cm.sum(axis=1) - np.diag(cm))[0])
TP = float((np.diag(cm))[0])
TN = float((cm.sum() - (FP + FN + TP)))

print "FP:"+str(FP)
print "FN:"+str(FN)
print "TP:"+str(TP)
print "TN:"+str(TN)

# Sensitivity, hit rate, recall, or true positive rate
TPR = TP/(TP+FN)
# Specificity or true negative rate
TNR = TN/(TN+FP)
# Precision or positive predictive value
PPV = TP/(TP+FP)
# Negative predictive value
NPV = TN/(TN+FN)
# Fall out or false positive rate
FPR = FP/(FP+TN)
# False negative rate
FNR = FN/(TP+FN)
# False discovery rate
FDR = FP/(TP+FP)

# Overall accuracy
ACC = (TP+TN)/(TP+FP+FN+TN)
#ACC = grid_search.score(x_test,y_test)
'''
netACC += ACC
netTPR += TPR
netTNR += TNR
netFPR += FPR
netFNR += FNR
'''

if ACC > netACC:
    netACC = ACC
if TPR > netTPR:
    netTPR = TPR
if TNR > netTNR:
    netTNR = TNR
if FPR > netFPR:
    netFPR = FPR
if FNR > netFNR:
    netFNR = FNR

print "TPR:"+str(TPR)+",TNR:"+str(TNR)+",FPR:"+str(FPR)+",FNR:"+str(FNR)+",ACC:"+str(ACC)

for i in range(0,len(featureNames)):
    if clf.feature_importances_[i] > 0:
        print featureNames[i]+" ::: "+str(clf.feature_importances_[i])

'''
netACC /= noOfIterations
netTPR /= noOfIterations
netTNR /= noOfIterations
netFPR /= noOfIterations
netFNR /= noOfIterations
'''

print "OVERALL: TPR:"+str(netTPR)+",TNR:"+str(netTNR)+",FPR:"+str(netFPR)+",FNR:"+str(netFNR)+",ACC:"+str(netACC)