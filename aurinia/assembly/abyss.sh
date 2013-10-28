#!/bin/bash
#$ -N abyss
#$ -q genomics
#$ -j y
##$ -m ea
#$ -cwd
#$ -l mf=100G
#$ -l h_vmem=100G
. $HOME/.bashrc
export TEMPDIR=/genefs/MikheyevU/temp
export TEMP=/genefs/MikheyevU/temp
export TMP=/genefs/MikheyevU/temp
export TMPDIR=/genefs/MikheyevU/temp 

if [[ -z "$NAME" ]]; then
	echo "NAME variable not set. Pass it using qsub -v."
	exit 1
fi

DIR=data/assemblies/k$SGE_TASK_ID
if [ -d "$DIR" ]; then
	rm -r data/assemblies/k$SGE_TASK_ID
fi

mkdir $DIR

WD=`pwd`

cd $DIR

abyss-pe name=$NAME j=1 k=$SGE_TASK_ID in="$WD/data/trimmed/trimmed_1.fastq $WD/data/trimmed/trimmed_2.fastq" se="$WD/data/trimmed/trimmed_u.fastq"
