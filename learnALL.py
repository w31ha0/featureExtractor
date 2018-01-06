import os,sys
from constants import *

dir_path = sys.argv[1]
classifiers = ['learnTree.py','learnSVM.py','learnNeighbours.py']
print PROJECT_PATH + 'featuresOutput'
os.system('python rawFeaturesToBinaryFeatures.py '+PROJECT_PATH+'+featuresOutput')

for classifier in classifiers:
    parsedFamilies = []
    print "Now using the classifier:"+classifier
    for path, subdirs, files in os.walk(dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            family = fullpath.split('/')[4]
            if family in parsedFamilies:
                continue
            parsedFamilies.append(family)
            if ".txt" in family:
                continue
            print "Learning family:"+family
            os.system('python '+classifier+' '+family)
