#! /bin/bash

#Author: Sarah Lakke & Vibhuti Nandel 
#Date: 21-01-2019
#Purpose: performing Blast

cp ~/Downloads/Bioinfo_Project/Data_Repository/Results/database_sequences.fa Data/.
cp ~/Downloads/Bioinfo_Project/Data_Repository/gene_sequences.fa Data/.

./Code/make_database.sh
./Code/blast.sh
./Code/filter_blast_results.sh
./Code/headers.sh
