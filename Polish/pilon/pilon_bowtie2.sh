#!/bin/bash
#$ -N pilon_bowtie2
## -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 32

source ~/.miniconda3rc
conda activate final_project_1

SAMPLE_DIR=/pub/jiadony1/rawdata/illumina
SAMPLE_NAME=""
SAMPLE_1="${SAMPLE_NAME}_1.fastq"
SAMPLE_2="${SAMPLE_NAME}_2.fastq"
WORK_DIR=/pub/jiadony1/canu_job/7_pilon/${SAMPLE_REFERENCE}
SAMPLE_REFERENCE="consensus_2nd"
ILLUMINA_SAMPLE_NAME=""

bowtie2 --threads 32 -x ${WORK_DIR}/${SAMPLE_REFERENCE}.fasta -1 ${WORK_DIR}/${SAMPLE_1} -2 ${WORK_DIR}/${SAMPLE_2} -S ${WORK_DIR}/${ILLUMINA_SAMPLE_NAME}_${SAMPLE_REFERENCE}.sam

conda deactivate