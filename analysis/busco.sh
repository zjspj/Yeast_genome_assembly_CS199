#!/bin/bash
#$ -N busco
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 8

source ~/.miniconda3rc
conda activate final_project_1


USERNAME='jiadony1'
INPUT_DATA_TYPE='pilon'
INPUT_FASTA=7_pilon/consensus_second_pilon.fasta


export AUGUSTUS_CONFIG_PATH=/data/users/${USERNAME}/bin/miniconda3/pkgs/augustus-3.2.2-0/config

export PATH=$PATH:/data/users/${USERNAME}/bin/miniconda3/pkgs/augustus-3.2.2-0/scripts

busco -c ${NSLOTS} -i /pub/${USERNAME}/canu_job/${INPUT_FASTA} -l /pub/${USERNAME}/rawdata/busco/saccharomycetales_odb9 -o /pub/${USERNAME}/canu_job/9_busco_${INPUT_DATA_TYPE} -m geno -sp saccharomyces_cerevisiae_S288C


conda deactivate
