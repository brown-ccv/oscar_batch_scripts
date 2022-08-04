#!/bin/bash
#SBATCH -J bowtie2
#SBATCH -t 5:00
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=4g

# This script runs a single instance of bowtie2 on 8 cores of 1 node.

module load bowtie2 samtools
bowtie2 -p 8 \
	-x /gpfs/data/shared/bowtie/hg19 \
	-U ~/batch_scripts/test_data/bowtie2.fq.gz -p 8 \
| samtools view -Sb - >bowtie2_test.bam

