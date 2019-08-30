#!/bin/bash

road="$1"
cd $road
filelist=`ls *.png`
for file in $filelist
do
convert echo ${road}/${file} -alpha extract ${road}/1_${file}
convert ${road}/${file} ${road}/1_${file} +append ${road}/2_${file}
rm -rf ${road}/1_${file}
rm -rf ${road}/${file}
mv ${road}/2_${file} ${road}/${file}
done
