#!/bin/bash

ln -s ../Matrix/Results/* Data/.

cp ../Matrix/Results/* Results/.

Rscript Code/visualize_matrix.R 
Rscript Code/make_tree.R
