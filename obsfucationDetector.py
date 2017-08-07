from constants import *
import xml.etree.ElementTree as ET
import os,subprocess


def parseDex():
	dir_path = os.path.dirname(os.path.realpath(__file__))
	for path, subdirs, files in os.walk(dir_path):
		for name in files:
			if name.endswith('.dex'):
				relative_path = TEMP_DIRECTORY+'/'+name
				content = open(relative_path,'r').read()
				if APKPROTECT_LABEL in content: #check for APKProtect
					print "Use of APKProtect detected"
				proc = subprocess.Popen(['perl',HIDEX_PATH,'--input',relative_path], stdout=subprocess.PIPE)
				content = proc.stdout.read()
				if "strange header size" in content:	#check for hosedex2jar
					print "HoseDex2Jar Detected"
				
def calculateEdges(inputAPK):
	cmd = 'python ~/tools/vivano/androxgmml.py -i '+inputAPK+' -o out.xgmml'
	os.system(cmd)

	tree = ET.parse('out.xgmml')
	root = tree.getroot()
	clusters = dict()
	
	for child in root:
		if "edge" in child.tag: 
			functionName = child.attrib['label'].split('-')[1]
			className = child.attrib['label'].split('-')[0][:-1]
			cluster = className+":"+functionName
			if cluster not in clusters:
				clusters[cluster] = 1
			else:
				clusters[cluster] = clusters[cluster] + 1
			
	edges = 0
	for cluster in clusters:
		edges += clusters[cluster]
		#print cluster+" = "+str(clusters[cluster])+" edges" 
		
	average = edges / len(clusters)
	print "Average number of edges per method is " + str(average)