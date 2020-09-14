#!/bin/bash


for var in {20,25,30,35,40}
do
	for i in {0..5}
	do
		#echo "Number of variables : $var"
		python ../Sudoku_Generator/board_generator.py tester 1 5 5 $var
		temp="tester_0.txt"
		echo "$var"
		#timeout 600 java -jar bin/Sudoku.jar  FC $temp
		#echo "FC"
		timeout 600 java -jar bin/Sudoku.jar FC MRV $temp
		echo "MRV"
		timeout 600 java -jar bin/Sudoku.jar FC MRV LCV $temp
		echo "LCV"
		timeout 600 java -jar bin/Sudoku.jar FC MAD LCV $temp
		echo "MAD"

		timeout 600 java -jar bin/Sudoku.jar FC MAD LCV NOR $temp
                
                echo "NOR"
		rm -f $temp
	done
done
