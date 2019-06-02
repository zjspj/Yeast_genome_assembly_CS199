#!/bin/bash
#$ -N canu_run
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 32

source ~/.miniconda3rc
conda activate final_project_1

module load java/11.0.2

INPUT_DIR=./canu_job/4_merged_fastq
OUTPUT_DIR=./canu_job/5_canu
OUTPUT_NAME=yeast.fastq
GENOME_SIZE=12m

canu -p 5_canu -d ${OUTPUT_DIR} genomeSize=${GENOME_SIZE} -pacbio-raw ${INPUT_DIR}/${OUTPUT_NAME} useGrid=false

conda deactivate
