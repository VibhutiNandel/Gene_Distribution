#! /bin/bash

#Written by: Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-24
#Purpose: filters the BLAST output results on the specified columns.
cat Results/blast_out.txt | awk '{if ($3>=30 && $11<1e-05 && $13>70) print $1,$2,$3,$11,$13}' > Results/filtered_blast_out.txt
