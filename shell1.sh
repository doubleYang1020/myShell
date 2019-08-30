#!/bin/bash

# this is shell example
# sudo chmod +x file path
function example () {
    echo "this is example function" # arguments are accessible through name, echo "$1" # arguments are accessible through , ,...,...
}

road="$0"

echo $road

v1="你"
v2="好"
v3=${v1}${v2}
echo $v3

n1=1
n2=2
let n3=$n1+$n2
echo $n3

if [ -d   /Users/videopls/Desktop/macOS应用开发基础教程\ 张帆.pdf ]; then
     echo "文件夹"
elif [ -f   /Users/videopls/Desktop/macOS应用开发基础教程\ 张帆.pdf ]; then
     echo "文件"
else
     echo "不存在"
fi

for((i=0;i<10;i++)); do
    echo "$i"
done

COUNTER=0
while [ $COUNTER -lt 10 ]; do
    # body
    echo The counter is $COUNTER
    let COUNTER=COUNTER+1
done


[ -z "" ] && echo 0 || echo 1


name="John" && echo 'My name is $name'

echo ${new:-variable} 

variable="My name is Petras, and I am developer."
echo $variable
echo ${variable:11:6} # 会显示 Petras

variable="User:123:321:/home/dir"
echo ${variable#*:*:*:}
echo ${variable##*:}

var="http://www.aaa.com/123.htm"
echo ${var#*//}
echo ${var##*/}
echo ${var%/*}

echo ${#variable}


echo ${variable: -5}

echo ${variable//home/replacement}

echo "My name is Petras, and I am developer."|tr -d " "

for((i=0;i<10;i=i+3)); do
    echo "Welcome $i times"
done



b=2
if (( $b < 12 )); then
    echo lesser
fi

if [ $b -le 12 ]; then
     echo lesser
fi

string="abcdefg"

if [[ $string == abc* ]]; then
     echo string is start abc
elif [[ $string == "abc*" ]]; then
     echo string is equ abc*
else
     echo 上面两个结果都不成立
fi

echo $$ #当前shell 的 pid

echo $0 #shell路径

echo $* #所以参数

echo $# #参数数目

array=("Hi" "my" "name" "is")

echo ${array[0]}

echo ${array[@]}

echo ${!array[@]}

unset array[2]

echo ${array[@]}

array[333]="New_element"

echo ${array[@]}

echo ${!array[@]}

function name () {
    echo "所有参数 $@" #所有参数
    #echo "Welcome $i times"
    echo 参数个数 $# #参数个数
    return  $(($1+$2))
}

#将命令的结果赋给变量total
 total=$(name 10 20)
#echo "运行命令的结果是$total"
#函数返回值，只能通过$?系统变量获得，直接通过=,获得是空值,可以把函数理解成一个命令
#在shell中获得命令返回值，都需要通过$?获得
#echo $?
echo $total,$?
echo "运行命令的结果是$total"

example

 
