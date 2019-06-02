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
WORK_DIR=./canu_job/7_pilon
SAMPLE_REFERENCE="consensus"
ILLUMINA_SAMPLE_NAME="W303"

source ~/.miniconda3rc
conda activate final_project_1

bowtie2 --threads ${NSLOTS} -x ${WORK_DIR}/${SAMPLE_REFERENCE} -1 ${WORK_DIR}/${SAMPLE_1} -2 ${WORK_DIR}/${SAMPLE_2} -S ${WORK_DIR}/${ILLUMINA_SAMPLE_NAME}_${SAMPLE_REFERENCE}.sam

conda deactivate
