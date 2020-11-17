#!/bin/bash
#
# CSE3033 Project 1 - Problem 5
#

copy_individual() { # Copies matching files to copied folder.
    mkdir -p copied

    case $1 in
    -R) word=$2 ;;
     *) word=$1 ;;
    esac

    for file in *;
    do  
        if [[ $file = *$word* ]]
        then
            cp $file copied
        fi
    done

    
}

copy_recursively()
{
    copy_individual "$1" "$2" # Copying matching files under current folder.
    for dir in */;
    do
        if [[ $dir = "*/" || $dir = "copied/" ]] # I
        then
            continue
        else
            cd $dir
            if [[ $1 = -R ]]
            then
                copy_recursively "$1" "$2" # Starting or proceeding recursive process.
            fi
            cd ..
        fi
    done
}


copy_recursively "$1" "$2" # Starting process.

echo "Copy processes ending."
echo 

