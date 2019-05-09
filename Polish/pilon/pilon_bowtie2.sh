#!/bin/bash
#$ -N pilon_samtools
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 16

source ~/.miniconda3rc
conda activate final_project_1

WORK_DIR=/pub/jiadony1/canu_job/7_pilon
ILLUMINA_SAMPLE_NAME="S288C"
ILLUMINA_ALLIGNED="${ILLUMINA_SAMPLE_NAME}_consensus_second.sam"
REF="consensus_second.fasta"

ln -s /pub/jiadony1/canu_job/6_quiver/${REF} ${WORK_DIR}/${REF}

samtools view --threads ${NSLOTS} -b ${WORK_DIR}/${ILLUMINA_ALLIGNED} --reference ${WORK_DIR}/${REF} -o ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam).bam
samtools sort --threads ${NSLOTS}  ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam).bam -o ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam
samtools index -b ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bam ${WORK_DIR}/$(basename ${ILLUMINA_ALLIGNED} .sam)_sorted.bai

conda deactivate

