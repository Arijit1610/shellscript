#!/bin/bash

FILE="/home/runner/workspace/scripts/*"
for name in $(cat $FILE)
do
	echo "Name is $name"
done

