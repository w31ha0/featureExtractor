import re
import sys,os
from constants import *
import subprocess

allSensitiveAPIS = []
allNetworkAddresses = []
allConstantClassNames = []
allReflectionCode = []
allDexCode = []
allDecryptionCode = []
allNativeCode = []
allInnerJarAPKFiles = []
allSuspiciousImageFiles = []

nonAsciiCounter = 0


def traveseAll():
    global nonAsciiCounter,allSensitiveAPIS,allNetworkAddresses,allConstantClassNames,allReflectionCode,allDexCode,allDecryptionCode,allNativeCode,nonAsciiCounter,allInnerJarAPKFiles

    dir_path = os.path.dirname(os.path.realpath(__file__)) + '/' + TEMP_DIRECTORY
    
    for path, subdirs, files in os.walk(dir_path):
        for name in files:
            fullpath = os.path.join(path, name)
            
            if name.endswith('smali'):
                content = open(fullpath,'r').readlines()
                searchSmaliContent(content,fullpath)
            elif name.endswith('apk') or name.endswith('jar'):
                allInnerJarAPKFiles.append(fullpath)
            elif name.endswith('so'):
                if name in BANGCLE_LIBRARIES:
                    onBangcleDetected(name)
            elif name.endswith("png") or name.endswith("jpg") or name.endswith("gif"):
                proc = subprocess.Popen(['binwalk',fullpath], stdout=subprocess.PIPE)
                content = proc.stdout.readlines()
                for i in range(3,len(content)):
                    dataType = content[i].strip()
                    if "image" not in dataType and "Zlib" not in dataType and dataType:
                        record = fullpath+":"+dataType
                        allSuspiciousImageFiles.append(record)
                
    print "Number of sensitive APIS:" + str(len(allSensitiveAPIS)) + str(allSensitiveAPIS)
    print ""
    print "Number of network addresses:" + str(len(allNetworkAddresses)) + str(allNetworkAddresses)
    print ""
    print "Number of constant class names:" + str(len(allConstantClassNames)) + str(allConstantClassNames)
    print ""
    print "Number of reflection code:" + str(len(allReflectionCode)) + str(allReflectionCode)
    print ""
    print "Number of Dex code:" + str(len(allDexCode)) + str(allDexCode)
    print ""
    print "Number of Native code:" + str(len(allNativeCode)) + str(allNativeCode)
    print ""    
    print "Number of Crypto code:" + str(len(allDecryptionCode)) + str(allDecryptionCode)
    print ""    
    print "Number of suspicious inner files is "+str(len(allInnerJarAPKFiles))+":"+str(allInnerJarAPKFiles)
    print ""
    print "Number of suspicious image files is "+str(len(allSuspiciousImageFiles))+":"+str(allSuspiciousImageFiles)
    print ""
    
    if nonAsciiCounter > 0:
        print "Dex Guard detected:" + str(nonAsciiCounter) + " non-ASCII namings detected"
        print ""

def searchSmaliContent(content,fullpath):
    global nonAsciiCounter,allSensitiveAPIS,allNetworkAddresses,allConstantClassNames,allReflectionCode,allDexCode,allDecryptionCode,allNativeCode

    lineNo = 1
    for line in content:
        for c in line: #check For Non Ascii
            if 0 <= ord(c) <= 127:
                pass
            else:
                nonAsciiCounter += 1
                
        for api in SENSITIVE_APIS: # Check for malicious API calls
            if api in line:
                record = api + " <" + fullpath + ":"+str(lineNo)+">"
                allSensitiveAPIS.append(record)
                
        ips = re.findall( r'[0-9]+(?:\.[0-9]+){3}', line) #check for ip addresses
        for ip in ips:
            record = ip + " <" + fullpath + ":"+str(lineNo)+">"
            allNetworkAddresses.append(record)       
            
        constantStrings = re.findall( r'const-string\s\w\w,\s"\S*"', line) #check for constant strings
        for constant in constantStrings:
            if 1 == 2: #to match class names here
                allConstantClassNames.append(constant)
                
        if REFLECTION_LABEL in line and GET_METHOD_LABEL in line: #check for reflection
            record = line + " <" + fullpath + ":"+str(lineNo)+">"
            allReflectionCode.append(record)
            
        if DEX_CLASS_LABEL in line: #check for dexClass Loader
            record = line + " <" + fullpath + ":"+str(lineNo)+">"
            allDexCode.append(record)
            
        if DECRYPTION_LABEL in line: #Check for crypto code
            record = line + " <" + fullpath + ":"+str(lineNo)+">"
            allDecryptionCode.append(record)
            
        if NATIVE_LOAD_LABEL in line or (NATIVE_FUNCTION_LABEL in line and ".method" in line): #check for native code
            record = line + " <" + fullpath + ":"+str(lineNo)+">"
            allNativeCode.append(record)
                
    lineNo += 1
        
    
