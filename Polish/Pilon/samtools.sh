#!/bin/bash
#$ -N log_samtools
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 8


ILLUMINA_SAMPLE_NAME="W303"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus.sam"
REF="consensus.fasta"

source ~/.miniconda3rc
conda activate final_project_1

ln -s ../6_quiver/${REF} 

samtools view --threads 32 -b /${ILLUMINA_ALLIGNED} --reference /${REF} -o /$(basename ${ILLUMINA_ALLIGNED} .sam).bam
samtools sort --threads 32 /$(basename ${ILLUMINA_ALLIGNED} .sam).bam -o /$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam
samtools index -b /$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam /$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bai

conda deactivate
