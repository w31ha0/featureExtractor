import sys,os
from constants import *

dir_path = sys.argv[1]

for path, subdirs, files in os.walk(dir_path):
    for name in files:
        fullpath = os.path.join(path, name)
        family = fullpath.split('/')[4]
        print "family is "+family
        if ".txt" in family:
            continue
        os.system("mkdir "+PROJECT_PATH+"featuresOutput2/"+family+"/binaryForm")
        if name.endswith('txt') and "binary123" not in name:
            print "Reading contents of " + name
            f = open(fullpath,"r")
            features = f.readlines()
            f.close()
            fileName = PROJECT_PATH+"featuresOutput2/"+family+"/binaryForm/binary123"+name
            print "Creating file "+fileName
            f2 = open(fileName,"w+")
            for feature in features:
                #print feature
                if ":::" not in feature:
                    continue
                binary = feature.split('::: ')[1].strip()
                f2.write(binary)
                f2.write(' ')
            f2.close()
