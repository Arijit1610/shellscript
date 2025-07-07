#!/bin/bash
read -p "Enter filename you want to view: " fileName
echo $fileName
if [[ -f $fileName ]]
then 
	cat $fileName
	echo "hello"
else
	touch $fileName
fi
