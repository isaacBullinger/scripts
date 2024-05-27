#!/bin/bash

MONTH=$1
DAY=$2

MONTHS="JanFebMarAprMayJunJulAugSepOctNovDec"
X=${MONTHS%%$MONTH*}
MONTHNUM=${#X}
MONTHNUMBER=$((MONTHNUM/3+1))
MONTHCHECK=$((MONTHNUMBER%2))
DAYCHECK=$(($DAY%2))

if [[ $MONTHCHECK == 0 ]]; then
	echo "$MONTH is an even month"
elif [[ $MONTHCHECK == 1 ]]; then
	echo "$MONTH is an odd month"
else
	echo "Invalid input, please try again..."
	fi
if [[ $DAYCHECK == 0 ]]; then
	echo "$DAY is an even day"
elif [[ $DAYCHECK == 1 ]]; then
    echo "$DAY is an odd day"
else
	echo "Invalid input, please try again..."
fi
exit
