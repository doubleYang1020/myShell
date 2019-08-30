#!/bin/bash

road="$1"
echo $1
cd $road
filelist='ls *.*'

for file in $filelist; do
    echo "$file"
done
