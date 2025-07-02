#!/bin/bash

#Array

myArray=(1 2 50.6 Hello "Arijit Nandy" buddy good )
echo "All the values of Array are ${myArray[*]}"
echo "Value in 3rd index ${myArray[3]}"
#finding length of the array
echo "lengh of array ${#myArray[*]}"
echo "Values from index 1-2 ${myArray[*]:2:3}" #:index :length
#update array
myArray+=(new 30 40)
echo "new array ${myArray[*]:7:3}"
