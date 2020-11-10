#!/usr/bin/env bash

# Define the function 
function guess {
# Count the number of files in the directory
nfiles=$(find . -maxdepth 1 -type f | wc -l)

# Guess the number of files in this directory
while [[ guess -ne nfiles ]]
do
	read -p "Enter the number of files you guess there are in this directory: " guess

	if [[ $guess < $nfiles ]] 
	then 
		echo "Try a greater number !"

	elif [[ $guess > $nfiles ]] 
	then 
		echo "Try a smaller number !"

	fi
done

echo "Congratularions !!.. you guessed the number of files in this directory"
}

# Call the function 
guess