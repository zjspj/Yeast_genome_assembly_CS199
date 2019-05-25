#!/bin/bash
#$ -N yeast_2_unzip_pacbio
#$ -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 1

USER_NAME=jiadony1
INPUT_DIR=/pub/${USER_NAME}/rawdata/pacbio
OUTPUT_DIR=/pub/${USER_NAME}/canu_job/2_unzip_pacbio

source ~/.miniconda3rc
conda activate final_project_1

mkdir ${OUTPUT_DIR}

SEED=$(ls ${INPUT_DIR}/00*.tar.gz | head -n $SGE_TASK_ID | tail -n 1)

tar -xvzf $SEED -C ${OUTPUT_DIR}

conda deactivate
