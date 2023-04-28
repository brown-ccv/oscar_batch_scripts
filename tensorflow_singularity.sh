#!/bin/bash

#SBATCH -J My_Cool_Science
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=32GB
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1 --gres-flags=enforce-binding
#SBATCH -o tf_sing_job_%j.o
#SBATCH -e tf_sing_job_%j.e

# Print key runtime properties for records
echo Master process running on `hostname`
echo Directory is `pwd`
echo Starting execution at `date`
echo Current PATH is $PATH

export SINGULARITY_BINDPATH="/gpfs/scratch,/gpfs/data"

CONTAINER=/gpfs/rt/7.2/opt/tensorflow/22.05-tf2-py3/bin/tf2_22.05-tf2-py3.simg
SCRIPT=/gpfs/data/ccvstaff/psaluja/ccv_bootcamp/bootcamp_talk/pinn_laplace_TF2.py

# Run The Job Through Singularity
singularity exec --nv $CONTAINER python $SCRIPT 
