#!/bin/bash

# count the files
numberofdir=$(ls | wc -w)

echo "Guess a number between 1 and 100!"

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
