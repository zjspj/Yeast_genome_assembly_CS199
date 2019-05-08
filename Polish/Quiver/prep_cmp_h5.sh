#!/bin/bash
#$ -N yeast_prep_quiver_1
#$ -t 1-1
#$ -q free48
#$ -m beas
#$ -M renhaol1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

# after unzip the all the pacbio raw data
source ~/.miniconda3rc
conda activate final_project_1

INPUT_FILE_DIR=/pub/renhaol1/canu_job/2_unzip_pacbio
INPUT_FILE_LOC=2_unzip_pacbio

# Put all raw data to a .fofn file
ls ${INPUT_FILE_LOC}/*/*/*.bas.h5 > input_bas_master.fofn

file=input_bas_master.fofn

# extract raw data from each .gz file, and output to .fofn. temp_myjoblist.txt contains the name of each .gz file.
while IFS= read line
do
        SUB_NAME=$(echo $line | cut -d '/' -f2)
        echo ${line} >> input_bas_${SUB_NAME}.fofn
        echo ${SUB_NAME} >> temp_myjoblist.txt

done <"$file"

# remove duplicated names of each raw data .gz file.
awk '!seen[$0]++' temp_myjoblist.txt > myjoblist_bas.txt

rm temp_myjoblist.txt

conda deactivate
