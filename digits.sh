#!/bin/bash

n=$(seq 1000 2000)
sum=0
for i in $n; do
    if [[ $i == 1[0-1][0-1][0-1] ]]; then
	sum=$(($sum+$i))
    fi
done
echo $sum
