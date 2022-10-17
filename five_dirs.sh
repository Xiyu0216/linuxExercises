#!/bin/bash

rm -rf /five
mkdir five
mkdir five/dir{1..5}

for i in {1..5}; do
    for j in {1..4}; do
	for k in $j; do
	    echo $j >> five/dir$i/file$j;
	done;
    done;
done;
