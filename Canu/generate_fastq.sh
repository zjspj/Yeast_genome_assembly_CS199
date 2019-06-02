#!/bin/bash
#$ -N log_generate_fastq
## -t 1-11
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1


INPUT_DIR=./canu_job/2_unzip_pacbio
OUTPUT_DIR=./canu_job/4_merged_fastq

source ~/.miniconda3rc
conda activate final_project_1


for file_folder in ${INPUT_DIR}/*;
do
	current_file_dir=${file_folder}/Analysis_Results
	file_path=${current_file_dir}/*.bas.h5
	name_prefix_path=$(echo ${file_path} | cut -f 2 -d '.')
	name_prefix="$(basename "${name_prefix_path}")"
	bash5tools.py --outFilePrefix ${current_file_dir}/${name_prefix} --readType subreads --minLength 1000 --outType fastq --minReadScore 0.75 ${current_file_dir}/${name_prefix}.bas.h5
done

cat ${INPUT_DIR}/00*/Analysis_Results/*p0.fastq > ${OUTPUT_DIR}/yeast.fastq

conda deactivate
