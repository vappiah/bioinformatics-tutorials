
fasterq-dump --split-files

params.threads=4


# DOWNLOAD DATASET
fasterq-dump --split-files DRR187559
fasterq-dump --split-files DRR187560
fasterq-dump --split-files DRR187561
fasterq-dump --split-files DRR187562
fasterq-dump --split-files DRR187563
fasterq-dump --split-files DRR187564
fasterq-dump --split-files DRR187565
fasterq-dump --split-files DRR187566

# QUALITY CONTROL
fastqc *


# TRIM ADAPTERS
fastp -i ${read1} -I ${read2} -l 30 -W $threads -o "${sample_id}".trimmed.R1.fastq.gz -O "${sample_id}".trimmed.R2.fastq.gz --html "${sample_id}".fastp.html --json "${sample_id}".fastp.json
