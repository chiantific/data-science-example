#!/bin/bash --login
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12  
#SBATCH --mem=64G
#SBATCH --partition=batch
#SBATCH --job-name=launch-code-server
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# use srun to launch code server in order to reserve a port
srun --resv-ports=1 ./bin/launch-code-server.srun
