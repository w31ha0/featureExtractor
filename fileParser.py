import sys,os


def searchForInnerApkOrJar():
	dir_path = os.path.dirname(os.path.realpath(__file__))
	innerFilesCounter = 0
	innerFiles = []
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('apk') or name.endswith('jar'):
				fullpath = os.path.join(path, name)
				innerFilesCounter = innerFilesCounter + 1
				innerFiles.append(fullpath)
				
	print "Number of suspicious inner files is "+str(innerFilesCounter)+":"+str(innerFiles)