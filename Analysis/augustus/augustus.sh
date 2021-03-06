#!/bin/bash
#$ -N log_augustus
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

ln -s ../7_pilon/consensus_pilon.fasta


source ~/.miniconda3rc
conda activate final_project_3

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/data/users/jiadony1/bin/miniconda3/envs/final_project_3/lib

augustus --species=saccharomyces_cerevisiae_S288C consensus_pilon.fasta --gff3=on --outfile=augustus_consensus_pilon.gff3  --stopCodonExcludedFromCDS=false

conda deactivate
