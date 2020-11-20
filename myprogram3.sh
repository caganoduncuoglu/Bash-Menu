#!/bin/bash
#
# CSE3033 Project 1 - Problem 3
#

if [[ -n $1 ]] # Store directory.
then
    dir=$1
else
    dir=./
fi

curr_dir=$(pwd) # Store current directory for returning purpose.


if [[ ! -d "$dir" ]] # Exit if there is no directory as specified.
then
    echo "Directory is not found."
    exit 1
fi


if [[ $dir = ./ ]] # Find oldest file in directory.
then
    file=$(ls -1 -t | tail -1)
else
    file=$(ls $dir -1 -t | tail -1)
fi

if [[ ! -f "$dir/$file" ]] # Exit if there is no file in this directory.
then
    echo "There is no file in this directory."
    exit 2
fi

echo -n "Do you want to delete $file (y/n): "
read answer 

case $answer in
    y)  
        if [[ $dir != ./ ]] # Change current directory if specified.
        then
            cd $dir
        fi

        rm -rf $file # Deleting oldest file.
        echo "1 file deleted." 

        if [[ $dir != ./ ]] # Return previos directory if specified.
        then
            cd $curr_dir
        fi
        ;;
    *) 
        echo "Delete operation cancelled." ;;
esac



