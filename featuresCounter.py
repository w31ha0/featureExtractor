import sys,os

dir_path = sys.argv[1]


for path, subdirs, files in os.walk(dir_path):
    for name in files:
        if "binary" in name:
            fullpath = os.path.join(path, name)
            f = open(fullpath,'r')
            content = f.read()
            count = len(content.split(' '))
            if count != 163:
                print str(count)+ " for " + name
