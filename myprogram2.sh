#!/bin/bash
#CSE3033 Project1 Solution2
##Purpose of this code file is to take two arguments from user, then encrypt the first
#argument according to instructions given at the second input. Such as:
# inputs are : abcd 2 ,output will be : cdef
# inputs are : xyz 134 , output will be : ybd . This also works for uppercase letters too 
if [ $# -ne 2 ] #we check if the number of arguments are equal to 2. If not it exits with error code 1
then
    echo "you must enter string and number variables"
    exit 1
fi

firstArg=$1
lengthOfFirstArg=${#firstArg}

secondArg=$2
lengthOfSecondArg=${#secondArg}

if [ $lengthOfFirstArg -ne $lengthOfSecondArg ] #We check here that length of the second arguments is either 1 or equal to the length of the first argument
    then                                        #or equal to the length of the first argument.If this case is not matched exit with error code 2
        if [ $lengthOfSecondArg -ne 1 ]
        then
            echo "length of the second argument should be either equal to 1 or to the first arg."
            exit 2
        fi
    fi


    declare -a word
    declare -a iteration
 

    if [ $lengthOfSecondArg -eq 1 ] #we have an iteration array to increment string characters according to the given info.
    #if user only entered 1 number then iteration array will be like [number,...,number]
    then
        for (( i=0; i<${#firstArg}; i++ )); do
            iteration[$i]+=$2
        done
    else   #if the length of number is equal to length of string this else code block will be executed.
    for (( i=0; i<${#firstArg}; i++ )); do #suppose argument2 is 12345 then iteration will be [1,2,3,4,5]
        iteration[$i]+=${secondArg:$i:1}
     done
    fi
    
    #and in this two inner for loops; according to the indexes of string chars, the matching iteration number will be used to encrypt the matching character.
    for (( i=0; i<${#firstArg}; i++ )); do
    increment=(${firstArg:$i:1})
        for (( j=0; j<iteration[$i]; j++ )); do 
        increment=$(echo "$increment" | tr "0-9a-z" "1-9a-za-z")
        increment=$(echo "$increment" | tr "0-9A-Z" "1-9A-ZA-Z")
        done
    word+=$increment
    done
    echo ${word[@]}