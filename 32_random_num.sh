#!/bin/bash
#program to generate n number of random number within a range
read -p "Enter the last number for generated random number: " num
while true
do
	randnum=$(( $RANDOM%$num + 1 ))
  	echo  "$randnum"
  	read -p  "Press 1 to exit or preess any key if want to generate another number: " key
  	if [[ "$key" == "1" ]]
  	then 
    		exit
  	fi
done
