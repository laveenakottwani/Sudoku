#!/bin/bash


for var in {25,26,27,28,29,30}
do
	for i in {0..5}
	do
		echo "Number of variables : $var"
		python ../Sudoku_Generator/board_generator.py tester 1 5 5  $var
		temp="tester_0.txt"
		timeout 600 java -jar bin/Sudoku.jar FC  $temp
		rm -f $temp
	done
done
