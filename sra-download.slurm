#!/bin/bash
#SBATCH --job-name=download_sra
#SBATCH --output=download_sra.log
#SBATCH --time=00:10:00          # Adjust time limit as needed, this is considered a lightweight job
#SBATCH --ntasks=1
#SBATCH --mem=2G                 # Minimal memory required
#SBATCH --partition=standard     # Use a partition with internet access

# Load the SRA Toolkit module. This is the software you will use for this job.
module load sratoolkit

# Download the dataset
fastq-dump --split-files SRX123456 #Replace the SRA accession number with another one that you find interesting or relevant

# Tu submit this job to the HPC
# 1. Exit the vi editor using ":wq"
# 2. Go to your storage directory "cd /ocean/projects/agrip25000jp/your-username
# 3. Type the following command: "sbatch sra-download.slurm"
