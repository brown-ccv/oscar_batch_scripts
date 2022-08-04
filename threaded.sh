#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Default resources are 1 core with 2.8GB of memory per core.

# Controls the minimum/maximum number of nodes allocated to the job
#SBATCH -N 1

# Use more cores (8):
#SBATCH -c 8

# Specify a job name:
#SBATCH -J MyThreadedJob

# Specify an output file
#SBATCH -o MyThreadedJob-%j.out
#SBATCH -e MyThreadedJob-%j.out

# Run a command

./MyThreadedProgram -threads 8

