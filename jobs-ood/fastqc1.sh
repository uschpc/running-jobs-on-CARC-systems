#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition debug
#SBATCH --time=00:05:00
#SBATCH --account=ttrojan_001
#SBATCH --chdir /home1/${USER}/running-jobs-on-CARC-systems
module purge
module load usc
module load openjdk
module load fastqc
echo “Example FastQC start”
sleep 20
fastqc -o results/fastqc-rawseq data/raw-seq/yeast_1_50K.fastq
echo “Example FastQC end”
