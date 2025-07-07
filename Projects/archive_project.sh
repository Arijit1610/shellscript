#!/bin/bash
#$Revision: 0.01$
#$Mon Jul  7 16:58:00 IST 2025$

#Variables

BASE=/home/runner/workspace/scripts/Projects/
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not

if [ ! -d $BASE ]
then
  echo "Directory does not exist: $BASE"
  exit 1
fi
#Create archive folder if not present

if [ ! -d $BASE/archive ]
then
  mkdir $BASE/archive
fi
#Find the larger files larger than 15MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +15M`
do
    echo "hello from for"
    if [[ $RUN == 0 ]]
    then 
      echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiveing $i ==> $BASE/archive"
      gzip "$i" || exit 1
      mv "$i.gz" "$BASE/archive/$(basename "$i")_$(date +%Y-%m-%d-%H-%M-%S).gz"  || exit 1
    fi
done