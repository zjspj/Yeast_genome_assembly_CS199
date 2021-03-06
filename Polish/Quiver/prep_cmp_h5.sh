#!/bin/bash
#$ -N log_prep_cmp_h5
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

ln -s ../2_unzip_pacbio
INPUT_FILE_LOC=2_unzip_pacbio

# after unzip the all the pacbio raw data
source ~/.miniconda3rc
conda activate final_project_1

# Put all raw data to a .fofn file
ls ${INPUT_FILE_LOC}/*/*/*.bas.h5 > input_master.fofn

file=input_master.fofn

# extract raw data from each .gz file, and output to .fofn. temp_myjoblist.txt contains the name of each .gz file.
while IFS= read line
do
        SUB_NAME=$(echo $line | cut -d '/' -f2)
        echo ${line} >> input_${SUB_NAME}.fofn
        echo ${SUB_NAME} >> temp_myjoblist.txt

done <"$file"

# remove duplicated names of each raw data .gz file.
awk '!seen[$0]++' temp_myjoblist.txt > myjoblist.txt

rm temp_myjoblist.txt #remove the temp file

ln -s ../5_canu/5_canu.contigs.fasta

conda deactivate
