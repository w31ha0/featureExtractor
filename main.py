from extractor import *
from manifestParser import *
from fileParser import *
from obsfucationDetector import *
import argparse
import xlwt
from xlrd import *
from xlutils.copy import copy

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

startColumn = -1    
    
try:
    rb = open_workbook("results.csv")
    book = copy(rb)
    sh = rb.sheet_by_name(sheetname)
    startColumn = sh.ncols
except IOError:
    rb = xlwt.Workbook()
    sh = rb.add_sheet(sheetname)
except XLRDError:
    sh = rb.add_sheet(sheetname)
    
if startColumn == -1:
    startColumn = 1

sh.write(0,startColumn,appname)    
    
disassemble(apkfile)
print ""
parseManifest(sh,startColumn)
traveseAll(sh,startColumn)
parseDex(sh)

cleanup()

try:
    rb.save("results.csv")
except:
    book.save("results.csv")
