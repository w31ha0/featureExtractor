from constants import *
import xml.etree.ElementTree as ET
import os,subprocess
from sharedFunctions import *
from featuresStruct import features

def parseDex(sh):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    for path, subdirs, files in os.walk(dir_path):
        for name in files:
            if name.endswith('.dex'):
                relative_path = TEMP_DIRECTORY+'/'+name
                content = open(relative_path,'r').read()
                if APKPROTECT_LABEL in content: #check for APKProtect
                    onAPKProtectDetected(APKPROTECT_LABEL,sh,startColumn)
                devnull = open(os.devnull, 'wb')
                proc = subprocess.Popen(['perl',HIDEX_PATH,'--input',relative_path], shell=False,stdout=subprocess.PIPE, stderr=devnull)
                content = proc.stdout.read()
                if "strange header size" in content:    #check for hosedex2jar
                    onHose2JarDetected("strange header size",sh,startColumn)
                    
def calculateCyclomaticComplexity(inputAPK,sh,startColumn):
    global features

    noOfNodes = 0
    noOfEdges = 0
    noOfConnectedComponenets = 0
    uniqueFunctions = []

    cmd = 'python ~/tools/vivano/androxgmml.py -i '+inputAPK+' -o out.xgmml'
    os.system(cmd)
        
    tree = ET.parse('out.xgmml')
    root = tree.getroot()
    clusters = dict()
    
    for child in root:
        if "edge" in child.tag:
            noOfEdges += 1
            functionName = ""
            arrays = child.attrib['label'].split('-')
            for part in arrays:
                if "@" not in part:
                    functionName += part
            if functionName not in uniqueFunctions:
                uniqueFunctions.append(functionName)
        elif "node" in child.tag:
            noOfNodes += 1
    #caluclate for each method        
    complexity = noOfEdges-noOfNodes+2*len(uniqueFunctions) 
    features["CYCLOMATIC_COMPLEXITY"] = complexity
    #print "Number of unique functions is " + str(len(uniqueFunctions))
    #print "Cyclomatic Complexity is " + str(complexity)
    sh.write(START_ROW+17,0,"Cyclomatic Complexity")
    sh.write(START_ROW+17,startColumn,str(complexity))
                
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
