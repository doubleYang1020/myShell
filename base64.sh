#!/bin/bash

image="$1"
echo "$image"

if [ -d   "$image" ]; then
     echo "目标类型为文件夹"
     cd $image
     filelist=`ls *`
     for file in $filelist; do
         if [[ $file == *txt ]]; then 
             echo "$file"            
         else
                echo "$file"".txt"
                base64=`base64 "${image}/${file}"`
                echo "$base64" > ${image}/${file}".txt"
         fi
         
         

     done
     

elif [ -f   "$image" ]; then
     echo "目标类型为文件"
     if [[ $image == *txt ]]; then 
        echo "$image"            
     else
        base64=`base64 "$image"`
        echo "$base64" > ${image}".txt"
     fi
     
else
     echo "不存在"
fi

