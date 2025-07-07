#!/bin/bash
read -p "enter the name of the web server you want to connect" webserver
ping $webserver
if [[ $? -eq 0 ]] #checks exits status of previously executed command
then
	echo "connection established sucessfully"
else
	echo "unable to connect"
fi

