Renhao Luo's README.md

# I. Introduction

Yeast (Saccharomyces cerevisiae) has been recognized as an important model in the field of biology because some essential cellular processes are the same in human and in yeast. Scientists could use the yeast as a model to figure out the connection between gene, protein, and functions.

In this project, we used publicly available Saccharomyces cerevisiae W303 PacBio data to assemble the yeast genome by using Canu. After assembly, we used quiver to correct the structure and pilon to correct nucleotides. Busco score was used to evaluate the assembly results, while quast was applied to compare our assembly results with the reference genome. Lastly, we run Augustus and Trinity to report the genome annotation.

## File Map

```
|-- canu_job
|   |-- 0_output
|   |-- 2_unzip_pacbio
|   |   |-- 0001
|   |   |-- 0002
|   |   |-- 0007
|   |   |-- 0011
|   |   |-- 0012
|   |   |-- 0013
|   |   |-- 0014
|   |   |-- 0018
|   |   |-- 0019
|   |   |-- 0020
|   |   `-- 0021
|   |-- 4_merged_fastq
|   |   `-- yeast.fastq
|   |-- 5_canu
|   |   `-- 5_canu.contigs.fasta
|   |-- 6_quiver_1st
|   |   |-- consensus.fasta
|   |   |-- consensus.fastq
|   |   |-- pbalign.sh
|   |   |-- prep_cmp_h5.sh
|   |   |-- prep_fofn.sh
|   |   `-- quiver.sh
|   |-- 6_quiver_2nd
|   |   |-- consensus.fasta
|   |   |-- consensus_second.fasta
|   |   `-- quiver2.sh
|   |-- 7_pilon_0X1X
|   |   |-- pilon_bowtie2.sh
|   |   |-- pilon_bowtie_build.sh
|   |   |-- pilon_run.sh
|   |   `-- pilon_samtools.sh
|   |-- 7_pilon_1X1X
|   |   |-- augustus.sh
|   |   |-- pilon_bowtie2.sh
|   |   |-- pilon_bowtie_build.sh
|   |   |-- pilon_run.sh
|   |   `-- pilon_samtools.sh
|   |-- 7_pilon_2X1X
|   |   |-- pilon_bowtie2.sh
|   |   |-- pilon_bowtie_build.sh
|   |   |-- pilon_run.sh
|   |   `-- pilon_samtools.sh
|   |-- 8_quast
|   |   |-- all_final_quast
|   |   |-- all_quast
|   |   |-- only_final_quast
|   |-- 9_busco
|   |   |-- 9_busco_canu
|   |   |-- 9_busco_HGAP
|   |   |-- 9_busco_illumina
|   |   |-- 9_busco_pilon_0X1X
|   |   |-- 9_busco_pilon_1X1X
|   |   |-- 9_busco_pilon_2X1X
|   |   |-- 9_busco_quiver_1st
|   |   |-- 9_busco_quiver_2nd
|   |   |-- busco.sh
|   |   |-- busco.tar.gz
|   |   |-- log_busco
|   |   `-- tmp
|   |-- 10_mummer
|   |   `-- nucmer.sh
|   `-- yeast_script
|       |-- analysis
|       |   `-- busco.sh
|       |-- separate_contigs.py
|       |-- yeast_1_init_environment.sh
|       |-- yeast_2_unzip_pacbio.sh
|       |-- yeast_5_canu.sh
|       `-- yeast_generate_fastq.sh
`-- rawdata
    |-- busco
    |   |-- eukaryota_odb9
    |   |-- eukaryota_odb9.tar.gz
    |   |-- saccharomycetales_odb9
    |   `-- saccharomycetales_odb9.tar.gz
    |-- illumina
    |   |-- accessionlist.txt
    |   |-- ERX1999216_1.fastq.gz
    |   |-- ERX1999216_2.fastq.gz
    |   |-- ERX1999217_1.fastq.gz
    |   |-- ERX1999217_2.fastq.gz
    |   |-- ERX1999218_1.fastq.gz
    |   |-- ERX1999218_2.fastq.gz
    |   |-- ERX1999219_1.fastq.gz
    |   |-- ERX1999219_2.fastq.gz
    |   |-- SRR1569900_1.fastq
    |   `-- SRR1569900_2.fastq
    |-- pacbio
    |   |-- 0001.tar.gz
    |   |-- 0002.tar.gz
    |   |-- 0007.tar.gz
    |   |-- 0011.tar.gz
    |   |-- 0012.tar.gz
    |   |-- 0013.tar.gz
    |   |-- 0014.tar.gz
    |   |-- 0018.tar.gz
    |   |-- 0019_contains_2.tgz
    |   |-- 0019.tar.gz
    |   |-- 0020.tar.gz
    |   |-- 0021.tar.gz
    |   |-- accessionlist.txt
    |   |-- file_list.txt
    |   `-- HGAP_Assembly
    |-- REF
    |   |-- HGAP_assembly.fasta
    |   |-- illumina_MPG_2013_contig.fasta
    |   |-- illumina_MPG_2013.fasta
    |   |-- separate.py
    |   `-- test
    |-- SRR1569900_1.fastq
    `-- SRR1569900_2.fastq
