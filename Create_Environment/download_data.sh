#!/bin/bash
#$ -N log_download_data
#$ -q pub8i
#$ -m beas
#$ -M jiadony1@uci.edu
#$ -ckpt restart
#$ -pe openmp 1



### download pacbio raw data
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0001/Analysis_Results/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0001/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0001/m130605_000141_42207_c100515142550000001823076608221372_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0002/Analysis_Results/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0002/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0002/m130605_032054_42207_c100515142550000001823076608221373_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0007/Analysis_Results/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0007/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0007/m130605_231954_42210_c100515112550000001823076608221304_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0011/Analysis_Results/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0011/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0011/m130607_031915_42207_c100539492550000001823089611241310_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/00012/Analysis_Results/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0012/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0012/m130607_063829_42207_c100539492550000001823089611241311_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0013/Analysis_Results/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0013/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0013/m130607_131654_42207_c100539492550000001823089611241313_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0014/Analysis_Results/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0014/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0014/m130607_095747_42207_c100539492550000001823089611241312_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0018/Analysis_Results/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0018/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0018/m130609_051143_42207_c100539282550000001823089611241380_s1_p0.metadata.xml
wget https://sra-download.ncbi.nlm.nih.gov/traces/sra24/SRZ/001284/SRR1284669/SRR1284669_hdf5.tgz -O ./canu_job/2_unzip_pacbio/0019/Analysis_Results/SRR1284669_hdf5.tgz
tar -zxf ./canu_job/2_unzip_pacbio/0019/Analysis_Results/SRR1284669_hdf5.tgz -C ./canu_job/2_unzip_pacbio/0019/Analysis_Results/
rm ./canu_job/2_unzip_pacbio/0019/Analysis_Results/SRR1284669_hdf5.tgz
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0019/m130609_050958_42210_c100539382550000001823089611241350_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0019/m130609_050958_42210_c100539382550000001823089611241350_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0020/Analysis_Results/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0020/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0020/m130609_083056_42207_c100539282550000001823089611241381_s1_p0.metadata.xml
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.1.bax.h5 -O ./canu_job/2_unzip_pacbio/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.1.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.2.bax.h5 -O ./canu_job/2_unzip_pacbio/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.2.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.3.bax.h5 -O ./canu_job/2_unzip_pacbio/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.3.bax.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.bas.h5 -O ./canu_job/2_unzip_pacbio/0021/Analysis_Results/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.bas.h5
wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/0021/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.metadata.xml -O ./canu_job/2_unzip_pacbio/0021/m130609_082855_42210_c100539382550000001823089611241351_s1_p0.metadata.xml


#### download illumina data used in pilon polishing 
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR156/000/SRR1569900/SRR1569900_1.fastq.gz -O ./rawdata/illumina/SRR1569900_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR156/000/SRR1569900/SRR1569900_2.fastq.gz -O ./rawdata/illumina/SRR1569900_2.fastq.gz
gunzip ./rawdata/illumina/SRR1569900_1.fastq.gz
gunzip ./rawdata/illumina/SRR1569900_2.fastq.gz

#### download both the HGAP long read reference and illumina short read reference for all data analysis
#### the illumina short read reference downloaded in this step is scaffold, separate_contig.py script needed to be ran in order to obtain the contig fasta needed for quast

wget http://datasets.pacb.com.s3.amazonaws.com/2013/Yeast/HGAP_Assembly/polished_assembly.fasta -O ./rawdata/REF/HGAP_assembly.fasta
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/292/815/GCA_000292815.1_ASM29281v1/GCA_000292815.1_ASM29281v1_genomic.fna.gz -O ./rawdata/REF/GCA_000292815.1_ASM29281v1_genomic.fna.gz
gunzip ./rawdata/REF/GCA_000292815.1_ASM29281v1_genomic.fna.gz > ./rawdata/REF/illumina_MPG_2013.fasta
rm ./rawdata/REF/GCA_000292815.1_ASM29281v1_genomic.fna


#### download the busco reference dataset for yeast
wget http://busco.ezlab.org/v2/datasets/saccharomycetales_odb9.tar.gz -O ./rawdata/busco/saccharomycetales_odb9.tar.gz
tar -zxf ./rawdata/busco/saccharomycetales_odb9.tar.gz -C ./rawdata/busco/
rm ./rawdata/busco/saccharomycetales_odb9.tar.gz