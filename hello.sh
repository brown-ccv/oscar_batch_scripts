#!/bin/bash
# This is an example batch script for slurm on Oscar
# 
# The commands for slurm start with #SBATCH
# All slurm commands need to come before the program 
# you want to run.  In this example, 'echo "Hello World!"
# is the command we are running.
#
# This is a bash script, so any line that starts with # is
# a comment.  If you need to comment out an #SBATCH line 
# use ##SBATCH 
#
# To submit this script to slurm do:
#    sbatch hello.sh
#
# Once the job starts you will see a file hello-****.out
# The **** will be the slurm JobID
# --- Start of slurm commands -----------
# Request an hour of runtime:
#SBATCH --time=1:00:00
# Default resources are 1 core with 2.8GB of memory.
# Use more memory (4GB):
#SBATCH --mem=4G
# Specify a job name:
#SBATCH -J hello
# Specify an output file
# %j is a special variable that is replaced by the JobID when 
# job starts
#SBATCH -o hello-%j.out
#SBATCH -e hello-%j.out
#----- End of slurm commands ----

# Run a command
echo "Hello World!"
