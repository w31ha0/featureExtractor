import os
from constants import *

def unzip(filename,TEMP_DIRECTORY):
	os.system('unzip '+filename+' -d '+TEMP_DIRECTORY +'> /dev/null 2>/dev/null')
	
def cleanup(TEMP_DIRECTORY):
	os.system('rm -rf '+TEMP_DIRECTORY)
	
def convertAll(TEMP_DIRECTORY):
	cmd = 'python '+ ANDROGUARD_PATH + '/androaxml.py -i '+ TEMP_DIRECTORY + '/'+ MANIFEST_FILE_RAW + ' -o ' + TEMP_DIRECTORY + '/' + MANIFEST_FILE_CONVERTED
	os.system(cmd)
	
def baksmali(TEMP_DIRECTORY):
	cmd = 'java -jar ' + BAKSMALI_PATH + ' d ' + TEMP_DIRECTORY + '/classes.dex -o ' + TEMP_DIRECTORY + '/' + SMALI_PATH
	os.system(cmd)	
    
def disassemble(apk,TEMP_DIRECTORY):
 	cmd = 'java -jar ' + APKTOOL_PATH + ' d ' + apk + ' -o ' + TEMP_DIRECTORY +' -f > /dev/null'
	os.system(cmd)	   