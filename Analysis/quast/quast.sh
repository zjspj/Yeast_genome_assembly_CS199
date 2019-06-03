#!/bin/bash
#$ -N log_quast
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1


source ~/.miniconda3rc
conda activate final_project_1

quast ../7_pilon/consensus_pilon.fasta ../../rawdata/REF/HGAP_assembly.fasta ../../rawdata/REF/illumina_MPC_2013_contig.fasta -o quast_result

conda deactivate