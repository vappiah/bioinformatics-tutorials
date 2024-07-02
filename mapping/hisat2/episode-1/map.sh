
mapdir=mapped

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188044_chrX_1.fastq.gz -2 fastq/ERR188044_chrX_2.fastq.gz -S mapped/ERR188044.sam
samtools view mapped/ERR188044.sam -o mapped/ERR188044.bam
rm mapped/ERR188044.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188104_chrX_1.fastq.gz -2 fastq/ERR188104_chrX_2.fastq.gz -S mapped/ERR188104.sam
samtools view mapped/ERR188104.sam -o mapped/ERR188104.bam
rm mapped/ERR188104.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188234_chrX_1.fastq.gz -2 fastq/ERR188234_chrX_2.fastq.gz -S mapped/ERR188234.sam
samtools view mapped/ERR188234.sam -o mapped/ERR188234.bam
rm mapped/ERR188234.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188245_chrX_1.fastq.gz -2 fastq/ERR188245_chrX_2.fastq.gz -S mapped/ERR188245.sam
samtools view mapped/ERR188245.sam -o mapped/ERR188245.bam
rm mapped/ERR188245.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188257_chrX_1.fastq.gz -2 fastq/ERR188257_chrX_2.fastq.gz -S mapped/ERR188257.sam
samtools view mapped/ERR188257.sam -o mapped/ERR188257.bam
rm mapped/ERR188257.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188273_chrX_1.fastq.gz -2 fastq/ERR188273_chrX_2.fastq.gz -S mapped/ERR188273.sam
samtools view mapped/ERR188273.sam -o mapped/ERR188273.bam
rm mapped/ERR188273.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188337_chrX_1.fastq.gz -2 fastq/ERR188337_chrX_2.fastq.gz -S mapped/ERR188337.sam
samtools view mapped/ERR188337.sam -o mapped/ERR188337.bam
rm mapped/ERR188337.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188383_chrX_1.fastq.gz -2 fastq/ERR188383_chrX_2.fastq.gz -S mapped/ERR188383.sam
samtools view mapped/ERR188383.sam -o mapped/ERR188383.bam
rm mapped/ERR188383.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188401_chrX_1.fastq.gz -2 fastq/ERR188401_chrX_2.fastq.gz -S mapped/ERR188401.sam
samtools view mapped/ERR188401.sam -o mapped/ERR188401.bam
rm mapped/ERR188401.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188428_chrX_1.fastq.gz -2 fastq/ERR188428_chrX_2.fastq.gz -S mapped/ERR188428.sam
samtools view mapped/ERR188428.sam -o mapped/ERR188428.bam
rm mapped/ERR188428.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR188454_chrX_1.fastq.gz -2 fastq/ERR188454_chrX_2.fastq.gz -S mapped/ERR188454.sam
samtools view mapped/ERR188454.sam -o mapped/ERR188454.bam
rm mapped/ERR188454.sam

hisat2 -p 8 --dta -x index/chrX_tran -1 fastq/ERR204916_chrX_1.fastq.gz -2 fastq/ERR204916_chrX_2.fastq.gz -S mapped/ERR204916.sam
samtools view mapped/ERR204916.sam -o mapped/ERR204916.bam
rm mapped/ERR204916.sam
 
