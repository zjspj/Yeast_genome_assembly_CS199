#!/bin/bash
#$ -N pilon_samtools
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 8

USER_NAME="jiadony1"
WORK_DIR=/pub/${USER_NAME}/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME="W303"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus.sam"
REF="consensus.fasta"

source ~/.miniconda3rc
conda activate final_project_1

ln -s /pub/jiadony1/canu_job/6_quiver/${REF} ${WORK_DIR}/${REF}

samtools view --threads 32 -b ${WORK_DIR}/${ILLUMINA_ALLIGNED} --reference ${WORK_DIR}/${REF} -o ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam).bam
samtools sort --threads 32 ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam).bam -o ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam
samtools index -b ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bai

conda deactivate
