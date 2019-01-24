# Visualisation

Written by: Vibhuti Nandel & Sarah Lakke

Date: 2019-1-24

Purpose: Visualise a presence/absence matrix as a heatmap and a tree

## Scripts
* Visualize_matrix.R: R script that constructs a heatmap from the matrix.

* make_tree.R: R script that uses the "ape" package to construct an unrooted tree based on the matrix.

## Requirements
R version 3.4.4 with the following packages:

* tidyr

* ggplot2

* ape

Which can be installed into R via the following commands:

        install.packages("tidyr")
        install.packages("ggplot2")
        install.packages("ape")