#!/bin/bash
#$ -q genomics
#$ -j y
#$ -cwd
#$ -l h_vmem=40G
#$ -l virtual_free=40G
#$ -N jf
. $HOME/.bashrc
export TEMPDIR=/genefs/MikheyevU/temp
export TMPDIR=/genefs/MikheyevU/temp
export TEMP=/genefs/MikheyevU/temp
export TMP=/genefs/MikheyevU/temp

jellyfish count --both-strands --min-quality 20 -m 31 -o was_data/was -c 30 -s 100000000 -t 12 --quality-start 33 /home/s/sasha/was/raw_data/hawaii_queen/hawaii_queen_1_trim1.fastq
jellyfish merge -o was.jf was_data/was_* 
jellyfish histo -o was_data/was.txt was_data/was.jf