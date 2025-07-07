#!/bin/bash
#program to print odd numbers
read -p "please enter the range for number: " range
for (( i=1; i<=range;i++ ))
do
	if [[ $((i%2)) -eq 0 ]]
	then
		continue
	fi
	echo $i

done
