#!/bin/bash
#$ -N cmphmergecanu
### -t 1-17
#$ -pe openmp 1
#$ -q pub8i

#users need to have their own access to smrtanalysis version 2.3.0p5. It is installed on UCI HPC.
module load smrtanalysis/2.3.0p5

# merge and sort the cmp.h5 files generated from pbalign
cmph5tools.py merge --outFile out_all.cmp.h5 $(ls out_*.cmp.h5)

cmph5tools.py sort --deep out_all.cmp.h5

h5repack -f GZIP=1 out_all.cmp.h5 tmp.cmp.h5 && mv tmp.cmp.h5 out_all.cmp.h5
