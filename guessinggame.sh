#!/bin/bash

# generate a random number (1-100)
target=$((RANDOM % 100 + 1))

echo "Guess a number between 1 and 100!"

while true; do
    read -p "Your guess: " guess

    if [[ $guess -eq $target ]]; then
        echo "Congratulations! You guessed it right!"
        exit 0
    elif [[ $guess -lt $target ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
