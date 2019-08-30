#!/bin/bash
road="$1"
echo $1
cd $road
filelist=`ls *.txt`


for file in $filelist
do

convert -resize 200x200 scho ${road}/${file} ${road}/1_${file}
rm -rf ${road}/${file}
mv ${road}/1_${file} ${road}/${file}
done





