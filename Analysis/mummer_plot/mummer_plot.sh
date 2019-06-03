#!/bin/bash
#$ -N log_mummer_plot
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

REF_DIR=../../rawdata/REF

# REF_PREFIX='HGAP_assembly'
REF_PREFIX='illumina_MPG_2013'


ASSEMBLY_DIR=../7_pilon

ASSEMBLY_PREFIX="consensus_pilon"

source ~/.miniconda3rc
conda activate final_project_2

nucmer -p ${ASSEMBLY_PREFIX}_${REF_PREFIX} \
${REF_DIR}/${REF_PREFIX}.fasta \
${ASSEMBLY_DIR}/${ASSEMBLY_PREFIX}.fasta

mummerplot --fat --layout --filter \
-p ${ASSEMBLY_PREFIX}_${REF_PREFIX} ${ASSEMBLY_PREFIX}_${REF_PREFIX}.delta \
-R ${REF_DIR}/${REF_PREFIX}.fasta \
-Q ${ASSEMBLY_DIR}/${ASSEMBLY_PREFIX}.fasta \
--png

conda deactivate