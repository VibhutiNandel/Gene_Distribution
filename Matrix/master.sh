#!/bin/bash

#Written by:Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-24
#Purpose: Run the scripts in the Code/ to construct a binary matrix

cp ../Blast/Results/* Data/.

#load module
#module load Biopython/1.71-foss-2018a-Python-3.6.4 

#Get header id's and info
Code/for_dictionary.sh

#Construct matrix
python Code/make_matrix.py
