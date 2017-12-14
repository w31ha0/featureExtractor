import xml.etree.ElementTree as ET
import os
from featuresStruct import features
from constants import *
from sharedFunctions import *

manifestPath = TEMP_DIRECTORY+'/'+MANIFEST_FILE_CONVERTED

def checkSuspiciousName(sample,array):
    global features 
    
    for malicious in array:
        if malicious in sample:
            features[malicious] = 1
            return True
    return False
    
def getNameValueFromObject(object):
    if OBJECT_KEY in object:
        return object[OBJECT_KEY]
    elif OBJECT_KEY2 in object:
        return object[OBJECT_KEY2]
    else:
        return None

def parseManifest(sh,startColumn):    
    global features
    
    tree = ET.parse(manifestPath)
    root = tree.getroot()
    
    MALICIOUS_NAMES = []
    MALICIOUS_NAMES.extend(MALICIOUS_ACTIVITIES)
    MALICIOUS_NAMES.extend(MALICIOUS_SERVICES)
    MALICIOUS_NAMES.extend(MALICIOUS_RECEIVERS)
    MALICIOUS_NAMES.extend(MALICIOUS_PROVIDERS)
    
    totalPermissoinsCounter = 0
    totalIntentsCounter = 0
    totalHardwareCounter = 0
    totalServicesCounter = 0
    
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
            totalPermissoinsCounter += 1
            permission = getNameValueFromObject(child.attrib)
            if permission in MALICIOUS_PERMISSIONS:
                features[permission] = 1
                permissionsCounter = permissionsCounter + 1
                suspiciousPermissions.append(permission)
        elif child.tag == APPLICATION_LABEL:
            applicationName = getNameValueFromObject(child.attrib)
            if applicationName in BANGCLE_LABELS:
                onBangcleDetected(applicationName,sh,startColumn)
                print ""
            for innerChild in child:
                componentName = getNameValueFromObject(innerChild.attrib)
                if componentName == None:
                    continue
                if innerChild.tag == ACTIVITY_LABEL or innerChild.tag == RECEVIER_LABEL or innerChild.tag == SERVICE_LABEL or innerChild.tag == PROVIDER_LABEL:
                    if checkSuspiciousName(componentName,MALICIOUS_NAMES): #parse malicious names in components
                        malicousNamesCounter = malicousNamesCounter + 1
                        malicousNames.append(componentName)
                if innerChild.tag == RECEVIER_LABEL:
                    totalIntentsCounter += 1
                    
                elif innerChild.tag == SERVICE_LABEL:
                    totalServicesCounter += 1
                        
                if checkSuspiciousName(componentName,BANGCLE_ACTIVITIES):
                    onBangcleDetected(componentName,sh,startColumn)
                    for innerInnerChild in innerChild:
                        if innerInnerChild.tag == INTENT_LABEL: #Parse intents
                            for action in innerInnerChild:
                                if action.tag == ACTION_LABEL:
                                    intent = action.attrib[OBJECT_KEY]
                                    for maliciousIntent in MALICIOUS_INTENTS:
                                        if maliciousIntent in intent:
                                            features[maliciousIntent] = 1
                                            intentsCounter = intentsCounter + 1
                                            suspiciousIntents.append(intent)
                                elif action.tag == HARDWARE_LABEL: #Parse HARDWARE
                                    totalHardwareCounter += 1
                                    intent = action.attrib[OBJECT_KEY]
                                    if intent in MALICIOUS_HARDWARES:
                                        features[intent] = 1
                                        hardwareCounter = hardwareCounter + 1
                                        suspiciousHardwares.append(intent)
                                        
    features["PERMISSIONSCOUNT"] = permissionsCounter
    features["INTENTSCOUNT"] = intentsCounter
    features["HARDWARECOUNT"] = totalHardwareCounter
    features["SERVICESCOUNT"] = totalServicesCounter
    
    '''
    print "Total number of permissions requested is "+str(totalPermissoinsCounter)
    print ""     
    print "Total number of intents requested is "+str(totalIntentsCounter)
    print ""      
    print "Total number of hardware requested is "+str(totalHardwareCounter)
    print ""     
    print "Number of suspiscious permissions is "+str(permissionsCounter)+":"+str(suspiciousPermissions)
    print ""
    print "Number of suspiscious intents is "+str(intentsCounter)+":"+str(suspiciousIntents)
    print ""
    print "Number of suspiscious hardware is "+str(hardwareCounter)+":"+str(suspiciousHardwares)
    print ""
    print "Number of suspiscious component names is "+str(malicousNamesCounter)+":"+str(malicousNames)        
    print ""    
    
    
    sh.write(START_ROW+0,0,"Total number of permissions requested")
    sh.write(START_ROW+0,startColumn,str(totalPermissoinsCounter))
    sh.write(START_ROW+1,0,"Total number of intents requested")
    sh.write(START_ROW+1,startColumn,str(totalIntentsCounter))
    sh.write(START_ROW+2,0,"Total number of hardware requested")
    sh.write(START_ROW+2,startColumn,str(totalHardwareCounter))
    sh.write(START_ROW+3,0,"Total number of suspicious permissions requested")
    sh.write(START_ROW+3,startColumn,str(permissionsCounter))
    sh.write(START_ROW+4,0,"Total number of suspiscious intents requested")
    sh.write(START_ROW+4,startColumn,str(intentsCounter))
    sh.write(START_ROW+5,0,"Total number of suspiscious hardware requested")
    sh.write(START_ROW+5,startColumn,str(hardwareCounter))
    sh.write(START_ROW+6,0,"Total number of suspiscious component names requested")
    sh.write(START_ROW+6,startColumn,str(malicousNamesCounter))
        '''
                
    