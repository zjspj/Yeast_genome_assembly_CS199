import numpy as np
import matplotlib.pyplot as plt

file1 = "../7_pilon/consensus_pilon.fasta" # One Quiver and Pilon Polishing
file2 = "../../rawdata/REF/HGAP_assembly.fasta" # illumina contig reference
file3 = "../../rawdata/REF/illumina_MPG_2013_contig.fasta" # HGAP Assembly

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


# making graph

x1 = sorted(get_stats(file1), reverse=True)
x2 = sorted(get_stats(file2), reverse=True)
x3 = sorted(get_stats(file3), reverse=True)


y1 = np.arange(1, len(x1)+1) / len(x1)
y2 = np.arange(1, len(x2)+1) / len(x2)
y3 = np.arange(1, len(x3)+1) / len(x3)


plt.xlim(12000000, 0) # inverse the x axis

plot1 = plt.plot(x1, y1, marker = '.', linestyle = '-')
plot2 = plt.plot(x2, y2, marker = '.', linestyle = '-')
plot3 = plt.plot(x3, y3, marker = '.', linestyle = '-')

plt.legend(['One Quiver and Pilon Polishing', 'Illumina Reference', "HGAP Assembly"], loc='best')

plt.xlabel("Contig Length")
plt.ylabel("Cumulative Probability")

plt.margins(0.02) # avoid out of range values


plt.savefig('CDF.png')
# plt.show()

