#!/bin/bash
#SBATCH -J RAxML
#SBATCH -t 5:00
#SBATCH -n 2
#SBATCH --ntasks-per-node=1
#SBATCH -c 8
#SBATCH --mem=20g

# This script runs RAxML on 2 nodes in MPI-hybrid mode, which means it starts
# one MPI task on each node, and each task uses 8 threads (via the "-T 8" option
# below). Because the threads within a node can share memory, this is more
# efficient than running the regular MPI version of RAxML which uses an MPI
# task per core.

module load raxml
srun raxmlHPC-HYBRID -T 8 -p 12345 -m PROTGAMMAGTR -s ~/batch_scripts/test_data/raxml.phy -n GTR -N 32

