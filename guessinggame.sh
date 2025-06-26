#!/bin/bash


# count the files

numberofdir=$(ls -A| wc -w)

echo "Guess how many files are there in the current directory?"


function getguess {
    local guess
    while true; do
        read -p "Enter a number: " guess
        # test if the input is not a number
        if [[ -z "$guess" ]] || [[ "$guess" =~ [^0-9] ]]; then
            echo "ERROR: You need to enter a number."
            echo "Try again."
        else
            if [[ $guess -eq $numberofdir ]]; then
            	echo "Congratulations! You guessed it right!"
            	exit 0
    	    elif [[ $guess -lt $numberofdir ]]; then
            	echo "Too low! Try again."
            else
            	echo "Too high! Try again."
    	    fi
  
        fi
    done
}

getguess

