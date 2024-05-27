#! /bin/bash

DELAY=3

while [[ "$REPLY" != 4 ]]; do
	
	COMPUTER=$(( ( RANDOM % 3 ) + 1 ))

	echo "

	1. Rock
	2. Paper
	3. Scissors
	4. Done"
	read -p "Your choice [1-4]? "
	if [[ "$COMPUTER" == 1 ]]; then
    	echo "Computer chose 1. Rock"
		sleep "$DELAY"
	elif [[ "$COMPUTER" == 2 ]]; then
        echo "Computer chose 2. Paper"
		sleep "$DELAY"
	elif [[ "$COMPUTER" == 3 ]]; then
        echo "Computer chose 3. Scissors"
		sleep "$DELAY"
	elif [[ "$COMPUTER" == 4 ]]; then
		echo "Program terminated."
		sleep "$DELAY"
	else
		echo "Invalid input, please try again..."
