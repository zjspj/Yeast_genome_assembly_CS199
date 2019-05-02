#!/bin/bash
#$ -N yeast_5_canu
## -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 64

source ~/.miniconda3rc
conda activate final_project_1

module load java/11.0.2
PATH=/data/users/jiadony1/bin/canu-1.8/Linux-amd64/bin:$PATH

INPUT_DIR=/pub/jiadony1/canu_job/4_merged_fastq
OUTPUT_DIR=/pub/jiadony1/canu_job/5_canu
OUTPUT_NAME=yeast.fastq
GENOME_SIZE=12m

canu -p 5_canu -d ${OUTPUT_DIR} genomeSize=${GENOME_SIZE} -pacbio-raw ${INPUT_DIR}/${OUTPUT_NAME} useGrid=false

conda deactivate
