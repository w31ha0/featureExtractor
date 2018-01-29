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
noOfIterations = int(sys.argv[3])
scoringMode = sys.argv[4]
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
neighbour_min = 1
neighbour_max=int(0.5*trainingPortion*len(fullSet))
neighbour_step=int(0.03 * neighbour_max)

print "Max neighbours "+str(neighbour_max)
'''
leaf_min=1
leaf_max=100
leaf_step=5
p_min=1
p_max=100
p_step=5
'''
neighbours = fillParams(neighbour_min,neighbour_max,neighbour_step)
#leaves = fillParams(leaf_min,leaf_max,leaf_step)
#ps = fillParams(p_min,p_max,p_step)
param_grid = {'n_neighbors':neighbours}
clf = neighbors.KNeighborsClassifier()
grid_search = GridSearchCV(clf, param_grid)



#print str(maliciousDataSet)
noOfTrainingSets = int(trainingPortion*len(fullSet))
noOfTestSets = len(fullSet) - noOfTrainingSets

#x_train,x_test,y_train,y_test = cross_validation.train_test_split(fullSet,labelSet, test_size=(1-trainingPortion) )
netParams = {}
if scoringMode == "greatest" or scoringMode == "average":
    netACC = 0.0
    netTPR = 0.0
    netFPR = 0.0
    netTNR = 0.0
    netFNR = 0.0
elif scoringMode == "lowest": 
    netACC = 10.0
    netTPR = 10.0
    netFPR = 10.0
    netTNR = 10.0
    netFNR = 10.0
    
for i in range(0,noOfIterations):
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

    grid_search.fit(x_train, y_train)
    predictions = grid_search.predict(x_test)
    cm = metrics.confusion_matrix(y_test,predictions)
    misclassified = np.where(predictions != y_test)
    f = open("misclassified_Neighbours_"+family,"w+")
    print "Misclassified Samples:"
    for mis in misclassified[0]:
        f.write(str(x_test[mis])+" misclassified as " + str(predictions[mis]))
        f.write("\n")
    f.close()
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
    '''
    netACC += ACC
    netTPR += TPR
    netTNR += TNR
    netFPR += FPR
    netFNR += FNR
    '''

    if scoringMode == "greatest":
        if ACC > netACC:
            netParams = params
            netACC = ACC
        if TPR > netTPR:
            netTPR = TPR
        if TNR > netTNR:
            netTNR = TNR
        if FPR > netFPR:
            netFPR = FPR
        if FNR > netFNR:
            netFNR = FNR
    elif scoringMode == "lowest":
        if ACC < netACC:
            netParams = params
            netACC = ACC
        if TPR < netTPR:
            netTPR = TPR
        if TNR < netTNR:
            netTNR = TNR
        if FPR < netFPR:
            netFPR = FPR
        if FNR < netFNR:
            netFNR = FNR
    elif scoringMode == "average":
        netParams = params
        netACC += ACC
        netTPR += TPR
        netTNR += TNR
        netFPR += FPR
        netFNR += FNR
    
    print "TPR:"+str(TPR)+",TNR:"+str(TNR)+",FPR:"+str(FPR)+",FNR:"+str(FNR)+",ACC:"+str(ACC)+" with params "+str(params)
    
if scoringMode == "average":
    netACC /= noOfIterations
    netTPR /= noOfIterations
    netTNR /= noOfIterations
    netFPR /= noOfIterations
    netFNR /= noOfIterations

print "OVERALL: TPR:"+str(netTPR)+",TNR:"+str(netTNR)+",FPR:"+str(netFPR)+",FNR:"+str(netFNR)+",ACC:"+str(netACC)

rb = open_workbook("learning_results2.csv")
sh = rb.sheet_by_name("Neighbours")
book = copy(rb)
sh2 = book.get_sheet(2)

newRow = sh.nrows
for i in range(0,newRow):
    value = sh.col_values(0)[i]
    if value == family:
        sh2.write(i,1,str(netACC))
        sh2.write(i,2,str(netTPR))
        sh2.write(i,3,str(netTNR))
        sh2.write(i,4,str(netFPR))
        sh2.write(i,5,str(netFNR))
        sh2.write(i,6,str(netParams['n_neighbors']))
        sh2.write(i,7,str(len(maliciousDataSet)))
        sh2.write(i,8,str(len(beinignDataSet)))
        break
    elif i == (newRow-1):
        sh2.write(newRow,0,str(family))
        sh2.write(newRow,1,str(netACC))
        sh2.write(newRow,2,str(netTPR))
        sh2.write(newRow,3,str(netTNR))
        sh2.write(newRow,4,str(netFPR))
        sh2.write(newRow,5,str(netFNR))
        sh2.write(newRow,6,str(netParams['n_neighbors']))
        sh2.write(newRow,7,str(len(maliciousDataSet)))
        sh2.write(newRow,8,str(len(beinignDataSet)))
    #print value
#sh.write()

try:
    rb.save("learning_results2.csv")
except:
    book.save("learning_results2.csv")
