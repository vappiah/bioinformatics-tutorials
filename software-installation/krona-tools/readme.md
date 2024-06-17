# Execute the commands in the Krona installation directory


### Step 1 - Download the NCBI source files
```
mkdir taxonomy


wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/dead_prot.accession2taxid.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/dead_wgs.accession2taxid.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/nucl_gb.accession2taxid.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/nucl_wgs.accession2taxid.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/prot.accession2taxid.gz
wget -c ftp://ftp.ncbi.nih.gov/pub/taxonomy/accession2taxid/dead_nucl.accession2taxid.gz

mkdir taxonomy/accession2taxid

mv taxonomy/*accession*.gz accession2taxid

mv taxdump.tar.gz taxonomy
```

### Step 2 - Run the update files
```
./updateTaxonomy --only-build
./updateAccessions.sh --only-build
