#! /bin/bash

#Written by: Vibhuti Nandel & Sarah Lakke
#Date 22-1-2019
#Purpose: Reformat headers from the database and genes.
#For the database headers: make 2 lists containing the sequence id's and sequence information
#For the gene headers: make a list containing the headers minus ">"


#Database headers:
#reformat headers
perl -p -i -e s'/^>([^\_]+)\_([^\s]+)\s\[*(\w)\w+?\s(.+?)\]*\s.+$/>\1\_\2\_\3\_\4/g' Data/headers_database.txt

#make the 2 lists
perl -p -e s'/^>([^\_]+)\_([^\_]+)\_.+/\1\_\2/g' Data/headers_database.txt > Results/seqids.txt
perl -p -e s'/^>[^\_]+\_[^\_]+\_(.+)/\1/g' Data/headers_database.txt > Results/seqinfo.txt

#Gene headers:
perl -p -e s'/^>//g' Data/headers_genes.txt > Results/gene_names.txt
