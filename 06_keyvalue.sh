#!/bin/bash
#declearing key value pair
declare -A myArray
myArray=( [name]=Arijit [age]=22 [city]=Howrah )
echo "I am ${myArray[name]} and I am ${myArray[age]} years old and my hometown is ${myArray[city]}"
