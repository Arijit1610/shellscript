#!/bin/bash

#script should be execute with sudo/root access
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or root. '
	exit 1
fi
#user should be provide atlest one argument as username else guide him 

if [[ "${#}" -lt 1 ]]
then
	echo "Usage ${0} USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME"
	exit 1
fi

#store 1st argument as username
userName=$1

echo "$userName"


#In case of more then one argument store it as account comments

shift
comment=$@
#echo "$comment"

#create password
PASSWORD=$(date +%s%N)
#echo $PASSWORD

#crete the user
useradd -c $COMMENT -m $userName 
#check if the user successfully created or not
if [[ $? -ne 0 ]]  #checking status of previous excuted command
then
	echo "The account could not be created"
	exit 1
fi

#set the password for that user
echo -e "$PASSWORD\n$PASSWORD" | passwd  $user_NAME

# check if passowowd is successfully set or  not
if [[ $? -ne 0 ]]  #checking status of previous excuted command
then
	echo "Password could not be set"
	exit 1
fi


#force password change on first login

passwd -e $userName

#Display the username, password, and the host where created

echo "Username: $userName"
echo "Passwod: $PASSWORD"
echo $hostname