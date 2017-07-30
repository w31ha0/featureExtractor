import re
import sys,os
from constants import *

def parseSmali():
	dir_path = os.path.dirname(os.path.realpath(__file__)) + '/' + TEMP_DIRECTORY + '/' + SMALI_PATH
	allSensitiveAPIS = []
	allNetworkAddresses = []
	allConstantClassNames = []
	
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('smali'):
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').read()
				allSensitiveAPIS.extend(searchSenstitiveCalls(content,fullpath))
				allNetworkAddresses.extend(searchNetworkAddresses(content,fullpath))
				allConstantClassNames.extend(searchConstantClassNames(content,fullpath))
			else:
				fullpath = os.path.join(path, name)
				content = open(fullpath,'r').read()			
				allNetworkAddresses.extend(searchNetworkAddresses(content,fullpath))				
				
	print "Number of sensitive APIS:" + str(len(allSensitiveAPIS)) + str(allSensitiveAPIS)
	print "Number of network addresses:" + str(len(allNetworkAddresses)) + str(allNetworkAddresses)
	print "Number of constant class names:" + str(len(allConstantClassNames)) + str(allConstantClassNames)
	

def searchSenstitiveCalls(content,fullpath):
	sensitiveAPIS = []
	
	for api in SENSITIVE_APIS:
		if api in content:
			record = api + " <" + fullpath + ">"
			sensitiveAPIS.append(record)
			
	return sensitiveAPIS
						

	
def searchNetworkAddresses(content,fullpath):
	networkAddresses = []

	ips = re.findall( r'[0-9]+(?:\.[0-9]+){3}', content )
	for ip in ips:
		record = ip + " <" + fullpath + ">"
		networkAddresses.append(record)	
		
	return networkAddresses
	
def searchConstantClassNames(content,fullpath):
	constantStrings = []
	constantClassNames = []

	constantStrings = re.findall( r'const-string\s\w\w,\s"\S*"', content )
	for constant in constantStrings:
		if 1 == 2: #to match class names here
			constantClassNames.append(constant)
		
	return constantClassNames
