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
import threading

queue = []
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
noOfThreads = 3

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

def getStartCol(sh,appname):
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
    
def parseApk(iteration):
    global queue,totalFilesTried,totalFilesSucceed
    print "Spawned thread "+str(iteration)
    TEMP_DIRECTORY = "temp"+str(iteration)
    while queue:
        fullpath = queue.pop()
        print "Parsing " + fullpath
        family = fullpath.split('/')[4]
        os.system("mkdir "+PROJECT_PATH+"featuresOutput2/"+family)
        os.system("mkdir "+PROJECT_PATH+"quarantine/"+family)
        print "Malware family: " + str(family)

        startTime = time.time()
        apkfile = fullpath
        featuresStruct.init()

        apkname = apkfile.split('/')[-1].split('.apk')[0]
        if len(apkname) > 29:
            appname = apkname[:30]
        else:
            appname = apkname

        sheetNo = getSheetNo(sheetname)
        rb = open_workbook("results.csv")
        sh = rb.sheet_by_name(sheetname)
        startColumn = getStartCol(sh,appname)
        book = copy(rb)
        sh = book.get_sheet(sheetNo)
        #sh.write(0,startColumn,appname)

        try:
            totalFilesTried += 1
            disassemble(apkfile,TEMP_DIRECTORY)
            print ""
            parseManifest(sh,startColumn,TEMP_DIRECTORY)
            traveseAll(sh,startColumn,TEMP_DIRECTORY)
            parseDex(sh,TEMP_DIRECTORY)
            calculateCyclomaticComplexity(apkfile,sh,startColumn)
            if nGramsExtractor(apkfile,family):
                totalFilesSucceed += 1
                if family == "benign":
                    print "Moving parsed bengin sample"
                    os.system("mv "+apkfile+" "+PROJECT_PATH+"benign/benign/")
            else:
                continue
        except Exception as e:
            print str(e)
            continue
        cleanup(TEMP_DIRECTORY)


        f = open(PROJECT_PATH+"featuresOutput2/"+family+"/"+apkname+".txt","w+")
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

#print "Sleeping a short while before searching for new files"
#time.sleep(10)

print "Going to fill up queue..."
for path, subdirs, files in os.walk(dir_path):
    for name in files:
        fullpath = os.path.join(path, name)
        print name
        if len(name) < 60 and not name.endswith(".apk"):
            print "Skipping " + fullpath
            continue
        print "Filling queue with "+fullpath
        queue.append(fullpath)
 
print "Completed filling queue....Going to spawn threads" 
threads = [threading.Thread(target=parseApk,args=[i]) for i in range(noOfThreads)]
for thread in threads:
    thread.start()
    
for thread in threads:
    thread.join()

timeTaken = time.time() - overallStartTime
stats = open(PROJECT_PATH+"featuresOutput2/"+outputStatsFile,"w+")
print "Overall execution took " +str(timeTaken)+" seconds."
stats.write("Overall execution took " +str(timeTaken)+" seconds.")
stats.write(str(totalFilesSucceed)+" out of "+str(totalFilesTried)+" files succeeded.")
stats.close()
