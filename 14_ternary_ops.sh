#!/bin/bash
read -p "age: " age
#age=14

[[ $age -ge 18 ]] && echo "adult" || echo "Minor" 
