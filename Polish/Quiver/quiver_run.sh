#!/bin/bash
#$ -N log_quiver_run
## -t 1-1
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 8

QUERY="out_all.cmp.h5" # from previous step. This is a file combined all PacBio raw data.
REFERENCE="5_canu.contigs.fasta" # from canu
# SECOND_REF="consensus.fasta" # from the first round of quiver

source ~/.miniconda3rc
conda activate final_project_1

#first round of quiver. 
samtools faidx ${REFERENCE}
quiver ${QUERY} -r ${REFERENCE} -o variants.gff -o consensus.fasta -o consensus.fastq

# #second round of quiver. 
# samtools faidx ${SECOND_REF}
# quiver ${QUERY} -r ${SECOND_REF} -o variants_second.gff -o consensus_second.fasta -o consensus_second.fastq

conda deactivate
