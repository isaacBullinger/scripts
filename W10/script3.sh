#! /bin/bash

FILE=$1
DELAY=1

while [[ "$REPLY" != 4 ]]; do

	echo "

	1. Display the Memory usage
	2. Display the Disk usage
	3. Print the content of the $FILE file
	4. Exit

	"
	read -p "Choose your option [1-4]: "
	echo ""
	if [[ "$REPLY" =~ ^[1-4]$ ]]; then
		if [[ $REPLY == 1 ]]; then
			free -h
			sleep "$DELAY"
		fi
		if [[ $REPLY == 2 ]]; then
			df -h
			sleep "$DELAY"
		fi
		if [[ $REPLY == 3 ]]; then
			while read LINE; do
   		  	echo "This is a line: $LINE"
			done < $FILE
			sleep "$DELAY"
		fi
		if [[ $REPLY == 4 ]]; then
			echo "Program terminated."
			sleep "$DELAY"
			exit
		fi
	else
		echo "Invalid input, please try again!..."
		sleep "$DELAY"
	fi
done
exit
