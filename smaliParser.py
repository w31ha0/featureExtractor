import re
import sys,os
from constants import *

def parseSmali():
	dir_path = os.path.dirname(os.path.realpath(__file__)) + '/' + TEMP_DIRECTORY + '/' + SMALI_PATH
	allSensitiveAPIS = []
	allNetworkAddresses = []
	allConstantClassNames = []
	allReflectionCode = []
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('smali'):
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').readlines()
				allSensitiveAPIS.extend(searchSenstitiveCalls(content,fullpath))
				allNetworkAddresses.extend(searchNetworkAddresses(content,fullpath))
				allConstantClassNames.extend(searchConstantClassNames(content,fullpath))
				allReflectionCode.extend(searchForReflection(content,fullpath))
			else:
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').readlines()			
				allNetworkAddresses.extend(searchNetworkAddresses(content,fullpath))				
				
	print "Number of sensitive APIS:" + str(len(allSensitiveAPIS)) + str(allSensitiveAPIS)
	print ""
	print "Number of network addresses:" + str(len(allNetworkAddresses)) + str(allNetworkAddresses)
	print ""
	print "Number of constant class names:" + str(len(allConstantClassNames)) + str(allConstantClassNames)
	print ""
	print "Number of reflection code:" + str(len(allReflectionCode)) + str(allReflectionCode)
	print ""
	

def searchSenstitiveCalls(content,fullpath):
	sensitiveAPIS = []
	lineNo = 1
	
	for api in SENSITIVE_APIS:
		for line in content:
			lineNo = lineNo + 1
			if api in line:
				record = api + " <" + fullpath + ":"+str(lineNo)+">"
				sensitiveAPIS.append(record)
			
	return sensitiveAPIS
						

	
def searchNetworkAddresses(content,fullpath):
	networkAddresses = []
	lineNo = 1
	
	for line in content:
		lineNo = lineNo + 1
		ips = re.findall( r'[0-9]+(?:\.[0-9]+){3}', line)
		for ip in ips:
			record = ip + " <" + fullpath + ":"+str(lineNo)+">"
			networkAddresses.append(record)	
		
	return networkAddresses
	
def searchConstantClassNames(content,fullpath):
	constantStrings = []
	constantClassNames = []
	lineNo = 1
	
	for line in content:
		lineNo = lineNo + 1
		constantStrings = re.findall( r'const-string\s\w\w,\s"\S*"', line)
		for constant in constantStrings:
			if 1 == 2: #to match class names here
				constantClassNames.append(constant)
		
	return constantClassNames
	
def searchForReflection(content,fullpath):
	reflectionCode = []
	lineNo = 1

	for line in content:
		lineNo = lineNo + 1
		if REFLECTION_LABEL in line and GET_METHOD_LABEL in line:
			#print line
			record = line + " <" + fullpath + ":"+str(lineNo)+">"
			reflectionCode.append(record)
			
	return reflectionCode
	
