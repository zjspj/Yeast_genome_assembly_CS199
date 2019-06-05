#!/bin/bash
#$ -N log_bowtie2
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 8


REF_Prefix="consensus"
SAMPLE_NAME="SRR1569900"
SAMPLE_1="${SAMPLE_NAME}_1.fastq"
SAMPLE_2="${SAMPLE_NAME}_2.fastq"
ILLUMINA_SAMPLE_NAME="W303"

source ~/.miniconda3rc
conda activate final_project_1

bowtie2 --threads ${NSLOTS} -x ${REF_Prefix} -1 ${SAMPLE_1} -2 ${SAMPLE_2} -S ${ILLUMINA_SAMPLE_NAME}_${REF_Prefix}.sam

conda deactivate
