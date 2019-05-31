import numpy as np
import matplotlib.pyplot as plt

file1 = "consensus_pilon.fasta"
file2 = "contigs_reference.fasta"

def get_stats(f):
    '''
    This function calculate the length of each contig and return a list contains all the contigs' length.
    '''
    temp = []
    contig_len = []
    with open(f) as file:
        for line in file:
            if line[0] != '>':
                temp.append(line)
            elif line[0] == '>' and len(temp) != 0:
                nt_len = []
                for nt in temp:
                    if len(nt) != 0:
                        nt_len.append(len(nt))
                contig_len.append(sum(nt_len))
    return contig_len

# print(len(get_stats(file2)), get_stats(file2)[0], sum(get_stats(file2)))


# making graph
x1 = np.sort(get_stats(file1))

x2 = np.sort(get_stats(file2))

# print(x1[-1], x2[-1], x1[-1]-x2[-1], x1[0], x2[0])

y1 = np.arange(1, len(x1)+1) / len(x1)

y2 = np.arange(1, len(x2)+1) / len(x2)

plot1 = plt.plot(x1, y1, marker = '.', linestyle = 'none')
plot2 = plt.plot(x2, y2, marker = '.', linestyle = 'none')

plt.legend(['1xquiver+pilon', 'illumina_ref'], loc='upper left')

plt.margins(0.02) # avoid out of range values

plt.show()

