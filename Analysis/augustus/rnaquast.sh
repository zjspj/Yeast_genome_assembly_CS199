#!/bin/bash
#$ -N log_rnaquast
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1


source ~/.miniconda3rc
conda activate final_project_3


conda deactivate