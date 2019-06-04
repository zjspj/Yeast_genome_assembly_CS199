#!/bin/bash
#$ -N log_bedtools
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1


source ~/.miniconda3rc
conda activate final_project_3

bedtools getfasta -fi consensus_pilon.fasta -fo augustus_consensus_pilon.fasta -bed augustus_consensus_pilon.gff3

conda deactivate
