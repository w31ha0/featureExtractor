import os,time

startTime = time.time()

apk = '/home/ubuntu/android-malware/BreakBottleneck/SamplesOfHIP2014TalkBreakBottleneck/XTaoAd.A/XTaoAd.A.apk'
os.system('cd /home/ubuntu/tools/flowdroid2/ && java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "'+apk+'" /home/ubuntu/android-platforms --pathalgo contextsensitive')
#os.system('cd /home/ubuntu/tools/flowdroid/ && java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "'+apk+'" /home/ubuntu/android-platforms --pathalgo contextsensitive')

print "Execution took " + str(time.time() - startTime) + " seconds."