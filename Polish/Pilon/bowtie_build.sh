#!/bin/bash
#$ -N log_bowtie_build
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 2

INPUT_DIR=../6_quiver
INPUT_FILE="consensus.fasta" # the results from the first round of quiver. change to consensus_second.fasta for the result from the second round of quiver.
SAMPLE_DIR=../../rawdata/illumina
SAMPLE_NAME="SRR1569900"

source ~/.miniconda3rc
conda activate final_project_1

ln -s ${SAMPLE_DIR}/${SAMPLE_NAME}_1.fastq
ln -s ${SAMPLE_DIR}/${SAMPLE_NAME}_2.fastq

bowtie2-build --threads ${NSLOTS} ${INPUT_DIR}/${INPUT_FILE} $(basename ${INPUT_FILE} .fasta)

conda deactivate
