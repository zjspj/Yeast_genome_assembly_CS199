# The scripts in this folder runs different analysis program to analyze our final assembly against a reference constructed from long read raw data(Pacbio) and a reference constructed from short read raw data (Illumina).

## After running the separate_short_read_contigs.py first to break down the short read reference scaffold assembly into contig assembly, is fine to run different folder with any order

## Below is the location to run each script.

### **RUN FIRST!!! : [separate_short_read_contigs.sh](separate_short_read_contigs.sh)  (run inside folder rawdata/REF/ while [separate_short_read_contigs.py](separate_short_read_contigs.py) is in the same folder )**

#### Busco

(***When runnning busco.sh for the first time, go in to busco.sh, uncomment both export command and run the code with those export command. After the first run, comment out both export command like the original code and run it without the export command.***)


[busco.sh](Busco/busco.sh)  (run inside folder canu_job/9_busco/) (activate different part of the script to obtain busco result for differernt assembly)

#### Mummer_Plot/

[mummer_plot.sh](Mummer_plot/mummer_plot.sh)  (run inside folder canu_job/10_mummer/)

#### CDF/

[CDF.sh](CDF/CDF.sh)  (run inside folder canu_job/11_CDF while [cdf_graph.py](CDF/cdf_graph.py) is in the same folder)

#### Quast/

[quast.sh](Quast/quast.sh)  (run inside folder canu_job/8_quast)

#### Augustus/

**1st:** [augustus.sh](Augustus/augustus.sh)  (run inside folder canu_job/12_augustus  ***Edit in your LD_LIBRARY_PATH accordingly***)

**2nd:** [bedtools.sh](Augustus/bedtools.sh)  (run inside folder canu_job/12_augustus)

**3rd:** [trinityNx.sh](Augustus/trinityNx.sh)  (run inside folder canu_job/12_augustus)
