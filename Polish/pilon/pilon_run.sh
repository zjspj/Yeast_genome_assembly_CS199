#!/bin/bash
#$ -N pilon_run
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 64

USER_NAME=jiadony1
WORK_DIR=/pub/${USER_NAME}/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME="W303"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus_sorted.bam"
REF="consensus.fasta"

source ~/.miniconda3rc
conda activate final_project_1

#java -Xmx120G

pilon --vcf --tracks --threads ${NSLOTS} --genome ./${REF} --frags ./${ILLUMINA_ALLIGNED} --output ./$(basename ${REF} .fasta)_pilon

conda deactivate
