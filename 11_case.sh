#!/bin/bash
echo "Provide an option"
echo "a for print date"
echo "b list of scripts"
echo "c for check the current location"

read -p "Enter your choice:  " choice
case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid value"
esac

