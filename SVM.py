from sklearn import svm,cross_validation,preprocessing,metrics
from sklearn.grid_search import GridSearchCV
from math import *
from constants import *
import xlwt
from xlrd import *
from xlutils.copy import copy
import os,sys
from random import shuffle
import numpy as np
from scipy.stats.stats import pearsonr   

maliciousDataSet = []
beinignDataSet = []
fullSet = []
maliciousDict = []
benignDict = []
samplesDict = {}
featureNames = []

f = open("features.txt","r")
content = f.readlines()
for line in content:
    payload = line.split(" ::: ")[0]
    featureNames.append(payload)

def generateKey(array):
    key = ""
    for item in array:
        key += ","+str(item)
    return key

def fillParams(min,max,step):
    array = []
    i = min
    while i <= max:
        array.append(i)
        i *= step
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
                array = array[:163]
                results = map(int, array[:-1])
                if len(results) != 162:
                    print str(len(results))+" for "+fullpath
                #print str(results)
                maliciousDataSet.append(results)
                maliciousDict.append(name)
                samplesDict[generateKey(results)]=name
    #load benignSet
    for path, subdirs, files in os.walk(benign_dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            #print name
            if "binary123" in name:
                f = open(fullpath,"r")
                data = f.read()
                #print "Read file " + name + " with data " + data
                f.close()
                array = data.split(' ')
                #print str(array)
                #print fullpath
                #print str(len(array))
                array = array[:163]
                results = map(int, array[:-1])
                if len(results) != 162:
                    print str(len(results))+" for "+fullpath
                #print str(results)
                beinignDataSet.append(results)
                benignDict.append(name)
                samplesDict[generateKey(results)]=name

    if len(beinignDataSet) > len(maliciousDataSet):
        shuffle(beinignDataSet)
        beinignDataSet = beinignDataSet[:len(maliciousDataSet)]
        for b in beinignDataSet:
            if len(b) != 162:
                print str(len(b))+" for "

    print "Combining benign and malicious data sets"
    fullSet = maliciousDataSet + beinignDataSet

family = sys.argv[1]
p_C = float(sys.argv[2])
p_gamma = float(sys.argv[3])
malicious_dir_path = PROJECT_PATH+"featuresOutput2/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput2/benign"

clf = svm.SVC(gamma=p_gamma,C=p_C,kernel="linear")
trainingPortion = float(sys.argv[2])
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

x = list(enumerate(maliciousDataSet))
shuffle(x)
MaliciousIndices, maliciousDataSet = zip(*x)

y = list(enumerate(beinignDataSet))
shuffle(y)
BenignIndices, beinignDataSet = zip(*y)

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
#print str(x_train)
#print str(x_test)

print "No of training samples:" + str(len(x_train))
print "No of test samples:" + str(len(x_test))
print "No of malicious samples: " + str(len(maliciousDataSet))
print "No of benign samples: " + str(len(beinignDataSet))
print "Total Number of samples: " + str(len(fullSet))

clf.fit(x_train, y_train)
print "Coefficients are "+str(clf.coef_) 
predictions = clf.predict(x_test)
cm = metrics.confusion_matrix(y_test,predictions)
misclassified = np.where(predictions != y_test)
f = open("misclassified_SVM_"+family,"w+")
for mis in misclassified[0]:
    f.write(str(x_test[mis])+" misclassified as " + str(predictions[mis]))
    f.write("\n")
f.close()
FP = float((cm.sum(axis=0) - np.diag(cm) )[0])
FN = float((cm.sum(axis=1) - np.diag(cm))[0])
TP = float((np.diag(cm))[0])
TN = float(cm.sum() - (FP + FN + TP))

'''
print "FP:"+str(FP)
print "FN:"+str(FN)
print "TP:"+str(TP)
print "TN:"+str(TN)
'''
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

featuresRanking = {}
for i in range(0,len(clf.coef_[0])):
    featureName = featureNames[i]
    featuresRanking[featureName] = clf.coef_[0][i]
    
for key, value in reversed(sorted(featuresRanking.iteritems(), key=lambda (k,v): (v,k))):
    print "%s: %s" % (key, value)


'''
netACC /= noOfIterations
netTPR /= noOfIterations
netTNR /= noOfIterations
netFPR /= noOfIterations
netFNR /= noOfIterations


aggregatedFeatures = [[] for _ in range(163)]

print str(aggregatedFeatures[0])
counter = 0
for sample in x_test:
    counter += 1
    for featureIndex in range(0,len(sample)):
        array = aggregatedFeatures[featureIndex]
        array.append(sample[featureIndex])
        aggregatedFeatures[featureIndex] = array     
        
for j in range(0,len(aggregatedFeatures)):
    corr = pearsonr(aggregatedFeatures[j],predictions.tolist())[0]
    if corr > 0.5:
        print featureNames[j]+" ::: " + str(corr)
'''      
