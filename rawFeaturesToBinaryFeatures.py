import sys,os
from constants import *

dir_path = sys.argv[1]

for path, subdirs, files in os.walk(dir_path):
    for name in files:
        fullpath = os.path.join(path, name)
        family = fullpath.split('/')[4]
        os.system("mkdir "+PROJECT_PATH+"featuresOutput/"+family+"/binaryForm")
        if name.endswith('txt') and "binary" not in name:
            print "Reading contents of " + name
            f = open(fullpath,"r")
            features = f.readlines()
            f.close()
            f2 = open(PROJECT_PATH+"featuresOutput/"+family+"/binaryForm/binary"+name,"w+")
            for feature in features:
                #print feature
                if ":::" not in feature:
                    continue
                binary = feature.split('::: ')[1].strip()
                f2.write(binary)
                f2.write(' ')
            f2.close()
            
