#!/bin/bash

(taskset -c 0 time -p ./$1) |& awk 'FNR == 1{print $2}' >> vm_all.txt
$1 >> vm_all.txt
