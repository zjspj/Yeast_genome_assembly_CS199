#!/bin/bash
#$ -N pilon_run
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 64


source ~/.miniconda3rc
conda activate final_project_1


WORK_DIR=/pub/jiadony1/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME="S288C"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus_second_sorted.bam"
REF="consensus_second.fasta"

#java -Xmx120G

pilon --vcf --tracks --threads ${NSLOTS} --genome ./${REF} --frags ./${ILLUMINA_ALLIGNED} --output ./$(basename ${REF} .fasta)_pilon

conda deactivate
