#!/bin/bash

# Job Name
#SBATCH -J arrayjob 

# Walltime requested
#SBATCH -t 0:10:00

# Provide index values (TASK IDs)
#SBATCH --array=1-4

# Use '%A' for array-job ID, '%J' for job ID and '%a' for task ID
#SBATCH -e arrayjob-%a.err
#SBATCH -o arrayjob-%a.out

# single core
#SBATCH -n 1
 
###SBATCH --qos=bibs-ccvstaff-condo

echo "Running job array number: "$SLURM_ARRAY_TASK_ID

module load matlab/R2017a

matlab-threaded -nodisplay -nojvm -r "foo($SLURM_ARRAY_TASK_ID), exit"
