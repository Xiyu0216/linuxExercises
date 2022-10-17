#!/bin/bash

if [[ $# -eq 0 || $# -gt 2 ]]; then
    echo "usage: $0 <column> [file.csv]"
    exit 0
elif [[ $# -eq 1 ]]; then
    readByStdin=/dev/stdin
    cat $readByStdin | cut -d, -f $1 | tail -n +2 | { sum=0; n=0; while read i; do sum=$(($sum+$i)); n=$(($n+1)); done; echo $(($sum/$n)); }
elif [[ $# -eq 2 ]]; then
    cut $2 -d, -f $1 | tail -n +2 | { sum=0; n=0; while read i; do sum=$(($sum+$i)); n=$(($n+1)); done; echo $(($sum/$n)); }
fi
