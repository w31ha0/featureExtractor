import subprocess,re,os,sys,traceback

Sequences = {}
Sequence = ""
f = open("apiSequences.txt","w+")
totalFiles = 0
filesScanned = 0
filesTried = []
Sources = []
Sinks = []

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
'''
print "Sources are"
for source in Sources:
	print source
print "Sinks are"
for sink in Sinks:
	print sink
'''
f2.close()

dir_path = '/home/ubuntu/fyp/full_malware_samples'
for path, subdirs, files in os.walk(dir_path):
    for name in files:
        try:
            fullpath = os.path.join(path, name)
            if name.endswith(".apk"): 
                filesTried.append(fullpath)
                totalFiles += 1
                print "\nParsing "+ fullpath + "\n"
                apk = fullpath
                output = subprocess.check_output('cd /home/ubuntu/tools/flowdroid/ && java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "'+apk+'" /home/ubuntu/android-sdk-linux/platform-tools --pathalgo contextsensitive', shell=True)
                #f3 = open('/home/ubuntu/tools/flowdroid/testin','r')
                #output = f3.read()
                #f3.close()                
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
                filesScanned += 1
                
        except KeyboardInterrupt:
            sys.exit()
        except Exception as e:
            traceback.print_exc(file=sys.stdout)
            print(e.message) + " for " + name
            continue
            
print "\n"+str(filesScanned)+" out of "+str(totalFiles)+" succeeeded\n"
print "\nFiles tried:"+str(filesTried)+"\n"
         
for Sequence in Sequences:
    print "Occurences:"+str(Sequences[Sequence])
    f.write("Occurences:"+str(Sequences[Sequence]))
    f.write('\n')
    for s in Sequence.split(','):
        print s
	f.write(s)
	f.write('\n')
       
f.close()
