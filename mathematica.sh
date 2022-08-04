#!/bin/bash

## Request 5 minutes of walltime
#SBATCH --time=00:05:00

#SBATCH -N 1

## Provide a job name
#SBATCH -J mathematica-hello

## Provide file names where standard output and error 
## will be written
#SBATCH -o math-hello.out
#SBATCH -e math-hello.err

## Load the mathematica module to set up the environment
module load mathematica/10.3.1

## Run the mathematica script
math -noprompt -run < hello.m       # this has similar behavior as running on mathematica command line
#wolfram -script hello.wls          # proper way of running as a script
