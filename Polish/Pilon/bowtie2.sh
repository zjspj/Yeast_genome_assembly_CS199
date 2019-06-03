#!/bin/bash
#$ -N log_bowtie2
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 8

SAMPLE_NAME="SRR1569900"
SAMPLE_1="${SAMPLE_NAME}_1.fastq"
SAMPLE_2="${SAMPLE_NAME}_2.fastq"
SAMPLE_REFERENCE="consensus"
ILLUMINA_SAMPLE_NAME="W303"

source ~/.miniconda3rc
conda activate final_project_1

bowtie2 --threads ${NSLOTS} -x ${SAMPLE_REFERENCE} -1 ${SAMPLE_1} -2 ${SAMPLE_2} -S ${ILLUMINA_SAMPLE_NAME}_${SAMPLE_REFERENCE}.sam

conda deactivate
