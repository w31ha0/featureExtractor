import sys,os
from constants import *

def searchSenstitiveCalls():
	dir_path = os.path.dirname(os.path.realpath(__file__)) + '/' + TEMP_DIRECTORY + '/' + SMALI_PATH
	sensitiveAPISCounter = 0
	sensitiveAPIS = []
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('smali'):
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').read()
				for api in SENSITIVE_APIS:
					if api in content:
						sensitiveAPISCounter = sensitiveAPISCounter + 1
						sensitiveAPIS.append(fullpath + " : " + api)
						
	print "Number of sensitive API Calls: "+str(sensitiveAPISCounter)+str(sensitiveAPIS)
