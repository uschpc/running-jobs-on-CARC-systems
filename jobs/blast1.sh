#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 10
#SBATCH --partition debug
#SBATCH --time=00:05:00
#SBATCH --account=ttrojan_001
#SBATCH --chdir /home1/ttrojan/computational-biology-on-carc
module purge
module load usc
module load blast-plus
echo “Example blast start”
sleep 20
blastp -db /project/biodb/genbank/2021-03-01/swissprot -query data/blast/query.txt -out results/blast/results.txt -num_threads $SLURM_NTASKS
echo “Example blast end”
