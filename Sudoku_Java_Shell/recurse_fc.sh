#!/bin/bash


for var in {0,5,10,15,20,25,30,35,40}
do
	for i in {0..9}
	do
		temp="../Sudoku_Generator/${var}vals_${i}.txt"
		echo $temp
		timeout 600 java -jar bin/Sudoku.jar FC $temp
	done
done
