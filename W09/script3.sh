#!/bin/bash

int1=14
int2=7
result=0

multiply () {
	result=$((int1*int2))
	echo 'DEBUG: multiply ()'
	echo "$int1 \* $int2 = $result"
	return
}

divide () {
	result=$((int1/int2))
	echo 'DEBUG: divide ()'
    echo "$int1 \/ $int2 = $result"
	return
}

multiply 
divide
