# 1. introduction
## Directory tree
```
/pub/jiadony1
|-- canu_job
|   |-- 0_output
|   |-- 10_mummer
|   |   -- nucmer.sh
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
|   |   |-- 5_canu.contigs.fasta
|   |-- 6_quiver_1st
|   |   |-- consensus.fasta
|   |   |-- consensus.fastq
|   |   |-- pbalign.sh
|   |   |-- prep_cmp_h5.sh
|   |   |-- prep_fofn.sh
|   |   |-- quiver.sh
|   |-- 6_quiver_2nd
|   |   |-- consensus.fasta
|   |   |-- consensus_second.fasta
|   |   |-- quiver2.sh
|   |-- 7_pilon_0X1X
|   |   |-- 5_canu.contigs_pilon.fasta
|   |   |-- pilon_bowtie2.sh
|   |   |-- pilon_run.sh
|   |   |-- pilon_samtools.sh
|   |-- 7_pilon_1X1X
|   |   |-- augustus_consensus_pilon.fasta
|   |   |-- augustus.sh
|   |   |-- consensus.fasta -> /pub/jiadony1/canu_job/6_quiver/consensus.fasta
|   |   |-- consensus_pilon.fasta
|   |   |-- pilon_bowtie2.sh
|   |   |-- pilon_bowtie_build.sh
|   |   |-- pilon_run.sh
|   |   |-- pilon_samtools.sh
|   |   |-- SRR1569900_1.fastq -> /pub/jiadony1/rawdata/illumina/SRR1569900_1.fastq
|   |   `-- SRR1569900_2.fastq -> /pub/jiadony1/rawdata/illumina/SRR1569900_2.fastq
|   |-- 7_pilon_2X1X
|   |   |-- consensus_second.fasta -> /pub/jiadony1/canu_job/6_quiver/consensus_second.fasta
|   |   |-- consensus_second_pilon.fasta
|   |   |-- ERX1999216_1.fastq
|   |   |-- ERX1999216_2.fastq
|   |   |-- pilon_run.sh -> /data/users/jiadony1/yeast_script/pilon/pilon_run.sh
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
|   `-- yeast_script
|       |-- analysis
|       |   |-- busco.sh
|       |   `-- tmp
|       |-- pilon
|       |   |-- pilon_bowtie2.sh
|       |   `-- pilon_bowtie_build.sh
|       |-- quiver
|       |   |-- merge_cmp_h5.sh
|       |   |-- pbalign.sh
|       |   |-- prep_cmp_h5.sh
|       |   |-- prep_fofn.sh
|       |   |-- quiver2.sh
|       |   `-- quiver.sh
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
    |-- dump.sh
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
    |-- ont
    |   `-- accessionlist.txt
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
# 2. Pipeline

# 3. Pipeline Steps

# 4. Conclusion:
### [link to write up](https://docs.google.com/document/d/1BDGt6vxnI0uYwd2VWN8QQTd4IVIASFijE2-ZktaumLQ/edit?usp=sharing)
