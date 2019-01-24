#!/bin/bash

#Written by:Vibhuti Nandel & Sarah Lakke
#Date: 2019-1-23
#Purpose:Remove Data/ and Results/ subdirectories

for dir in Blast Matrix Visualisation; do
	cd $dir
	rm -rf Data
	rm -rf Results
	cd ../
done
