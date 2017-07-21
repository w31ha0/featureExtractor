import os
from constants import *

def unzip(filename):
	os.system('unzip '+filename+' -d '+TEMP_DIRECTORY)
	
def cleanup():
	os.system('rm -rf '+TEMP_DIRECTORY)
	
def convertAll(filename):