```
# II. Pipeline

All of the codes used in this project are available in this github repository. As long as you have created the environment and required softwares were installed properly (details in section III), you should be able to run all the programs without changing the scripts. 

![work flow](Figures/work_flow.png)

The entire Assembly work flow is shown in the graph above. The blue arrow represents where the result from each step would go. After each step, a Busco score is obtained and statistical results are calculated by Quast. Lastly, graphs were constructed in the end, and Augustus and Trinity were run for gene annotation results. Each step is explained in the following sections. Information about versions are described in the [final paper](https://docs.google.com/document/d/1BDGt6vxnI0uYwd2VWN8QQTd4IVIASFijE2-ZktaumLQ/edit?usp=sharing).

# III. Pipeline Steps

## 1. Preparation

### 1.1 File Directory Set Up

The first step is to set up the file directory on your machine. Our [create_folder.sh](Create_Environment/create_folder.sh) helps you to create directory for all the rawdata, scripts, and results.

### 1.2 Environment Set Up and Download Data

Three independent environments were used in this project, and the .yml files are linked below. 

All assembly works were completed in [final_project_1.yml](final_project_1.yml)
    ***Note: You need to have your own access to smrtanalysis v2.3.0p5 as it contains Quiver. It is not available on Anaconda*** 

All the alignment graphs were generated in [final_project_2.yml](final_project_2.yml)

Augustus and Trinity were ran in [final_project_3.yml](final_project_3.yml)

All the data used in this project are publicly available. All the data can obtain by using ```wget```. all ```wget``` commands can be found in our [download_data.sh](Create_Environment/download_data.sh) bash file.

## 2. Canu Assembly

### 2.1 Converting raw data to a single master FASTQ

The Bash5tools is used to convert each PackBio raw data (.bas.h5) to a FASTQ file.

The following code will be run in a for loop. (Check our [bash script](Canu/generate_fastq.sh) on how to use the tool)

```bash5tools.py --outFilePrefix ${output_file_name} --readType subreads --minLength 1000 --outType fastq --minReadScore 0.75 ${PacBio_raw_data}.bas.h5```

The output file is a FASTQ file for each .bas.h5 file. The next step is to combine all the single FASTQ file to a master FASTQ file. 

```cat *.fastq > master.fastq```

The master.fastq will be used as the input file in Canu Run. 

### 2.2 Canu run

Once we have the master.fastq, we can run Canu to assembly the genome. 

```canu -p ${output_file_name} -d ${output_directory} genomeSize=12m -pacbio-raw master.fastq useGrid=false```

The variable "genomeSize" is given from the [Saccharomyces Genome Database](https://www.yeastgenome.org). The output of Canu is a FASTA file, which will be used for polishing.

# IV. Conclusion

### [Final Write Up](https://docs.google.com/document/d/1BDGt6vxnI0uYwd2VWN8QQTd4IVIASFijE2-ZktaumLQ/edit?usp=sharing)
