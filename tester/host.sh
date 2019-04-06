#!/bin/bash

scripts=( 1kb.out 32kb.out 256kb.out 1mb.out 8mb.out 100mb.out 1gb.out )

for s in ${scripts[*]}
do
	for i in {1..25}
	do
		(taskset -c 0 time -p ./$s) |& awk 'FNR == 1{print $2}' >> all.txt
		echo $s >> all.txt
		sleep 2
	done
done
