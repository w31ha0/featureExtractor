import sys,os,subprocess

def traverseAll():
	dir_path = os.path.dirname(os.path.realpath(__file__))
	innerFilesCounter = 0
	innerFiles = []
	suspiciousImageFiles = []
	suspiciousImageFilesCounter = 0
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			fullpath = os.path.join(path, name)
			if searchForPolyglotImageFiles(fullpath) == True:
				suspiciousImageFiles.append(fullpath)
				suspiciousImageFilesCounter += 1
			output = searchForInnerApkOrJar(path,name)
			if output != None:
				innerFiles.append(output)
				innerFilesCounter += 1
				
	print "Number of suspicious inner files is "+str(innerFilesCounter)+":"+str(innerFiles)
	print ""
	print "Number of suspicious image files is "+str(suspiciousImageFilesCounter)+":"+str(suspiciousImageFiles)
	print ""
	
def searchForInnerApkOrJar(path,name):	
	if name.endswith('apk') or name.endswith('jar'):
		fullpath = os.path.join(path, name)
		return fullpath
	else:
		return None
				

	
def searchForPolyglotImageFiles(fullpath):
	if fullpath.endswith("png") or fullpath.endswith("jpg") or fullpath.endswith("gif"):
		proc = subprocess.Popen(['binwalk',fullpath], stdout=subprocess.PIPE)
		content = proc.stdout.readlines()
		for i in range(3,len(content)):
			dataType = content[i].strip()
			if "image" not in dataType and "Zlib" not in dataType and dataType:
				print "Found suspicious " + dataType
				return True
	return False
		
	