#!/bin/bash
#$ -N yeast_prep_pbalign
#$ -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M renhaol1@uci.edu
#$ -ckpt restart
#$ -pe openmp 2

module load smrtanalysis/2.3.0p5

REF_FASTA="5_canu.contigs.fasta"
ALL_JOBS="myjoblist.txt"

# multi threads
SEED=$(cat $ALL_JOBS | head -n $SGE_TASK_ID | tail -n 1)

# pbalign will align the raw data with the output from canu
pbalign --forQuiver input_${SEED}.fofn ${REF_FASTA} out_${SEED}.cmp.h5
