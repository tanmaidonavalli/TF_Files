#!/bin/bash


filename="log.txt"
while IFS= read -r line; do
    [[ $line == FAILURE ]]       && printline="yes"
    [[ $printline == "yes" ]] && echo "$line"
    
done < "$filename"
 

 
