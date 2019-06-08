
def main(filename):
    '''
    This function read a .fasta file and separate the reads in the fasta file.
    The separation rule is if there is 10 or more "N" inbetween, it splits the reads
    This function return a list of all the reads.
    '''
    file = open(filename, 'r')
    scaffolds = file.readlines()
    contigs = []
    title=[]
    # cursor = 0
    count = 0
    temp = ''
    # contigs_count=0
    for i in scaffolds:
        # cursor += 1
        # print(cursor)
        i = i.strip('\n')
        if i == '':
            continue
        elif i[0] == ">":
            count = 0
            if temp != '':
                temp = temp.strip('N')
                contigs.append(temp)
                temp = ''
            continue
        for n in i:
            temp += n
            if n != 'N':
                count = 0
            else:
                count += 1
                if count == 10:
                    temp = temp.strip('N')
                    if temp != '':
                        # contigs.append(">")
                        contigs.append(temp)
                        temp = ''
    file.close()
    return contigs


all_contigs1 = main('2013_mpg_ref.fasta')
# print(len(all_contigs1))

'''
I store all the reads to a temp file, so it is easier for later use.
'''
f = open('contigs_reference.fasta', 'w')
count=0
for i in all_contigs1:
    count+=1
    f.write(">" + str(count) + '\n' + i + '\n')
f.close()
