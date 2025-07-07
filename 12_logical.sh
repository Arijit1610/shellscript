#!/bin/bash

read -p "What is your age:  " age
read -p "Enter your country:  " country

if [[ $age -ge 18 ]] && [[ ${country,,} == "india" ]]
then
	echo "you can vote"
else
	echo "you can't vote"
fi
