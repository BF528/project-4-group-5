#!/usr/bin/bash

module load salmon 

grep "^>" <(gunzip -c GRCh38.primary_assembly.genome.fa.gz) | cut -d " " -f 1 > decoys.txt
sed -i.bak -e 's/>//g' decoys.txt

cat gencode.v33.transcripts.fa.gz GRCh38.primary_assembly.genome.fa.gz > gentrome.fa.gz

salmon index -t gentrome.fa.gz -d decoys.txt -p 12 -i salmon_index --gencode

