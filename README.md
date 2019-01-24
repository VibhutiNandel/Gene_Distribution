# Gene distribution

Written by: Vibhuti Nandel & Sarah Lakke
Date: 2019-1-24

## Description
This code can be used to find genes of interest in whole genome sequences and construct visualisation to analyse similarities in gene distibution.
To run this code the following lines need to be edited:
* The master.sh script in the Gene_Distribution_Pipeline/Blast subdirectory
* If the visualization fails, the work directories in the R scripts found in the Gene_Distribution_Pipeline/Visualisation/Code may need to be changed

To run this code the following files should be provided:
* A fasta file containing whole genome sequences named database_sequences.fa
* A fasta file containing gene sequences named gene_sequences.fa
If you want to use different file names then the code in the script blast.sh found in Gene_Distribution_Pipeine/Blast/Code needs to be changed.
For reference 

## Results
* matrix.png: found in Gene_Distribution_Pipeline/Visualisation/Results. A heatmap of the constructed presence/absence matrix.
* tree.png: found in Gene_Distribution_Pipeline/Visualisation/Results. A tree of the constructed presence/absence matrix.

## Requirements
The following programs are necessary to run these scrips:

* Blast: instructions to download Blast can be found [here](https://www.ncbi.nlm.nih.gov/books/NBK279671/)

* Python verion 2.7 with the follownig modules:
** Pandas: instructions to download Pandas can be found [here](https://pandas.pydata.org/pandas-docs/stable/install.html)

* R version 3.4.4 with the followng packages:
** tidyr
** ggplot2
** ape
 These can be installed from within R with the following command:
"""
install.packages("tidyr")
install.packages("ggplot2")
install.packages("ape")
""" 

