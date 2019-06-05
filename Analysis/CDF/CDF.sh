#!/bin/bash
#$ -N log_CDF
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

source ~/.miniconda3rc
conda activate final_project_1

python cdf_graph.py

conda deactivate
