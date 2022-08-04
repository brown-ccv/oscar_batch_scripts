#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Controls the minimum/maximum number of nodes allocated to the job
#SBATCH -N 1

# Default resources are 1 core with 2.8GB of memory.

# Use more memory (4GB):
#SBATCH --mem=4G

# Specify a job name:
#SBATCH -J MyMatlabJob

# Specify an output file
#SBATCH -o MyMatlabJob-%j.out
#SBATCH -e MyMatlabJob-%j.err

# Run a matlab function called 'foo.m' in the same directory as this batch script.
matlab -r "foo(1); exit"

