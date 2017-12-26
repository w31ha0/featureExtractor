import requests,re,sys,time,os,urllib
from random import shuffle

f = open('/usr/share/wordlists/rockyou.txt','r')
words = f.readlines()
f.close()
shuffle(words)

reload(sys)
sys.setdefaultencoding('utf8')
urllib.URLopener.version = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36 SE 2.X MetaSr 1.0'

def fetchTokens():
    r2 = requests.get('https://apps.evozi.com/apk-downloader/')
    token = r2.text.split('function download_apk')[1].split('var')[6].split("= '")[1].split("';")[0]
    timestamp = r2.text.split('{t: ')[1].split(',')[0]
    key1 = r2.text.split('{t: ')[1].split(', ')[1].split(':')[0]
    key2 = r2.text.split('{t: ')[1].split(',  ')[1].split(':')[0]
    print "Found token "+token
    print "Found timestamp "+timestamp
    print "Found key1 "+key1
    print "Found key2 "+key2
    return token,timestamp,key1,key2

def downloadLink(link,package):
    print "Downloading "+link
    path = "/root/FYP/benign3/benign/"+package+".apk"
    urllib.urlretrieve (link, path)


#downloadLink('http://storage.evozi.com/apk/dl/17/04/23/so.ofo.abroad.apk?h=FqLrDrPYklwb1mLr7H0ZFw&t=1513914757','package')
#sys.exit(1)

for word in words:
    toBeDownloaded = []
    print "Searching for word "+word
    sourceURL = 'https://play.google.com/store/search?q='+word+'&c=apps&price=1&hl=en'
    r = requests.get(sourceURL)
    content = r.text.decode('unicode_escape')
    #print r.text
    apps = re.findall("\\bdetails\?id\\b.+?\"", content)
    #print str(apps)


    for app in apps:
        if "com.google.android" in app:
            print "Skipping native " + app
            continue
        app = app.replace('\\u003d','=')
        #print app
        app = "https://play.google.com/store/apps/" + app
        app = app[:-1]
        if app not in toBeDownloaded:
            toBeDownloaded.append(app)
            #print "Appending " + app

    shuffle(toBeDownloaded)
    token,timestamp,key1,key2 = fetchTokens()
    for app in toBeDownloaded:
        print "Fetching download link for " + app
        package = app.split('id=')[1]
        print "Sending request with token "+token+" and timestamp "+timestamp
        r = requests.post("https://api-apk.evozi.com/download", data={'t':timestamp,key1:package, key2:token,'fetch':'false'})
        response = r.json()
        if response['status'] == 'success':
            print "Fetched Succeeded"
            if 'MB' in response['filesize']:
                size = float(response['filesize'].split('MB')[0])
                if size > 10:
                    print str(size)+"MB is too large....skipping"
                    continue
            url = "https:" + response['url']
            downloadLink(url,package)
        else:
            print "Fetched failed"
            data = response['data']
            if "Expired" in data:
                print "Token expired...Fetching new token"
                token,timestamp,key1,key2 = fetchTokens()
            elif "Rate" in data:
                timeout = data.split('again in ')[1].split(' minutes')[0]
                timeout = float(timeout) * 60
                print "Timeout....Sleeping for "+str(timeout)+" seconds."
                time.sleep(timeout)
                toBeDownloaded.append(app)
            elif "incompatible" in data:
                print "App is incompatible...Skipping"
            else:
                print data
