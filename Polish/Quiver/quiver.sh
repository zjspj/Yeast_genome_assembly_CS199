#!/bin/bash
#$ -N yeast_quiver_2nd
#$ -t 1-1
#$ -q pub8i
#$ -m beas
#$ -M renhaol1@uci.edu
#$ -ckpt restart
#$ -pe openmp 8

source ~/.miniconda3rc
conda activate final_project_1

QUERY="out_all.cmp.h5"
REFERENCE="5_canu.contigs.fasta" # from canu
SECOND_REF="consensus.fasta" # from the first round of quiver


samtools faidx ${REFERENCE}
quiver ${QUERY} -r ${REFERENCE} -o variants.gff -o consensus.fasta -o consensus.fastq


samtools faidx ${SECOND_REF}
quiver ${QUERY} -r ${SECOND_REF} -o variants_second.gff -o consensus_second.fasta -o consensus_second.fastq

conda deactivate