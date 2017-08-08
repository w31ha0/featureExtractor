import re
import sys,os
from constants import *

def parseSmali():
	dir_path = os.path.dirname(os.path.realpath(__file__)) + '/' + TEMP_DIRECTORY + '/' + SMALI_PATH
	allSensitiveAPIS = []
	allNetworkAddresses = []
	allConstantClassNames = []
	allReflectionCode = []
	allDexCode = []
	allDecryptionCode = []
	allNativeCode = []
	nonAsciiCounter = 0
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('smali'):
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').readlines()
				allSensitiveAPIS.extend(searchSenstitiveCalls(content,fullpath))
				allNetworkAddresses.extend(searchNetworkAddresses(content,fullpath))
				allConstantClassNames.extend(searchConstantStrings(content,fullpath))
				allReflectionCode.extend(searchForReflection(content,fullpath))
				allDexCode.extend(searchForLoadingOfDex(content,fullpath))
				allDecryptionCode.extend(searchForDecryptionUsage(content,fullpath))
				allNativeCode.extend(searchForNativeCodeUsage(content,fullpath))
				nonAsciiCounter += searchNonAscii(content,fullpath)
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
	print "Number of Dex code:" + str(len(allDexCode)) + str(allDexCode)
	print ""
	print "Number of Native code:" + str(len(allNativeCode)) + str(allNativeCode)
	print ""	
	if nonAsciiCounter > 0:
		print "Dex Guard detected:" + str(nonAsciiCounter) + " non-ASCII namings detected"

def searchNonAscii(content,fullpath):
	counter = 0
	for line in content:
		for c in line:
			if 0 <= ord(c) <= 127:
				pass
			else:
				counter += 1
				
	return counter
	
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
	
def searchConstantStrings(content,fullpath):
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
			record = line + " <" + fullpath + ":"+str(lineNo)+">"
			reflectionCode.append(record)
			
	return reflectionCode
	
def searchForLoadingOfDex(content,fullpath):
	dexCode = []
	lineNo = 1

	for line in content:
		lineNo = lineNo + 1
		if DEX_CLASS_LABEL in line:
			record = line + " <" + fullpath + ":"+str(lineNo)+">"
			dexCode.append(record)
			
	return dexCode	

def searchForDecryptionUsage(content,fullpath):
	decryptCode = []
	lineNo = 1

	for line in content:
		lineNo = lineNo + 1
		if DECRYPTION_LABEL in line:
			record = line + " <" + fullpath + ":"+str(lineNo)+">"
			decryptCode.append(record)
			
	return decryptCode	
	
def searchForNativeCodeUsage(content,fullpath):
	nativeCode = []
	lineNo = 1

	for line in content:
		lineNo = lineNo + 1
		if NATIVE_LOAD_LABEL in line or (NATIVE_FUNCTION_LABEL in line and ".method" in line):
			record = line + " <" + fullpath + ":"+str(lineNo)+">"
			nativeCode.append(record)
			
	return nativeCode	
	
