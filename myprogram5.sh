#!/bin/bash
#
# CSE3033 Project 1 - Problem 5
#

copy_individual() { # Copies matching files to copied folder.
    case $1 in
    -R) word=$2 ;;
     *) word=$1 ;;
    esac
    
    for file in *$word* # Records every file that is matched.
    do
        matchedFiles+="$file "
    done

    if [[ "$(ls -A)" && $matchedFiles != "$file " ]] # Checks there is at least one match.
    then
        mkdir -p copied # Creates copied directory.
    else
        return -1 # Does not process under this directory.
    fi

    for file in *; # Copy every matched file to copied folder.
    do  
        if [[ $file = *$word* ]]
        then
            cp $file copied
        fi
    done
}

copy_recursively()
{
    copy_individual "$1" "$2" # Copies matching files under current folder.
    for dir in */;
    do
        if [[ $dir = "*/" || $dir = "copied/" ]] # I
        then
            continue
        else
            cd $dir
            if [[ $1 = -R ]]
            then
                copy_recursively "$1" "$2" # Starts or proceeds recursive process.
            fi
            cd ..
        fi
    done
}


copy_recursively "$1" "$2" # Starts process.

echo "Copy processes ending."
echo 

