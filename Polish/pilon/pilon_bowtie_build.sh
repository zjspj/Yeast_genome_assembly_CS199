#!/bin/bash
#$ -N pilon_bowtie_build
## -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 32

source ~/.miniconda3rc
conda activate final_project_1

INPUT_DIR=/pub/jiadony1/canu_job/6_quiver
INPUT_FILE="consensus_2nd.fasta"
OUTPUT_DIR=/pub/jiadony1/canu_job/7_pilon
SAMPLE_DIR=/pub/jiadony1/rawdata/illumina
ILLUMINA_SAMPLE_NAME=""
mkdir OUTPUT_DIR

gunzip ${SAMPLE_DIR}/SAMPLE_NAME*.fastq.gz OUTPUT_DIR

bowtie2-build --threads 32 ${INPUT_DIR}/${INPUT_FILE} ${OUTPUT_DIR}/${INPUT_FILE}

conda deactivate