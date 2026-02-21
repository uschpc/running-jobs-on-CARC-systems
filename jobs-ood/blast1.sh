#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 10
#SBATCH --partition main
#SBATCH --time=00:05:00
#SBATCH --account=ttrojan_001
#SBATCH --chdir /home1/${USER}/running-jobs-on-CARC-systems
module purge
module load usc
module load blast-plus
echo "Example blast start"
sleep 20
mkdir -p results/blast
blastp -db /project2/biodb/genbank/2025-03-01/swissprot -query data/blast/query.txt -out results/blast/results.txt -num_threads $SLURM_NTASKS
echo "Example blast end"
