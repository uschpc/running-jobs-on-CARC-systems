#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition main
#SBATCH --time=00:05:00
#SBATCH --array=1-6
#SBATCH --account=ttrojan_001
#SBATCH --chdir /home1/${USER}/running-jobs-on-CARC-systems
module purge
module load usc
module load openjdk
module load fastqc
sleep 20
echo “Example FastQC start”
fastqc -o results/fastqc-rawseq-ordered-arr data/raw-seq-ordered/yeast_${SLURM_ARRAY_TASK_ID}_50K.fastq
echo “Example FastQC end”
