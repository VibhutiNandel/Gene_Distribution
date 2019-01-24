#! /usr/bin/env python

#imports first
import pandas as pd

"""
Python script to convert the results from BLAST to a presence absence matrix.

Written by: Vibhuti Nandel & Sarah Lake
Date: 22-1-2019
"""

#Create dictionary to change genome names later
#First create lists of sequence id's and sequence info
with open('Results/seqids.txt', 'r') as IDFile:
	Seq_ID = IDFile.read().splitlines()
with open('Results/seqinfo.txt', 'r') as InfoFile:
	Seq_Info = InfoFile.read().splitlines()
#then create the dictionary
genome_dict = {key: value for key, value in zip(Seq_ID, Seq_Info)}

#print(name_dict)

#create dictionary to change gene names later
gene_dict = {}
#open dictionary from text file
with open("Results/gene_names.txt") as file:
	for line in file:
		(key, val) = line.split()
		gene_dict[key] = val

#print (gene_dict)

#now onto creation of the matrix, first open the file and put it in a dataframe
InFile = open('Data/filtered_blast_out.txt', 'r')
col_names = ['queid', 'seqid', 'matchper', 'e_value', 'que_cov']
df = pd.read_csv(InFile, sep = ' ', header = None, names = col_names)

#print(df)

#change gene names
for key in gene_dict:
	df = df.replace(key,gene_dict[key])

#print(df)

#create empty matrix dataframe so it can be filled in
matrix = pd.DataFrame()

#group blast results by query
grp = df.groupby(df['queid'])

#loop through groupby object. 
#Gene = name of the gene
#Data = dataframe of results for that gene.
for gene, data in grp:
	#print(gene)
	#create empty dictionary to hold genomes for which a gene is present
	pa_dict = {}
	
	#make list of all sequence id's that have results for that gene
	present = data['seqid'].tolist()
	
	#loop through all bacteria. Mark gene as 'present' in the organism based
	#on sequence id.
	for key, value in genome_dict.items():
		if key in present:
			pa_dict[value] = 1
		else:
			if value in pa_dict:
				continue
			else:
				pa_dict[value] = 0
	matrix[gene] = pd.Series(pa_dict)
	
matrix.to_csv('Results/matrix.csv', sep=",")
