#!/bin/bash

scripts=( 1kb.out 32kb.out 256kb.out 1mb.out 8mb.out 100mb.out 1gb.out )

for s in $(scripts[*])
do
	for i in {1..25}
	do
		ssh vm@192.168.122.10 "/home/vm/cpp/tester/vm_execute.sh $s" &
		ssh vm@192.168.122.122 "/home/vm/cpp/tester/vm_execute.sh $s"
	done
done
