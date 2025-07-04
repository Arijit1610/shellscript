#!/bin/bash
addition() {
	sum=$(($1+$2))
	echo "result: $sum"
}
subtraction (){
	sub=$(($1-$2))
	echo "result: $sub"
}
multiplication(){
	mul=$(($1*$2))
	echo "result: $mul"
}
division(){
	if  [[ $2 -eq 0 ]]
	then
		echo "Can't divide by 0!!!"
		return
	fi	
	div=$(($1/$2))
	echo "result: $div"

}
key=1
until [[ $key -eq 0 ]]
do 
	clear
	echo "-------------Welcome to basic calculator program-----------"
	echo "Here you can perform addition, subtraction, multiplication, division"
	echo -e "Press 1 for addition\nPress 2 for subtraction \nPress 3 for Multiplication\nPress 4 for division"
	echo "----------------------------------------------------------"
	read -p "enter num1: " num1
	read -p "enter num2: " num2
	read -p "Please Enter your choice: " choice
	case $choice in
		1)addition num1 num2;;
		2)subtraction num1 num2;;
		3)multiplication num1 num2;;
		4)division num1 num2;;
		*)echo "Invalid choice";;
	esac
	sleep 1
	read -p "press 0 if you want to exit or press any num to continue....." key
	if ! [[ "$key" =~ ^[0-9]+$ ]];then
		#echo "Invalid input!!please enter a number next time"
		key=1
	fi
			
done
#echo "$key"
echo "bye"
