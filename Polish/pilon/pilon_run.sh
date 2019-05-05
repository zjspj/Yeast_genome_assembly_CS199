#!/bin/bash
#$ -N pilon_run
## -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 64

source ~/.miniconda3rc
conda activate final_project_1

WORK_DIR=/pub/jiadony1/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME=""
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus_2nd_sorted.bam"
REF="consensus_2nd.fasta"

pilon --vcf --tracks --threads 64 --genome ${REF} --frags ${ILLUMINA_ALLIGNED} --output $(basename ${REF} .fasta)_pilon


conda deactivate