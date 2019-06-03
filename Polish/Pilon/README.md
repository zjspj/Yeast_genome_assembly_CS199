# This folder contains all scripts used to polish the genome assembly results using pilon.

## The order and location to run these code:

**1st**: [bowtie_build.sh](bowtie_build.sh)  (run in the master folder that contains canu_job/ and rawdata/ folder)

**2nd**: [bowtie2.sh](bowtie2.sh)  (run in the master folder that contains canu_job/ and rawdata/ folder)

**3rd**: [samtools.sh](samtools.sh)  (run in the master folder that contains canu_job/ and rawdata/ folder)

**4th**: [pilon_run.sh](pilon_run.sh)  (run inside folder canu_job/7_pilon/)

