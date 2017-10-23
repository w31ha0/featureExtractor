f = open('/home/ubuntu/fyp/android-malware/apiSequences.txt',"r")
content = f.readlines()
Sequences = []
Sequence = ""
noOfDuplicates = 0

for line in content:
    if not line.strip():
        if Sequence in Sequences:
            noOfDuplicates += 1
        else:
            Sequences.append(Sequence)
        Sequence = ""
    else:
        Sequence += line + ","
        
f.close()

print "No of duplicates:"+str(noOfDuplicates)

for sequence in Sequences:
    print sequence