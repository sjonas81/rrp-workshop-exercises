#!/bin/bash
set -euo pipefail

#Define directories and filenames
FASTQ_R1=subset-SRR11518889_1.fastq.gz
FASTQ_URL=https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset

#Define Study ID
STUDY_ID="SRP255885"

#Directory for FASTQ to be saved in
OUTDIR=../data/raw/fastq/${STUDY_ID}

#Create OUTDIR
mkdir -p ${OUTDIR}

curl -O https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq.gz

#### Get some files

echo "Retrieving file ${FASTQ_R1}"

curl -O ${FASTQ_URL}/${FASTQ_R1}

echo "How many lines?"

gunzip -c ${FASTQ_R1} | wc -l

# Move the file to the final destination

mv ${FASTQ_R1} ${OUTDIR}

