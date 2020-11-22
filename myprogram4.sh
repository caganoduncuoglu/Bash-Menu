#!/bin/bash
#
# CSE3033 Project 1 - Problem 4
#

filename="$1" #takes filename parameter

 if [[ ! -f $filename ]]; #Error for not entering a valid file
       then 
 		echo "$filename is not a valid file in your directory"
	  	exit
fi


while read -n1 c; #read file character by character
do
 
  case $c in #and in the switch case sed command changes the matched number to letters and -i updates the file
    0)
        sed -i 's/0/zero/g' $1 #finds character after /s (0) and changes into zero and /g is for global change 
		;;
	1)
		sed -i 's/1/one/g' $1
		;;
    2)
		sed -i 's/2/two/g' $1
		;;
	3)
		sed -i 's/3/three/g' $1
		;;
    4)
		sed -i 's/4/four/g' $1
		;;
	5)
		sed -i 's/5/five/g' $1
		;;
    6)
		sed -i 's/6/six/g' $1
		;;
	7)
		sed -i 's/7/seven/g' $1
		;;
    8)
		sed -i 's/8/eight/g' $1
		;;
	9)
		sed -i 's/9/nine/g' $1  
		;;

	*) #in other cases, do nothing		
		;;
        
  esac
 
done < "$filename"