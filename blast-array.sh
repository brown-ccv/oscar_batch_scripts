#!/bin/bash
#SBATCH -J BLAST
#SBATCH -t 5:00
#SBATCH -N 1
#SBATCH --array=1-4

# This script creates four jobs that each run a single instance of BLAST on 1
# core.

module load blast
ID=$SLURM_ARRAY_TASK_ID
blastx -db swissprot -query ~/batch_scripts/test_data/nematostella.${ID}.fa -outfmt 6 -out blast.${ID}.txt

