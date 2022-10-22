#!/bin/bash

dir=$1
file=$2

function rm_n {
    cnt=$(find ./$dir -type 'f' -size -$file | wc -l)
    find ./$dir -type 'f' -size -${file_size}c -delete
    echo $cnt "files deleted" 1>&2
}
rm_n $dir $file
