#!/bin/bash
#
# CSE3033 Project 1 - Problem 1
#


filename="$1" #takes filename parameter

 if [[ ! -f $filename ]]; #Error for not entering a valid file
       then 
 		echo "$filename is not a valid file in your directory"
	  	exit
fi

while read -r line; #read file line by line
do
 
  case $line in #and in the switch case add * to string of that integer's case
    0)
		zero+="*"
		;;
	1)
		one+="*"
		;;
    2)
		two+="*"
		;;
	3)
		three+="*"
		;;
    4)
		four+="*"
		;;
	5)
		five+="*"
		;;
    6)
		six+="*"
		;;
	7)
		seven+="*"
		;;
    8)
		eight+="*"
		;;
	9)
		nine+="*"
		;;

	*) #Error case
		echo "There is a number in the file which is not between 0-9!"
		;;
        
  esac
done < "$filename"
#Print the histogram
echo "0 : $zero"
echo "1 : $one"
echo "2 : $two"
echo "3 : $three"
echo "4 : $four"
echo "5 : $five"
echo "6 : $six"
echo "7 : $seven"
echo "8 : $eight"
echo "9 : $nine"