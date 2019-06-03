# The scripts in this folder runs different analysis program to analyze our final assembly against a reference constructed from long read raw data(Pacbio) and a reference constructed from short read raw data (Illumina).

## After running the separate_short_read_contigs.py first to break down the short read reference scaffold assembly into contig assembly, is fine to run the remaining scripts in different folder with any order.

## Below is the location to run each script.

### **RUN FIRST!!! : separate_short_read_contigs.py  (run inside folder rawdata/REF/)**

busco.sh  (run inside folder canu_job/9_busco/) (activate different part of the script to obtain busco result for differernt assembly)

mummer_plot.sh  (run inside folder canu_job/10_mummer/)

cdf_graph.py  (run inside folder canu_job/7_pilon)