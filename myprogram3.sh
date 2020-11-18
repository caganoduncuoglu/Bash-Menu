#!/bin/bash
#
# CSE3033 Project 1 - Problem 3
#

if [[ -n $1 ]]
then
    dir=$1
else
    dir=./
fi

curr_dir=$(pwd)

if [[ $dir = ./ ]] 
then
    file=$(ls -1 -t | tail -1)
else
    file=$(ls $dir -1 -t | tail -1)
fi

echo $file

echo -n "Do you want to delete $file (y/n): "
read answer 

case $answer in
    y)  
        if [[ $dir != ./ ]] 
        then
            cd $dir
        fi
        rm -rf $file 
        echo "1 file deleted." 

        if [[ $dir != ./ ]] 
        then
            cd $curr_dir
        fi
        ;;
    *) 
        echo "Delete operation cancelled." ;;
esac



