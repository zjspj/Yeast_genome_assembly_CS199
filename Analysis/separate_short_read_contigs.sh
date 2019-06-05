#!/bin/bash
#$ -N log_separate_short_read_contigs
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

source ~/.miniconda3rc
conda activate final_project_1

python separate_short_read_contigs.py

conda deactivate