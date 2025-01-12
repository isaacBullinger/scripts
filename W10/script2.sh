#! /bin/bash

DIRECTORY=$1
FILE=$2

if [[ -d "$DIRECTORY" ]]; then
	echo "$DIRECTORY directory exists."
else
	echo "$DIRECTORY directory does not exist. Do you want to create it (Y/N)? "
	read ANS1
	if [[ "$ANS1" == "y" ]]; then
		echo "Creating $DIRECTORY directory. "
		mkdir $DIRECTORY
	else
		exit 1
	fi
fi
if [[ -e "$DIRECTORY/$FILE" ]]; then
	if [ -f "$DIRECTORY/$FILE" ]
		then
		echo "File exists. Here is the list of files in the $DIRECTORY directory:"
		ls -l $DIRECTORY
	fi
else 
	echo "$FILE does not exist in $DIRECTORY directory. Do you want to create it (Y/N)? "
	read ANS2
	if [[ "$ANS2" == "y" ]]; then
		echo "Creating $FILE file in $DIRECTORY directory."
		touch $DIRECTORY/$FILE
		echo "Here is the list of files in $DIRECTORY directory."
		ls -l $DIRECTORY
	else
		echo "Here is the list of files in $DIRECTORY directory."
		ls -l $DIRECTORY
		exit 1
	fi
fi
exit
