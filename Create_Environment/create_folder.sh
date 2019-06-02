#!/bin/bash
#$ -N log_create_folder
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1

#### this program creates the directory structure needed for the pipeline under the directory it is ran.
#### 5_canu folder is not created in purpose since canu will auto generate the run directory

mkdir canu_job
mkdir ./canu_job/
mkdir ./canu_job/2_unzip_pacbio
mkdir ./canu_job/2_unzip_pacbio/0001
mkdir ./canu_job/2_unzip_pacbio/0002
mkdir ./canu_job/2_unzip_pacbio/0007
mkdir ./canu_job/2_unzip_pacbio/0011
mkdir ./canu_job/2_unzip_pacbio/0012
mkdir ./canu_job/2_unzip_pacbio/0013
mkdir ./canu_job/2_unzip_pacbio/0014
mkdir ./canu_job/2_unzip_pacbio/0018
mkdir ./canu_job/2_unzip_pacbio/0019
mkdir ./canu_job/2_unzip_pacbio/0020
mkdir ./canu_job/2_unzip_pacbio/0021
mkdir ./canu_job/2_unzip_pacbio/0001/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0002/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0007/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0011/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0012/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0013/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0014/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0018/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0019/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0020/Analysis_Results
mkdir ./canu_job/2_unzip_pacbio/0021/Analysis_Results
mkdir ./canu_job/4_merged_fastq
mkdir ./canu_job/6_quiver
mkdir ./canu_job/7_pilon
mkdir ./canu_job/8_quast
mkdir ./canu_job/9_busco
mkdir ./canu_job/10_mummer
mkdir ./canu_job/11_cdp
mkdir rawdata
mkdir ./rawdata/illumina
mkdir ./rawdata/REF
mkdir ./rawdata/busco