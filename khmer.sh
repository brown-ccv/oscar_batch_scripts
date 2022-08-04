#!/bin/sh
#SBATCH --mem=22G
#SBATCH -N 1
#SBATCH -t 60

module load agalma/dev khmer

# Replace the forward/reverse paths below with your own data.
interleave -o interleaved.fq -i <forward.reads.fastq> -i <reverse.reads.fastq> -s /

normalize-by-median.py -N 4 -x 4e9 -k 17 -p interleaved.fq

# The normalized reads will be in the file 'interleaved.fq.keep'

