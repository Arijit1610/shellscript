#!/bin/bash

#strings in shell
myVar="Hey Buddy, How are you?"
myVarLength=${#myVar} #storeing length of the var in myvarlenght
echo "Length of the $myVaLength"
echo "Upper case :  ${myVar^^}"
echo "Lower case :  ${myVar,,}"
#To replace a string
newVar=${myVar/Buddyi/Paul}  #variablename/replaceableword/newword
echo "New Var is : $newVar"
#stringslice
echo "After slice ${myVar:4:5}"

