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
      1) echo "Press enter for next iteration!" ; read;;
      2) echo "Press enter for next iteration!" ; read;;
      3) echo "Press enter for next iteration!" ; read;;
      4) echo "Press enter for next iteration!" ; read;;
      5)
        echo -n "Recursive or not? (-R / N) "; read recursive;
        echo -n "File name(s): "; read fileName;
        case $recursive in
         -R) ./myprogram5.sh -R $fileName ;;
         *) ./myprogram5.sh $fileName;;
        esac
        echo "Press enter for next iteration!" ; read;;
      6) echo "Program stops!" ; exit 0 ;;
    esac
  done