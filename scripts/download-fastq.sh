#!/bin/bash

set -euo pipefail

# Download R2 File from GitHub
curl -O https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-NC16_S1_L004_R2_001.fastq.gz

# Reporting teh nubmer of lines in the R2 file
echo "The number of lines in the R2 file is"
gunzip -c subset-NC16_S1_L004_R2_001.fastq.gz | wc -l

# Move teh file we downloaded to the project raw data directory
mv subset-NC16_S1_L004_R2_001.fastq.gz ../data/raw/SRP255885
