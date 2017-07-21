from extractor import *
from manifestParser import *

apkfile = 'Asroot-0c059ad62b9dbccf8943fe4697f2a6b0cb917548.apk'

unzip(apkfile)

parseManifest()

cleanup()