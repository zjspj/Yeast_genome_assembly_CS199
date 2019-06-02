#!/bin/bash
#$ -N log_bowtie_build
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 8

INPUT_DIR=./canu_job/6_quiver
INPUT_FILE="consensus.fasta" # the results from the first round of quiver. change to consensus_second.fasta for the result from the second round of quiver.
OUTPUT_DIR=./canu_job/7_pilon
SAMPLE_DIR=./rawdata/illumina
SAMPLE_NAME="SRR1569900"

source ~/.miniconda3rc
conda activate final_project_1

ln -s ${SAMPLE_DIR}/${SAMPLE_NAME}_1.fastq  ${OUTPUT_DIR}/${SAMPLE_NAME}_1.fastq
ln -s ${SAMPLE_DIR}/${SAMPLE_NAME}_2.fastq  ${OUTPUT_DIR}/${SAMPLE_NAME}_2.fastq

#gunzip -c ${SAMPLE_DIR}/${SAMPLE_NAME}_1.fastq.gz > ${OUTPUT_DIR}/${SAMPLE_NAME}_1.fastq
#gunzip -c ${SAMPLE_DIR}/${SAMPLE_NAME}_2.fastq.gz > ${OUTPUT_DIR}/${SAMPLE_NAME}_2.fastq

bowtie2-build --threads ${NSLOTS} ${INPUT_DIR}/${INPUT_FILE} ${OUTPUT_DIR}/$(basename ${INPUT_FILE} .fasta)

conda deactivate
