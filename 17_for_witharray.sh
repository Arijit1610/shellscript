#!/bin/bash
myArray=( 1 2 3 Hello )
length=${#myArray[@]}
echo "$length"
echo "${myArray}"
for (( i=0; i<$length; i++ ))
do
	echo "Value of the array is ${myArray[$i]}"
done
