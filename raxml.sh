#!/bin/bash
#SBATCH -J RAxML
#SBATCH -t 5:00
#SBATCH -n 16

# This script runs RAxML on 16 tasks using MPI.

module load raxml
srun raxmlHPC-MPI -p 12345 -m PROTGAMMAWAG -s ~/batch_scripts/test_data/raxml.phy -# 20 -n T7

