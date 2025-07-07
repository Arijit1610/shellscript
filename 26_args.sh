#!/bin/bash
set -x
echo "1st arg $1"
echo "2nd arg $2"
echo "total number of argument $#"
echo "All argument list $@"
for item in $@
do
	echo $item
done

