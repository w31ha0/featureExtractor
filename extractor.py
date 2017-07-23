import os
from constants import *

def unzip(filename):
	os.system('unzip '+filename+' -d '+TEMP_DIRECTORY +'> /dev/null')
	
def cleanup():
	os.system('rm -rf '+TEMP_DIRECTORY)
	
def convertAll():
	cmd = 'python '+ ANDROGUARD_PATH + '/androaxml.py -i '+ TEMP_DIRECTORY + '/'+ MANIFEST_FILE_RAW + ' -o ' + TEMP_DIRECTORY + '/' + MANIFEST_FILE_CONVERTED
	os.system(cmd)
	
def baksmali():
	cmd = 'java -jar ' + BAKSMALI_PATH + ' d ' + TEMP_DIRECTORY + '/classes.dex -o ' + TEMP_DIRECTORY + '/' + SMALI_PATH
	os.system(cmd)	