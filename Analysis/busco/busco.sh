#!/bin/bash
#$ -N log_busco
## -t 1-11
#$ -q free72i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 8





INPUT_DATA_TYPE='Final_Assembly'
INPUT_FASTA=../7_pilon/consensus_pilon.fasta 

# INPUT_DATA_TYPE='Long_Read_Ref'
# INPUT_FASTA=../../rawdata/REF/HGAP_assembly.fasta 

# INPUT_DATA_TYPE='Short_Read_Ref'
# INPUT_FASTA=../../rawdata/REF/illumina_MPG_2013.fasta 

source ~/.miniconda3rc
conda activate final_project_1

# export AUGUSTUS_CONFIG_PATH=/data/users/jiadony1/bin/miniconda3/pkgs/augustus-3.2.2-0/config
# export PATH=$PATH:/data/users/jiadony1/bin/miniconda3/pkgs/augustus-3.2.2-0/scripts

busco -c ${NSLOTS} -i ${INPUT_FASTA} -l ../../rawdata/busco/saccharomycetales_odb9 -o 9_busco_${INPUT_DATA_TYPE} -m geno -sp saccharomyces_cerevisiae_S288C

conda deactivate
