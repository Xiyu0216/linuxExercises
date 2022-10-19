#!/bin/bash
head -5 Property_Tax_Roll.csv | grep "MADISON SCHOOL" | cut -d, -f 7 | { sum=0 n=0; while read i; do sum=$(($sum+$i)) n=$(($n+1)); done; echo $(($sum/$n)); }
