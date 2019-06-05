#!/bin/bash
#$ -N log_pilon_run
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 32


REF_Prefix="consensus"
ILLUMINA_SAMPLE_NAME="W303"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_${REF_Prefix}_sorted.bam"
REF="${REF_Prefix}.fasta"

source ~/.miniconda3rc
conda activate final_project_1

#java -Xmx120G

pilon --vcf --tracks --threads ${NSLOTS} --genome ${REF} --frags ${ILLUMINA_ALLIGNED} --output $(basename ${REF} .fasta)_pilon

conda deactivate
