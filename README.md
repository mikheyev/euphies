# Euphydryas host-associated genetic differentiation

We are interested in looking at the genome-wide patters of host-associated genetic differentiation in two species of butterflies (*E. aurinia* and *E. editha*). The former species does not show much phenotypic differentiation between hosts, but a lot of genetic differentiation, and vice versa. This study follows up an earlier microsatellite and AFLP study ([Mikheyev _et al._ 2013](http://onlinelibrary.wiley.com/doi/10.1111/mec.12423/full)), and takes it next-generation.

## Organization
There are two folders *aurinia* and *editha* that correspond to species-specific analysis tasks, such as genome assembly or RAD-tag mapping. Within each folder, tasks are sub-divided into sub-folders, such as *assembly*. Every folder has a *data* folder, which is not synced, as the files it contains are too large. Eventually, these files will be shared using btsync.


## Common workflow performed in the same way for each species
Whenever possible the original file is in the aurinia folder, and there is a symlink to editha to maintain consistency.

### Genome assembly

This is a workflow is common to both species, copying raw data from SQC, trimming them, and then making an ABYSS assembly. 
We sequenced the same libary on two lanes (one run on the HiSeq2000 and one on the 2500).

* trim_hiseq2500.sh and trim_hiseq2000.sh
  - cut low quality sequence and move files to their respective folders from the OIST sequencing center folder.
  - the two different files correspond to the two runs
* concatenate.sh
  - collect all the trimmed files into one set of input files
* abyss.sh
  - runs a range of k-mers for assembly
  - these should be invoked with **qsub -v NAME=_species_** 
