import requests,re,sys

reload(sys)
sys.setdefaultencoding('utf8')
toBeDownloaded = []

r = requests.get('https://play.google.com/store/apps/collection/topselling_free?hl=en')
#print r.text
apps = re.findall("\\bdetails\?id=\\b.+?\"", r.text)
for app in apps:
    if app not in toBeDownloaded:
        toBeDownloaded.append(app)
        

#r = requests.post("http://bugs.python.org", data={'number': 12524, 'type': 'issue', 'action': 'show'})