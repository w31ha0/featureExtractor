import xml.etree.ElementTree as ET
import os
from constants import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE_CONVERTED

def parseManifest():	
	tree = ET.parse(manifestPath)
	root = tree.getroot()
	parsePermissions(root)
		
def parsePermissions(root):
	counter = 0
	suspiciousPermissions = []
	for child in root:
		if child.tag == PERMISSION_LABEL:
			permission = child.attrib[PERMISSION_KEY]
			if permission in MALICIOUS_PERMISSIONS:
				counter = counter + 1
				suspiciousPermissions.append(permission)
	print "Number of suspiscious permissions is "+str(counter)
	print suspiciousPermissions
				
	