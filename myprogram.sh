#!/bin/bash
#
# CSE3033 Project 1
#
while :
  do
    clear
    echo "Please select an option:"
    echo "  1. Create histogram"
    echo "  2. Encryption"
    echo "  3. Delete oldest"
    echo "  4. Convert numbers"
    echo "  5. Organized files"
    echo "  6. Exit"
    read option

    case $option in
      1) 
        echo -n "Enter a file name: "; read fileName;
       ./myprogram1.sh $fileName;
        echo "Press enter for next iteration!" ; read;;
      2) 
        echo -n "Enter a string containing values a-z or A-Z: "; read string;
	      echo -n "Enter a number with length of the string you entered or a length of 1: "; 
	      read number;
        ./myprogram2.sh $string $number;
        echo "Press enter for next iteration!" ; read;;
      3) 
        echo -n "Enter a directory name (press enter for current directory): "
        read dirName;
        ./myprogram3.sh $dirName
        echo "Press enter for next iteration!" ; read;;
      4) 
       echo -n "Enter a file name: "; read fileName;
       ./myprogram4.sh $fileName;
       echo "Press enter for next iteration!" ; read;;
      5)
        echo -n "Recursive or not? (-R / N) "; read recursive;
        echo -n "File name(s): "; read fileName;
        case $recursive in
         -R) ./myprogram5.sh -R $fileName ;;
         *) ./myprogram5.sh $fileName;;
        esac
        echo "Press enter for next iteration!" ; read;;
      6) echo "Program stops!" ; exit 0 ;;
      *) echo "Please select valid option." ;
      echo "Press enter for next iteration!" ; read;;
    esac
  done