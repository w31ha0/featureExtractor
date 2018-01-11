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

maliciousDataSet = []
beinignDataSet = []
fullSet = []

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

    if len(beinignDataSet) > len(maliciousDataSet):
        shuffle(beinignDataSet)
        beinignDataSet = beinignDataSet[:len(maliciousDataSet)]
        for b in beinignDataSet:
            if len(b) != 162:
                print str(len(b))+" for "

    print "Combining benign and malicious data sets"
    fullSet = maliciousDataSet + beinignDataSet

family = sys.argv[1]
malicious_dir_path = PROJECT_PATH+"featuresOutput2/"+family
benign_dir_path = PROJECT_PATH+"featuresOutput2/benign"


gamma_min = 2**(-15)
gamma_max = 2**4
gamma_step = 4
C_min = 2**(-5)
C_max = 2**(16)
C_step = 4

Cs = fillParams(C_min,C_max,C_step)
Gammas = fillParams(gamma_min,gamma_max,gamma_step)
param_grid = {'C':Cs,'gamma':Gammas}
clf = svm.SVC()
grid_search = GridSearchCV(clf, param_grid)
trainingPortion = float(sys.argv[2])

loadDataSet()
if len(maliciousDataSet) < 10:
    print "Skipping "+family+" because there are not enough data"
    sys.exit(1)
#print str(maliciousDataSet)
noOfTrainingSets = int(trainingPortion*len(fullSet))
noOfTestSets = len(fullSet) - noOfTrainingSets
#x_train,x_test,y_train,y_test = cross_validation.train_test_split(fullSet,labelSet, test_size=(1-trainingPortion) )
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
print str(x_train)
print str(x_test)

print "No of training samples:" + str(len(x_train))
print "No of test samples:" + str(len(x_test))
print "No of malicious samples: " + str(len(maliciousDataSet))
print "No of benign samples: " + str(len(beinignDataSet))
print "Total Number of samples: " + str(len(fullSet))

grid_search.fit(x_train, y_train)
predictions = grid_search.predict(x_test)
cm = metrics.confusion_matrix(y_test,predictions)
FP = float((cm.sum(axis=0) - np.diag(cm) )[0])
FN = float((cm.sum(axis=1) - np.diag(cm))[0])
TP = float((np.diag(cm))[0])
TN = float(cm.sum() - (FP + FN + TP))

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
params = grid_search.best_params_
print "TPR:"+str(TPR)+",TNR:"+str(TNR)+",FPR:"+str(FPR)+",FNR:"+str(FNR)+",ACC:"+str(ACC)+" with params "+str(params)

rb = open_workbook("learning_results2.csv")
sh = rb.sheet_by_name("SVM")
book = copy(rb)
sh2 = book.get_sheet(0)

row = 0
newRow = sh.nrows
for i in range(0,newRow):
    value = sh.col_values(0)[i]
    if value == family:
        sh2.write(i,1,str(ACC))
        sh2.write(i,2,str(TPR))
        sh2.write(i,3,str(TNR))
        sh2.write(i,4,str(FPR))
        sh2.write(i,5,str(FNR))
        sh2.write(i,6,str(params['C']))
        sh2.write(i,7,str(params['gamma']))
        sh2.write(i,8,str(len(maliciousDataSet)))
        sh2.write(i,9,str(len(beinignDataSet)))
        break
    elif i == (newRow-1):
        sh2.write(newRow,0,str(family))
        sh2.write(newRow,1,str(ACC))
        sh2.write(newRow,2,str(TPR))
        sh2.write(newRow,3,str(TNR))
        sh2.write(newRow,4,str(FPR))
        sh2.write(newRow,5,str(FNR))
        sh2.write(newRow,6,str(params['C']))
        sh2.write(newRow,7,str(params['gamma']))
        sh2.write(newRow,8,str(len(maliciousDataSet)))
        sh2.write(newRow,9,str(len(beinignDataSet)))
    #print value
#sh.write()

try:
    rb.save("learning_results2.csv")
except:
    book.save("learning_results2.csv")
