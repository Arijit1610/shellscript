#!/bin/bash
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "/dev/disk/by-id/google-nixmodules-32109c4-us-central1-c" | awk '{print $5}' | tr -d %)
TO="nandyarijit1610@gmail.com"
if [[ $FU -ge 80 ]]
then
  echo "Warning, disk space is low" | mail -s "Disk Space Alert!" $TO
else
  echo "All good"
fi