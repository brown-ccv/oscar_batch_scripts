#!/bin/bash

# Request an hour of runtime:
#SBATCH -t 0:30:00

# Default resources are 1 core with 2.8GB of memory.

# Use more memory (4GB):
#SBATCH --mem=4G

# Specify a job name:
#SBATCH -J MyMatlabJob

# Specify an output file
#SBATCH -o MyMatlabJob-%j.out
#SBATCH -e MyMatlabJob-%j.errout

###SBATCH --qos=bibs-ccvstaff-condo

# Load a differnt version of Matlab
module load matlab/R2017a

# Run a matlab function called 'foo.m' in the same directory as this batch script.
matlab-threaded -r "foo(1); exit"

