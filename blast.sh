#!/bin/bash
#SBATCH -J BLAST
#SBATCH -N 1
#SBATCH -t 5:00

# This script runs a single instance of BLAST on 1 core.

module load blast
blastx -db swissprot -query ~/batch_scripts/test_data/nematostella.1.fa -outfmt 6 -out blast.txt

