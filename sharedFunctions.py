from constants import *

def onBangcleDetected(evidence,sh,startColumn):
    print "Use of bangcle detected:"+evidence
    print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"Bangcle")    
    
def onDexGuardDetected(evidence,sh,startColumn):
    print "Use of Dexguard detected:"+evidence+" non-ASCII characters"
    print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"DexGuard")
    
def onHose2JarDetected(evidence,sh,startColumn):
    print "Use of Hose2Jar detected:"+evidence
    print ""
    sh.write(START_ROW+16,0,"Obsfucation technique")
    sh.write(START_ROW+16,startColumn,"Hose2Jar")