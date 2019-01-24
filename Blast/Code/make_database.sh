#! /bin/bash

#Written by: Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-24
#Purpose: makes the database fram the FASTA files

makeblastdb -in Data/database_sequences.fa -dbtype nucl
