# Matrix construction

Written by: Vibhuti Nandel & Sarah Lakke

Date: 2019-1-24

Purpose: constructing a presence/absence matrix from Blast output


### Scripts
* for_dictionary.sh: bash script that takes the headers from the database and gene sequences (extracted earlier) and extracts the parts necessary for construction of a python dictionary.
* make_matrix.py: python script that takes Blast output and constructs a presence absence matrix. At the same time it uses the results from for_dictionary.sh to construct dictionaries to replace the database and gene sequence names into more humanly-understandable format.


### Requirements
Python 2.7 with the following modules:

* Pandas: instructions for installing can be found [here](https://pandas.pydata.org/pandas-docs/stable/install.html)

