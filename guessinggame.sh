#!/bin/bash
function getguess {
	read -p "Enter a number:" guess;
	regex='[^0-9]+$';
	while [[ $guess =~ $regex ]] || [[ -z $guess ]]; do
	 echo "ERROR: You need to enter a number."
	 echo "(You have entered '$guess')";
	 echo "Try again:";
	 read -p "Enter a real number:" guess;
	done
}

# count the files

numberofdir=$(ls | wc -w)

echo "Guess how many files are there in the current directory?"

getguess

while true; do
    read -p "Your guess: " guess

    if [[ $guess -eq $numberofdir ]]; then
        echo "Congratulations! You guessed it right!"
        exit 0
    elif [[ $guess -lt $numberofdir ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
