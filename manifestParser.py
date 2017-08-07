import xml.etree.ElementTree as ET
import os
from constants import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE_CONVERTED

def checkSuspiciousName(sample,array):
	for malicious in array:
		if malicious in sample:
			return True
	return False

def parseManifest():	
	tree = ET.parse(manifestPath)
	root = tree.getroot()
	
	MALICIOUS_NAMES = []
	MALICIOUS_NAMES.extend(MALICIOUS_ACTIVITIES)
	MALICIOUS_NAMES.extend(MALICIOUS_SERVICES)
	MALICIOUS_NAMES.extend(MALICIOUS_RECEIVERS)
	MALICIOUS_NAMES.extend(MALICIOUS_PROVIDERS)
	
	permissionsCounter = 0
	hardwareCounter = 0
	intentsCounter = 0
	malicousNamesCounter = 0
	suspiciousPermissions = []
	suspiciousIntents = []
	suspiciousHardwares = []
	malicousNames = []
	
	package = root.attrib["package"]
	if package == BANGCLE_LABEL:
		print "Use of Bangcle detected:"+package
	for child in root:
		if child.tag == PERMISSION_LABEL: #Parse permissions
			permission = child.attrib[OBJECT_KEY]
			if permission in MALICIOUS_PERMISSIONS:
				permissionsCounter = permissionsCounter + 1
				suspiciousPermissions.append(permission)
		elif child.tag == APPLICATION_LABEL: 
			for innerChild in child:
				componentName = innerChild.attrib[OBJECT_KEY]
				if innerChild.tag == ACTIVITY_LABEL or innerChild.tag == RECEVIER_LABEL or innerChild.tag == SERVICE_LABEL or innerChild.tag == PROVIDER_LABEL:
					if checkSuspiciousName(componentName,MALICIOUS_NAMES): #parse malicious names in components
						malicousNamesCounter = malicousNamesCounter + 1
						malicousNames.append(componentName)
				if checkSuspiciousName(componentName,BANGCLE_ACTIVITIES):
					print "Use of Bangcle detected: " + componentName
					for innerInnerChild in innerChild:
						if innerInnerChild.tag == INTENT_LABEL: #Parse intents
							for action in innerInnerChild:
								if action.tag == ACTION_LABEL:
									intent = action.attrib[OBJECT_KEY]
									if intent in MALICIOUS_INTENTS:
										intentsCounter = intentsCounter + 1
										suspiciousIntents.append(intent)
								elif action.tag == HARDWARE_LABEL: #Parse HARDWARE
									intent = action.attrib[OBJECT_KEY]
									if intent in MALICIOUS_HARDWARES:
										hardwareCounter = hardwareCounter + 1
										suspiciousHardwares.append(intent)
									
	print "Number of suspiscious permissions is "+str(permissionsCounter)+":"+str(suspiciousPermissions)
	print ""
	print "Number of suspiscious intents is "+str(intentsCounter)+":"+str(suspiciousIntents)
	print ""
	print "Number of suspiscious hardware is "+str(hardwareCounter)+":"+str(suspiciousHardwares)
	print ""
	print "Number of suspiscious names is "+str(malicousNamesCounter)+":"+str(malicousNames)		
	print ""	
		
				
	