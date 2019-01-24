#!/bin/bash 

#Written by: Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-24
#Purpose: Grep hedaers from the database and gene sequences for later use

grep ">" Data/database_sequences.fa > Results/headers_database.txt
grep ">" Data/gene_sequences.fa > Results/headers_genes.txt
