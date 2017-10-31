from constants import *
from featuresStruct import features
import subprocess,re

def nGramsExtractor(apk):
    name = apk.split('/')[-1]
    Sources = []
    Sinks = []

    f = open("/home/ubuntu/featureExtractor/ngrams.txt","r")
    f2 = open("/home/ubuntu/tools/flowdroid/SourcesAndSinks.txt","r")

    sourcesinks = f2.readlines()

    for ss in sourcesinks:
        if "<" in ss and ">" in ss:
            payload = ss.split('<')[1].split('>')[0]
        else:
            continue
        if "_SOURCE_" in ss:
            Sources.append(payload)
        elif "_SINK_" in ss:
		Sinks.append(payload)

    Sequences = {}
    cmd = 'cd /home/ubuntu/tools/flowdroid/ && java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "'+apk+'" /home/ubuntu/android-platforms --pathalgo contextsensitive'
    print "\nCommand is " + cmd + "\n"
    output = subprocess.check_output(cmd, shell=True)            
    results = output.split('Found a flow to sink')
    for i in range(1,len(results)):
        sink = results[i].split('from the following sources:')[0][:-1]
        sink = re.findall( '<(.*?)>', sink)[0]
        startSource = results[i].split('from the following sources:')[1].split('on Path ')[0]
        startSource = re.findall( '<(.*?)>', startSource)[0]
        apipaths = results[i].split('from the following sources:')[1].split('on Path ')
        for pathh in apipaths:
            Sequence = ""
            if "[" not in pathh or "]" not in pathh:
                continue
            pathh = pathh.split('[')[1].split(']')[0]
            sources = pathh.split(',')
            apiPath = []
            for source in sources:
                if "invoke" not in source:
                    continue
                m = re.findall ( '<(.*?)>', source)
                for mm in m:
                    apiPath.append(mm)
            print "Sink is "+sink
                #apiPath.append(sink)
            validSourceFound = False
            for subpath in apiPath:
                if subpath in Sources:
                    validSourceFound = True
                if validSourceFound:
                    Sequence += subpath + ","
                    #print "\n"
            if validSourceFound:
                Sequence += sink + ","
            if Sequence in Sequences:
                    Sequences[Sequence] = Sequences[Sequence] + "," + name
            else:
                Sequences[Sequence] = name
    
    currentngram = []
    ngrams = []
    n = 4
    for sequence in Sequences:
        sequences = sequence.split(',')
        for sq in sequences:
            if sq.strip():
                currentngram.append(sq)
            if len(currentngram) == n:
                ngramcopy = currentngram[:]
                alreadyAdded = False
                for ngram in ngrams:
                    if set(ngram) == set(ngramcopy):
                        alreadyAdded = True
                        break
                if not alreadyAdded:
                    ngrams.append(ngramcopy)
                currentngram.pop(0)
    
    basengrams = []
    content = f.readlines()

    ngram = []
    for line in content:
        line = line.strip()
        if line:
            ngram.append(line)
        else:
            basengrams.append(ngram)
            ngram = []
            
    for ngram in ngrams:
        for basengram in basengrams:
            if set(basengram) == set(ngram):
                string = ",".join(basengram)
                #print "\nFound "+string+"\n"
                features[string] = 1
    
    f.close() 


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
    
nGramsExtractor('/home/ubuntu/android-malware/Dendroid/com.parental.control.v4.apk')