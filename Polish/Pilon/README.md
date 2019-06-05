# This folder contains all scripts used to polish the genome assembly results using pilon.

## The code is written to use assembly with one round of quiver polishing as reference. Variable ${REF_Prefix} and ${REF_DIR} should be changed to match the new reference used.

## The order and location to run these code:

**1st**: [bowtie_build.sh](bowtie_build.sh)  (run inside folder canu_job/7_pilon/)

**2nd**: [bowtie2.sh](bowtie2.sh)  (run inside folder canu_job/7_pilon/)

**3rd**: [samtools.sh](samtools.sh)  (run inside folder canu_job/7_pilon/)

**4th**: [pilon_run.sh](pilon_run.sh)  (run inside folder canu_job/7_pilon/)

