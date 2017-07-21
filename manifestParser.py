import xml.etree.ElementTree as ET
import os
from constants import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE_CONVERTED

def parseManifest():	
	tree = ET.parse(manifestPath)
	root = tree.getroot()
	
	permissionsCounter = 0
	hardwareCounter = 0
	intentsCounter = 0
	malicousNamesCounter = 0
	suspiciousPermissions = []
	suspiciousIntents = []
	suspiciousHardwares = []
	malicousNames = []
	
	for child in root:
		if child.tag == PERMISSION_LABEL: #Parse permissions
			permission = child.attrib[OBJECT_KEY]
			if permission in MALICIOUS_PERMISSIONS:
				permissionsCounter = permissionsCounter + 1
				suspiciousPermissions.append(permission)
		elif child.tag == APPLICATION_LABEL: 
			for innerChild in child:
				if innerChild.tag == ACTIVITY_LABEL or innerChild.tag == RECEVIER_LABEL or innerChild.tag == SERVICE_LABEL or innerChild.tag == PROVIDER_LABEL:
					componentName = innerChild.attrib[OBJECT_KEY]
					if componentName in MALICIOUS_ACTIVITIES or componentName in MALICIOUS_RECEIVERS or componentName in MALICIOUS_SERVICES or componentName in MALICIOUS_PROVIDERS: #parse malicious names in components
						malicousNamesCounter = malicousNamesCounter + 1
						malicousNames.append(componentName)
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
	print "Number of suspiscious intents is "+str(intentsCounter)+":"+str(suspiciousIntents)
	print "Number of suspiscious hardware is "+str(hardwareCounter)+":"+str(suspiciousHardwares)
	print "Number of suspiscious names is "+str(malicousNamesCounter)+":"+str(malicousNames)				
		
				
	