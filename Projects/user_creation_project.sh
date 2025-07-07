#!/bin/bash
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or root. '
	exit 1
fi
if [[ "${#}" -lt 1 ]]
then
	echo "Usage ${0} USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME"
	exit 1
fi

