#! /bin/bash

#Written by: Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-24
#Purpose: performs BLAST alignment

blastn -db Data/database_sequences.fa -query Data/gene_sequences.fa -outfmt "7 std qcovs" |uniq > Results/blast_out.txt 
