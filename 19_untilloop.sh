#!/bin/bash
a=10
until [[ $a -eq 1 ]]
do
	((a--))
	date
	sleep 1
done
