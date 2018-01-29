import os,sys
from constants import *

dir_path = sys.argv[1]
scoringMode = sys.argv[2]
classifiers = ['learnTree.py','learnSVM.py','learnNeighbours.py']
print PROJECT_PATH + 'featuresOutput2'
cmd = 'cp -r '+PROJECT_PATH+'featuresOutput/benign'+' '+PROJECT_PATH+'featuresOutput2/'
os.system(cmd)
cmd = 'python -W ignore rawFeaturesToBinaryFeatures.py '+PROJECT_PATH+'featuresOutput2/'
os.system(cmd)
trainingPortion = 0.5
noOfIterations = 5

for classifier in classifiers:
    parsedFamilies = []
    print "Now using the classifier:"+classifier
    for path, subdirs, files in os.walk(dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            family = fullpath.split('/')[4]
            if family == "benign":
                continue
            if family in parsedFamilies:
                continue
            parsedFamilies.append(family)
            if ".txt" in family:
                continue
            print "Learning family:"+family
            os.system('python -W ignore '+classifier+' '+family+' '+str(trainingPortion)+' '+str(noOfIterations)+' '+scoringMode)
