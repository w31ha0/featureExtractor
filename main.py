#!/usr/bin/env python
from extractor import *
from manifestParser import *
from fileParser import *
from obsfucationDetector import *
import argparse
import xlwt
from xlrd import *
from xlutils.copy import copy
import featuresStruct
import time,os

def getSheetNo(sheetname):
    try:
        rb = open_workbook("results.csv")
    except IOError:
        rb = xlwt.Workbook()
        rb.add_sheet(sheetname)
        rb.save("results.csv")
        return 0

    sheetNo = 0
    sheets = rb.sheet_names()

    for sheet in sheets:
        if sheet == sheetname:
            return sheetNo
        else:
            sheetNo += 1
            
    if sheetNo >= len(sheets):
        book = copy(rb)
        sh = book.add_sheet(sheetname)
        book.save("results.csv")
        
    return sheetNo
    
def getStartCol(sh):
    startColumn = -1    
    noOfCols = sh.ncols

    for i in range(0,noOfCols):
        startColumn = i
        if appname == sh.col_values(i)[0]:
            break
        if i == (noOfCols - 1):
            startColumn += 1
        
    if startColumn < 1:
        startColumn = 1
        
    return startColumn

overallStartTime = time.time()    
parser = argparse.ArgumentParser(description='Feature Extractor')
parser.add_argument('-i', action="store",dest="i",required=True,help="Input APK File")    
parser.add_argument('-o', action="store",dest="o",required=True,help="Output stats file")
args = parser.parse_args()
dir_path = args.i
outputStatsFile = args.o
sheetname = "temp"
totalFilesTried = 0
totalFilesSucceed = 0

for path, subdirs, files in os.walk(dir_path):
    for name in files:
        fullpath = os.path.join(path, name)
        if not name.endswith("apk"):
            print "Skipping " + fullpath
            continue
        family = fullpath.split('/')[4]
        os.system("mkdir "+PROJECT_PATH+"featuresOutput/"+family)
        os.system("mkdir "+PROJECT_PATH+"quarantine/"+family)
        print "Malware family: " + str(family)
        
        startTime = time.time()
        apkfile = fullpath
        featuresStruct.init()

        print "Parsing apk file " + apkfile

        apkname = apkfile.split('/')[-1].split('.apk')[0]
        if len(apkname) > 29:
            appname = apkname[:30]
        else:
            appname = apkname
            
        sheetNo = getSheetNo(sheetname)
        rb = open_workbook("results.csv")
        sh = rb.sheet_by_name(sheetname)
        startColumn = getStartCol(sh)
        book = copy(rb)
        sh = book.get_sheet(sheetNo)
        #sh.write(0,startColumn,appname)    
        
        try:
            totalFilesTried += 1
            disassemble(apkfile)
            print ""
            parseManifest(sh,startColumn)
            traveseAll(sh,startColumn)
            parseDex(sh)
            calculateCyclomaticComplexity(apkfile,sh,startColumn)
            if nGramsExtractor(apkfile,family):
                totalFilesSucceed += 1
            else:
                continue
        except Exception as e:
            print str(e)
            continue
        cleanup()


        f = open(PROJECT_PATH+"featuresOutput/"+family+"/"+apkname+".txt","w+")
        for key, value in sorted(featuresStruct.features.iteritems()): 
            print key + " ::: " + str(value)
            f.write(key + " ::: " + str(value))
            f.write('\n')
        
        print "Execution took " + str(time.time() - startTime) + " seconds."
        f.write("Execution took " + str(time.time() - startTime) + " seconds.")
        f.close()
            
        try:
            rb.save("results.csv")
        except:
            book.save("results.csv")

timeTaken = time.time() - overallStartTime            
stats = open(PROJECT_PATH+"featuresOutput/"+outputStatsFile,"w+")
print "Overall execution took " +str(timeTaken)+" seconds."        
stats.write("Overall execution took " +str(timeTaken)+" seconds.")
stats.write(str(totalFilesSucceed)+" out of "+str(totalFilesTried)+" files succeeded.")
stats.close()
