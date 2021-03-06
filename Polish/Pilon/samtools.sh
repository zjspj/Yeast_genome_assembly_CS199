#!/bin/bash
#$ -N log_samtools
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 4


REF_Prefix="consensus"
ILLUMINA_SAMPLE_NAME="W303"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus.sam"
REF="${REF_Prefix}.fasta"

source ~/.miniconda3rc
conda activate final_project_1

ln -s ../6_quiver/${REF} 

samtools view --threads ${NSLOTS} -b ${ILLUMINA_ALLIGNED} --reference ${REF} -o $(basename ${ILLUMINA_ALLIGNED} .sam).bam
samtools sort --threads ${NSLOTS} $(basename ${ILLUMINA_ALLIGNED} .sam).bam -o $(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam
samtools index -b $(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam $(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bai

conda deactivate
