#!/bin/bash
function welcomeNote(){
	echo "--------------------------------------------------"
	echo "Welcome		$1				"
	echo "--------------------------------------------------"
}
read -p "Please Enter your name: " name
sleep 1
welcomeNote $name
