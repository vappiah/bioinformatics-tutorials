#!/bin/bash

#Download the example data (raw reads and adapter file)
wget https://zenodo.org/record/2582555/files/SLGFSK-N_231335_r1_chr5_12_17.fastq.gz
wget https://zenodo.org/record/2582555/files/SLGFSK-N_231335_r2_chr5_12_17.fastq.gz
wget https://raw.githubusercontent.com/timflutre/trimmomatic/master/adapters/TruSeq3-PE.fa

mkdir raw_reads
mv *.fastq.gz raw_reads


#Trim Reads
mkdir trimmed_reads
read1=raw_reads/SLGFSK-N_231335_r1_chr5_12_17.fastq.gz
read2=raw_reads/SLGFSK-N_231335_r2_chr5_12_17.fastq.gz
OutputForwardPaired=trimmed_reads/SLGFSK-N_231335.trimmed.paired_r1.fastq.gz
OutputForwardUnpaired=trimmed_reads/SLGFSK-N_231335.trimmed.unpaired_r1.fastq.gz
OutputReversePaired=trimmed_reads/SLGFSK-N_231335.trimmed.paired_r1.fastq.gz
OutputReverseUnpaired=trimmed_reads/SLGFSK-N_231335.trimmed.unpaired_r2.fastq.gz
threads=8

trimmomatic PE -threads $threads $read1 $read2 \
$OutputForwardPaired $OutputForwardUnpaired \
$OutputReversePaired $OutputReverseUnpaired \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:8:true HEADCROP:3 TRAILING:10 MINLEN:25
