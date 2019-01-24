#!/bin/bash

for dir in Blast Matrix Visualisation;do
	cd $dir
	mkdir Data/
	mkdir Results/
	./master.sh
	cd ../
done


