#!/bin/bash
#WARNING: This script is for education purposes. You modify this script at your own risk

#we are interested in the raw-data(samples) and reference genome(fasta and gff) and phenotype information. 
#So we will put them in a directory called resources.All other files will be removed

wget -c ftp://ftp.ccb.jhu.edu/pub/RNAseq_protocol/chrX_data.tar.gz
tar xvfz chrX_data.tar.gz


mv -v chrX_data/samples ./fastq 
mkdir ref
mv chrX_data/genes/chrX.gtf ref
mv chrX_data/genome/chrX.fa ref


#remove unwanted files
rm -fr chrX_data

echo "Data has been downloaded. Check your current directory " 
