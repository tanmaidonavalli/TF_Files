#!/bin/bash

filename="log.txt"

#While loop to read line by line
while IFS= read -r line; do
    #If the line starts with ST then set var to yes.
    if [[ $line == FAILURE ]] ; then
        printline="yes"
        # Just t make each line start very clear, remove in use.
        echo "FAILURE IS IN LOG"
    fi
    
    done < "$filename"
