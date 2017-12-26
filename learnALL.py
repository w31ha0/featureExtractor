import os,sys

dir_path = sys.argv[1]
classifiers = ['learnSVM.py','learnTree.py','learnNeighbours.py']
os.system('python rawFeaturesToBinaryFeatures.py /root/FYP/featuresOutput')

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
