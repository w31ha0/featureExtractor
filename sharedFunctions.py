from constants import *
from featuresStruct import features

def onBangcleDetected(evidence,sh,startColumn):
    global features
    
    features["BANGCLE"] = 1
    #print "Use of bangcle detected:"+evidence
    #print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"Bangcle")    
    
def onDexGuardDetected(evidence,sh,startColumn):
    global features
    
    features["DEXGUARD"] = 1
    #print "Use of Dexguard detected:"+evidence+" non-ASCII characters"
    #print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"DexGuard")
    
def onHose2JarDetected(evidence,sh,startColumn):
    global features
    
    features["HOSE2JAR"] = 1
    #print "Use of Hose2Jar detected:"+evidence
    #print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"Hose2Jar")
    
def onAPKProtectDetected(evidence,sh,startColumn):
    global features
    
    features["APKPROTECT"] = 1
    #print "Use of Hose2Jar detected:"+evidence
    #print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"ApkProtect")