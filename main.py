from extractor import *
from manifestParser import *
from fileParser import *
import argparse

parser = argparse.ArgumentParser(description='Feature Extractor')
parser.add_argument('-i', action="store",dest="i",required=True,help="Input APK File")
args = parser.parse_args()

apkfile = args.i

unzip(apkfile)
convertAll()
parseManifest()
searchForInnerApkOrJar()

cleanup()