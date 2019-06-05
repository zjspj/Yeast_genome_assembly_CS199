# The scripts in this folder runs different analysis program to analyze our final assembly against a reference constructed from long read raw data(Pacbio) and a reference constructed from short read raw data (Illumina).

## After running the separate_short_read_contigs.py first to break down the short read reference scaffold assembly into contig assembly, is fine to run different folder with any order

## Below is the location to run each script.

### **RUN FIRST!!! : [separate_short_read_contigs.sh](separate_short_read_contigs.sh)  (run inside folder rawdata/REF/ while [separate_short_read_contigs.py](separate_short_read_contigs.py) is in the same folder )**

#### busco

(***When runnning busco.sh for the first time, go in to busco.sh, uncomment both export command and run the code with those export command. After the first run, comment out both export command like the original code and run it without the export command.***)


[busco.sh](busco/busco.sh)  (run inside folder canu_job/9_busco/) (activate different part of the script to obtain busco result for differernt assembly)

#### mummer_plot/

[mummer_plot.sh](mummer_plot/mummer_plot.sh)  (run inside folder canu_job/10_mummer/)

#### CDF/

[CDF.sh](CDF/CDF.sh)  (run inside folder canu_job/11_CDF while [cdf_graph.py](CDF/cdf_graph.py) is in the same folder)

#### quast/

[quast.sh](quast/quast.sh)  (run inside folder canu_job/8_quast)

#### augustus/

**1st:** [augustus.sh](augustus/augustus.sh)  (run inside folder canu_job/12_augustus)

**2nd:** [bedtools.sh](augustus/bedtools.sh)  (run inside folder canu_job/12_augustus)

**3rd:** [trinityNx.sh](augustus/trinityNx.sh)  (run inside folder canu_job/12_augustus)
