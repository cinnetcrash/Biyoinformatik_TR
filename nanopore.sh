#!/bin/bash

# Bioinformatics Pipeline for Nanopore Sequencing Data Analysis
# This script includes quality checking, trimming, aligning using Minimap2, and generating a consensus genome.
# Ensure that FastQC, Porechop, Minimap2, SAMtools, and bcftools are installed before running this script.

# Set the paths for data, results, and reference genome
DATA_DIR="/path/to/your/data"
RESULTS_DIR="/path/to/results"
REF_GENOME="/path/to/reference/genome.fasta"

# Name of the Nanopore sequencing data file (FASTQ format)
SEQ_DATA="sample.fastq"  # Replace with your file name

# Creating results directory if it doesn't exist
mkdir -p $RESULTS_DIR

# Quality Check with FastQC
echo "Running FastQC for quality check..."
fastqc $DATA_DIR/$SEQ_DATA -o $RESULTS_DIR

# Trimming with Porechop
echo "Trimming sequencing data with Porechop..."
porechop -i $DATA_DIR/$SEQ_DATA -o $RESULTS_DIR/trimmed_$SEQ_DATA

# Aligning Sequences with Minimap2
echo "Aligning sequences with Minimap2..."
minimap2 -ax map-ont $REF_GENOME $RESULTS_DIR/trimmed_$SEQ_DATA > $RESULTS_DIR/aligned.sam

# Processing Aligned Data with SAMtools
echo "Processing aligned data with SAMtools..."
samtools view -bS $RESULTS_DIR/aligned.sam > $RESULTS_DIR/aligned.bam
samtools sort $RESULTS_DIR/aligned.bam -o $RESULTS_DIR/sorted_aligned.bam
samtools index $RESULTS_DIR/sorted_aligned.bam

# Generating Consensus Genome
echo "Generating consensus genome..."
samtools mpileup -uf $REF_GENOME $RESULTS_DIR/sorted_aligned.bam | bcftools call -c | vcfutils.pl vcf2fq > $RESULTS_DIR/consensus.fq
seqtk seq -a $RESULTS_DIR/consensus.fq > $RESULTS_DIR/consensus.fa

# Pipeline Completion Message
echo "Nanopore sequencing data analysis pipeline completed successfully."

