#!/bin/bash
#$ -N yeast_1_init_environment
## -t 1-33
#$ -q pub8i free88i free72i free56i free48i free40i free32i free24i
#$ -m beas
#$ -M jiadony1@uci.edu

#$ -ckpt restart
#$ -pe openmp 1

USERS_NAME=jiadongy1


mkdir /pub/${USERS_NAME}/canu_job
mkdir /pub/${USERS_NAME}/canu_job/0_output
qsub yeast_2_unzip_pacbio.sh
