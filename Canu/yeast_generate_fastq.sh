#!/bin/bash
#$ -N yeast_generate_fastq
## -t 1-11
#$ -q free88i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

source ~/.miniconda3rc
conda activate final_project_1

INPUT_JOBROOT_DIR
INPUT_DIR=/pub/jiadony1/canu_job/2_unzip_pacbio
OUTPUT_DIR=/pub/jiadony1/canu_job/4_merged_fastq
mkdir ${OUTPUT_DIR}

for file_folder in ${INPUT_DIR}/*;do
	current_file_dir=${file_folder}/Analysis_Results
	file_path=${current_file_dir}/*.bas.h5
	name_prefix_path=$(echo "${file_path}" | cut -f 1 -d '.')
	name_prefix="$(basename "${name_prefix_path}")"
	bash5tools.py --outFilePrefix ${current_file_dir}/${name_prefix} --readType subreads --minLength 1000 --outType fastq --minReadScore 0.75 ${current_file_dir}/${name_prefix}.bas.h5
done

cat ${INPUT_DIR}/00*/Analysis_Results/*p0.fastq > OUTPUT_DIR/yeast.fastq

conda deactivate