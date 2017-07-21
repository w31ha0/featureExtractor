import xml.etree.ElementTree as ET
import os
from constants import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE

def parseManifest():
	./androaxml.py -i RTU-Info.apk  -o output.xml
	tree = ET.parse(manifestPath)
	root = tree.getroot()