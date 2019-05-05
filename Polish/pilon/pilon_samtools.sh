#!/bin/bash
#$ -N pilon_samtools
## -t 1-11
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 32

source ~/.miniconda3rc
conda activate final_project_1

WORK_DIR=/pub/jiadony1/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME=""
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus_2nd.sam"
REF="consensus_2nd.fasta"


samtools view --threads 32 -b ${WORK_DIR}/${ILLUMINA_ALLIGNED} --reference ${WORK_DIR}/${REF} -o ${WORK_DIR}/$(basename $ILLUMINA_ALLIGNED .sam).bam
samtools sort --threads 32 ${WORK_DIR}/$(basename $ILLUMINA_ALLIGNED .sam).bam -o ${WORK_DIR}/$(basename $ILLUMINA_ALLIGNED .sam)_sorted.bam
samtools index -b ${WORK_DIR}/$(basename $ILLUMINA_ALLIGNED .sam)_sorted.bam ${WORK_DIR}/$(basename $ILLUMINA_ALLIGNED .sam)_sorted.bam

conda deactivate