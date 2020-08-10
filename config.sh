#!/bin/bash
$word= "FAILURE"
$file= "log.txt"
exists=$(grep -c $word $file)
if [[ $exists -gt 0 ]]; then
    echo "Word found"
fi
