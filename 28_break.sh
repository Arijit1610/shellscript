#!/bin/bash

#finding a element in array
myArray=( 10 20 60 30 40 80 50 )
read -p "Enter the value of the item you want to search: " num
length=${#myArray[@]}
for item in $(seq 0 $length)
do
	if [[ ${myArray[$item]} -eq $num ]]
	then
		echo "Item found in $item position"
		break
	fi
done
