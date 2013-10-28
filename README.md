# Euphydryas host-associated genetic differentiation

We are interested in looking at the genome-wide patters of host-associated genetic differentiation in two species of butterflies.


## Genome assembly

This is a workflow is common to both species, copying raw data from SQC, trimming them, and then making an ABYSS assembly. 
We sequenced the same libary on two lanes (one run on the HiSeq2000 and one on the 2500).

## order of scripts
* trim.sh
  - cut low quality sequence and move files to their respective folders
* concatenate.sh
