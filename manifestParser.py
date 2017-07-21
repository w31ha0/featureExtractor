import xml.etree.ElementTree as ET
import os
from constants import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE_CONVERTED

def parseManifest():	
	tree = ET.parse(manifestPath)
	root = tree.getroot()
	
	permissionsCounter = 0
	suspiciousPermissions = []
	intentsCounter = 0
	suspiciousIntents = []
	
	for child in root:
		if child.tag == PERMISSION_LABEL: #Parse permissions
			permission = child.attrib[PERMISSION_KEY]
			if permission in MALICIOUS_PERMISSIONS:
				permissionsCounter = permissionsCounter + 1
				suspiciousPermissions.append(permission)
		elif child.tag == APPLICATION_LABEL: #Parse intents
			for innerChild in child:
				if innerChild.tag == ACTIVITY_LABEL or innerChild.tag == RECEVIER_LABEL:
					for innerInnerChild in innerChild:
						if innerInnerChild.tag == INTENT_LABEL:
							for action in innerInnerChild:
								if action.tag == ACTION_LABEL:
									intent = action.attrib[INTENT_KEY]
									if intent in MALICIOUS_INTENTS:
										intentsCounter = intentsCounter + 1
										suspiciousIntents.append(intent)
									
	print "Number of suspiscious permissions is "+str(permissionsCounter)
	print suspiciousPermissions
	print "Number of suspiscious intents is "+str(intentsCounter)
	print suspiciousIntents
								
		
				
	