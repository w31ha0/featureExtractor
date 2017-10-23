f= open("apiSequences.txt","r")
f2 = open("ngrams.txt","w+")

content = f.readlines()
n = 4
ngrams = []
currentngram = []

for line in content:    
    if not line.strip():
        currentngram = []
    else:
        if "Occurences" not in line:
            currentngram.append(line)
        if len(currentngram) == n:
            #print "n gram is now size " + str(len(currentngram)) + " and contains " + str(currentngram)
            ngramcopy = currentngram[:]
            alreadyAdded = False
            for ngram in ngrams:
                if set(ngram) == set(ngramcopy):
                    alreadyAdded = True
                    break
            if not alreadyAdded:
                ngrams.append(ngramcopy)
            currentngram.pop(0)

for ngram in ngrams:
    print "NGRAM:"
    for gram in ngram:
        print gram
        f2.write(gram)
    f2.write('\n')

f.close()
f2.close()