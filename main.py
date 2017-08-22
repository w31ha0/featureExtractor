from extractor import *
from manifestParser import *
from fileParser import *
from obsfucationDetector import *
import argparse
import xlwt
from xlrd import *
from xlutils.copy import copy

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

parser = argparse.ArgumentParser(description='Feature Extractor')
parser.add_argument('-i', action="store",dest="i",required=True,help="Input APK File")
parser.add_argument('-t', action="store",dest="t",required=True,help="Type of functionality")
args = parser.parse_args()

apkfile = args.i
sheetname = args.t

apkname = apkfile.split('/')[-1].split('.')[0]
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
sh.write(0,startColumn,appname)    


disassemble(apkfile)
print ""
parseManifest(sh,startColumn)
traveseAll(sh,startColumn)
parseDex(sh)
calculateCyclomaticComplexity(apkfile,sh,startColumn)
cleanup()

try:
    rb.save("results.csv")
except:
    book.save("results.csv")
