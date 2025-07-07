#!/bin/bash
freeRAM=$(free -mt | grep "Total" |awk '{print $4}')
TH=5500
if [[ $freeRAM -lt $TH ]]
then
  echo "RAM is running low"
else
  echo "Sufficient RAM available"
fi