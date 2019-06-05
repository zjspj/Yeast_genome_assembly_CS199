#!/bin/bash
#$ -N log_trinity_transcriptome_stat
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1


source ~/.miniconda3rc
conda activate final_project_3

TrinityStats.pl  augustus_consensus_pilon.fasta > augustus_stat_report.txt

conda deactivate