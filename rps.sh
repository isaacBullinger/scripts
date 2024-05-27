#! /bin/bash

DELAY=0.5
REPLY=0

while [[ "$REPLY" != 4 ]]; do
	
	COMPUTER=$(( ( RANDOM % 3 ) + 1 ))

	echo "
1. Rock
2. Paper
3. Scissors
4. Done"
	read -p "Your choice [1-4]? "
	if [[ "$REPLY" -le 4 ]] && [[ "$REPLY" -gt 0 ]]; then
		if [[ "$REPLY" == 1 ]]; then
                	echo "
You chose 1. Rock"
                	sleep "$DELAY"
        	elif [[ "$REPLY" == 2 ]]; then
                	echo "
You chose 2. Paper"
                	sleep "$DELAY"
        	elif [[ "$REPLY" == 3 ]]; then
                	echo "
You chose 3. Scissors"
                	sleep "$DELAY"
		elif [[ "$REPLY" == 4 ]]; then
			echo ""
			echo "Bye"
			break
		fi

		if [[ "$COMPUTER" == 1 ]]; then
    			echo "Computer chose 1. Rock"
			sleep "$DELAY"
		elif [[ "$COMPUTER" == 2 ]]; then
        		echo "Computer chose 2. Paper"
			sleep "$DELAY"
		elif [[ "$COMPUTER" == 3 ]]; then
        		echo "Computer chose 3. Scissors"
			sleep "$DELAY"
		fi

		if [[ "$COMPUTER" == "$REPLY" ]]; then
			echo "You tied. Try again."
		elif [[ "$COMPUTER" == 1 ]] && [[ "$REPLY" == 2 ]]; then
			echo "You win!"
		elif [[ "$COMPUTER" == 2 ]] && [[ "$REPLY" == 3 ]]; then
			echo "You win!"
		elif [[ "$COMPUTER" == 3 ]] && [[ "$REPLY" == 1 ]]; then
			echo "You win!"
		else
			echo "You lost."
		fi
	else
		echo "Invalid input. Try again..."
	fi
done
exit
