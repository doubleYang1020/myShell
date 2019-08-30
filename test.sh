#!/bin/bash

road="$1"
echo $1
cd $road

find . -name "*.txt" | xargs rm -rf '*.txt'
