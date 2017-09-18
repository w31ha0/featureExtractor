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

    noOfConnectedComponenets = 1
    functionsMap = {}
    uniqueFunctions = []

    cmd = 'python ~/tools/vivano/androxgmml.py -i '+inputAPK+' -o out.xgmml'
    os.system(cmd)
        
    tree = ET.parse('out.xgmml')
    root = tree.getroot()
    clusters = dict()
    lastPart = False
    
    for child in root:
        if "edge" in child.tag:
            functionName = ""
            arrays = child.attrib['label'].split('-')
            functionName = arrays[0].encode('utf-8').strip()+arrays[1].encode('utf-8').strip()+arrays[3].split(';')[0].encode('utf-8').strip()
            if functionName not in functionsMap:
                functionsMap[functionName] = [1,0]
                #print functionName
            else:
                newEdges = functionsMap[functionName][0]+1
                newNodes = functionsMap[functionName][1]
                functionsMap[functionName] = [newEdges,newNodes]
        elif "node" in child.tag:
            functionName = ""
            arrays = child.attrib['label'].split('-')
            functionName = arrays[0].encode('utf-8').strip()+arrays[1].encode('utf-8').strip()+arrays[3].split(';')[0].encode('utf-8').strip()
            if functionName not in functionsMap:
                functionsMap[functionName] = [0,1]
                #print functionName
            else:
                newEdges = functionsMap[functionName][0]
                newNodes = functionsMap[functionName][1]+1
                functionsMap[functionName] = [newEdges,newNodes]
                
    highestComplexity = 0
    lowestComplexity = 10000
    totalComplexity = 0
    counter = 0
                
    for key,value in functionsMap.iteritems():
            complexity = value[0] - value[1] + 2
            totalComplexity += complexity
            counter += 1
            if complexity > highestComplexity:
                highestComplexity = complexity
            if complexity < lowestComplexity:
                lowestComplexity = complexity
            #print key+": Edges="+str(value[0])+" Nodes="+str(value[1])

    features["HIGHEST_CYCLOMATIC_COMPLEXITY"] = highestComplexity
    features["LOWEST_CYCLOMATIC_COMPLEXITY"] = lowestComplexity
    features["AVERAGE_CYCLOMATIC_COMPLEXITY"] = totalComplexity/counter
            
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
